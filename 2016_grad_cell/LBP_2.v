`define z(a,b) ((a>=b)? 1:0)
`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
input   	clk;
input   	reset;
output reg  [13:0] 	gray_addr;
output reg         	gray_req;
input   	gray_ready;
input   [7:0] 	gray_data;
output reg [13:0] 	lbp_addr;
output reg 	lbp_valid;
output reg [7:0] 	lbp_data;
output reg 	finish;

reg [7:0] data [127:0][127:0];
reg [6:0] x,y,stage2_x,stage2_y;
reg [1:0] stage;
reg [7:0] out0,out1,out2,out3,out4,out5,out6,out7;
//====================================================================
always@(posedge clk or posedge reset)begin
    if(reset)begin
        gray_addr <= 14'd0;
        gray_req <= 1'd0;
        lbp_valid <= 1'd0;
        finish <= 1'd0;
        stage <= 2'd0;
        x <= 7'd0;
        y <= 7'd0;
        out0 <= 8'd0;
        out1 <= 8'd0;
        out2 <= 8'd0;
        out3 <= 8'd0;
        out4 <= 8'd0;
        out5 <= 8'd0;
        out6 <= 8'd0;
        out7 <= 8'd0;
        stage2_x <= 7'd0;
        stage2_y <= 7'd0;
    end
    else begin
        if(gray_ready && stage == 2'd0)begin
            gray_req <= 1'd1;
            gray_addr <= ( x << 7 ) + y;
            stage <= 2'd1;
        end
        else if( stage == 2'd1)begin
            if(gray_req)begin
                data[x][y] <= gray_data;
                if(y == 7'd127)begin
                    if(x == 7'd127)begin
                        gray_req <= 1'd0;
                        stage <= 2'd2;
                        x <= 7'd1;
                        y <= 7'd1;
                    end
                    else begin
                        x <= x + 7'd1;
                        y <= 7'd0;
                        stage <= 2'd0;
                    end
                end
                else begin
                    y <= y + 7'd1;
                    stage <= 2'd0;
                end
            end
        end
        else begin
            out0 <= $unsigned((`z(data[x-1][y-1] , data[x][y])));
            out1 <= $unsigned((`z(data[x-1][y] , data[x][y]) << 1));
            out2 <= $unsigned((`z(data[x-1][y+1] , data[x][y]) << 2));
            out3 <= $unsigned((`z(data[x][y-1] , data[x][y]) << 3));
            out4 <= $unsigned((`z(data[x][y+1] , data[x][y]) << 4));
            out5 <= $unsigned((`z(data[x+1][y-1] , data[x][y]) << 5));
            out6 <= $unsigned((`z(data[x+1][y] , data[x][y]) << 6));
            out7 <= $unsigned((`z(data[x+1][y+1] , data[x][y]) << 7));
            if(stage2_x == 7'd126 && stage2_y == 7'd126)begin
                lbp_valid <= 1'd0;
                finish <= 1'd1;
                stage <= 2'd0;
            end
            else lbp_valid <= 1'd1;

            stage2_x <= x;
            stage2_y <= y;
            if(y == 7'd126)begin
                if(x == 7'd126)begin
                    //gray_req <= 1'd0;
                    //stage <= 1'd0;
                    x <= 7'd1;
                    y <= 7'd1;
                end
                else begin
                    x <= x + 7'd1;
                    y <= 7'd1;
                end
            end
            else y <= y + 7'd1;
        end
    end
end

always@(posedge clk or posedge reset)begin
    if(reset)begin 
        lbp_addr <= 14'd0;
        lbp_data <= 8'd0;
    end
    else if(stage == 2'd2)begin
        lbp_addr <= ( stage2_x << 7 ) + stage2_y;
        lbp_data <= out0 + out1+ out2+ out3+ out4+ out5+ out6+ out7;
    end 
end
//====================================================================
endmodule
