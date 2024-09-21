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

reg [7:0] data;
reg [6:0] x,y;
reg [1:0] stage;//0~
reg [3:0] counter;
//====================================================================
always@(posedge clk or posedge reset)begin
    if(reset)begin
        data <= 8'd0;
        gray_addr <= 14'd0;
        gray_req <= 1'd0;
        lbp_valid <= 1'd0; 
        lbp_data <= 8'd0;
        finish <= 1'd0;
        counter <= 4'd0;
        stage <= 2'd0;
        x <= 7'd1;
        y <= 7'd1;
    end
    else begin
        case (stage)
            2'd0 : begin
                case (counter)
                    4'd0 : begin
                        counter <= 4'd0;  
                        lbp_valid <= 1'd0;   
                        gray_req <= 1'd0;
                        lbp_data <= 8'd0; 
                        gray_req <= 1'd1;
                        gray_addr <= ( x << 7 ) + y;
                    end
                    4'd1 : begin
                        data <= gray_data;
                        gray_addr <= gray_addr - 14'd129;
                    end
                    4'd2 : begin 
                        gray_addr <= gray_addr + 14'd1;
                        lbp_data <= lbp_data + $unsigned((`z(gray_data , data)));
                    end
                    4'd3 : begin
                        gray_addr <= gray_addr + 14'd1;
                        lbp_data <= lbp_data + $unsigned((`z(gray_data , data) << 1));
                    end
                    4'd4 : begin
                        gray_addr <= gray_addr + 14'd126;
                        lbp_data <= lbp_data + $unsigned((`z(gray_data , data) << 2));
                    end
                    4'd5 : begin
                        gray_addr <= gray_addr + 14'd2;
                        lbp_data <= lbp_data + $unsigned((`z(gray_data , data) << 3));
                    end
                    4'd6 : begin
                        gray_addr <= gray_addr + 14'd126;
                        lbp_data <= lbp_data + $unsigned((`z(gray_data , data) << 4));
                    end
                    4'd7 : begin
                        gray_addr <= gray_addr + 14'd1;
                        lbp_data <= lbp_data + $unsigned((`z(gray_data , data) << 5));
                    end
                    4'd8 : begin
                        gray_addr <= gray_addr + 14'd1;
                        lbp_data <= lbp_data + $unsigned((`z(gray_data , data) << 6));
                    end
                    4'd9 : begin
                        lbp_data <= lbp_data + $unsigned((`z(gray_data , data) << 7));
                        lbp_addr <= ( x << 7 ) + y;
                        lbp_valid <= 1'd1;
                        if(y == 7'd126)begin
                            if(x == 7'd126)begin
                                stage <= 1;
                            end
                            else begin
                                x <= x + 7'd1;
                                y <= 7'd1;    
                            end
                        end
                        else begin
                            y <= y + 7'd1;
                        end
                    end
                endcase
                if(counter < 4'd10) counter <= counter + 4'd1;
                else counter <= 4'd0;
            end
            2'd1 : finish <= 1;
        endcase
    end
end
//====================================================================
endmodule
