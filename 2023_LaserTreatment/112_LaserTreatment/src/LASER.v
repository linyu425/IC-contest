`define abs(a,b) ((a>b)? a-b:b-a)
module LASER (
input CLK,
input RST,
input [3:0] X,
input [3:0] Y,
output [3:0] C1X,
output [3:0] C1Y,
output [3:0] C2X,
output [3:0] C2Y,
output  DONE);

/*************************

    The question assumes a fixed area of 16x16 with 40 targets.
    Only two laser shots are allowed on this area,
    and the lasers have a circular shape with a radius of 4.
    
    Please find the positions of the centers of these two circles such that
    they cover the maximum number of targets.

*************************/
    localparam READ = 0;
    localparam C1_SEARCH = 1;
    localparam ADJUST = 2;
    localparam FINISH = 3;
    localparam CHECK = 4;

    reg [3:0] X_reg [39:0];
    reg [3:0] Y_reg [39:0];

    wire [7:0] square [15:0];

    wire [39:0] in_cycle, in_cycle_another;
    reg [5:0] max_current, max;
    reg [2:0] non_imp;
    reg [5:0] count;
    wire [5:0] add, add_another;

    reg [3:0] max_C1X,max_C1Y,max_C2X,max_C2Y;
    wire [3:0] CX, CY;

    reg [5:0] row_counter, col_counter;
    reg [6:0] counter;

    reg [2:0] current_state, next_state;
    reg circle;

    assign DONE = (current_state == FINISH);
    assign C1X = max_C1X;
    assign C1Y = max_C1Y;
    assign C2X = max_C2X;
    assign C2Y = max_C2Y;

    assign CX = (circle)? max_C1X : max_C2X;
    assign CY = (circle)? max_C1Y : max_C2Y;

    assign square[0] = 8'd0;
    assign square[1] = 8'd1;
    assign square[2] = 8'd4;
    assign square[3] = 8'd9;
    assign square[4] = 8'd16;
    assign square[5] = 8'd25;
    assign square[6] = 8'd36;
    assign square[7] = 8'd49;
    assign square[8] = 8'd64;
    assign square[9] = 8'd81;
    assign square[10] = 8'd100;
    assign square[11] = 8'd121;
    assign square[12] = 8'd144;
    assign square[13] = 8'd169;
    assign square[14] = 8'd196;
    assign square[15] = 8'd225;

    // genvar j;
    // generate
    // for(j=0;j<40;j=j+1)begin
    //     assign in_cycle[j] = (current_state == C1_SEARCH)? (square[`abs(col_counter,X_reg[j])] + square[`abs(row_counter,Y_reg[j])] <= 8'd16) : 8'd0;
    //     assign in_cycle_another[j] = (current_state == ADJUST)? (square[`abs(col_counter,X_reg[j])] + square[`abs(row_counter,Y_reg[j])] <= 8'd16) || (square[`abs(CX,X_reg[j])] + square[`abs(CY,Y_reg[j])] <= 8'd16) : 8'd0;
    // end
    // endgenerate

    // assign add = (counter <= 7'd36)? (in_cycle[counter] + in_cycle[counter+1] + in_cycle[counter + 2] + in_cycle[counter+3]) : 6'd0;
    // assign add_another = (counter <= 7'd36)? (in_cycle_another[counter] + in_cycle_another[counter+1] + in_cycle_another[counter + 2] + in_cycle_another[counter+3]) : 6'd0;

    assign add = ((counter <= 7'd36) && (current_state == C1_SEARCH))? ((square[`abs(col_counter,X_reg[counter])] + square[`abs(row_counter,Y_reg[counter])] <= 8'd16) + (square[`abs(col_counter,X_reg[counter + 1])] + square[`abs(row_counter,Y_reg[counter + 1])] <= 8'd16) + (square[`abs(col_counter,X_reg[counter + 2])] + square[`abs(row_counter,Y_reg[counter + 2])] <= 8'd16) + (square[`abs(col_counter,X_reg[counter + 3])] + square[`abs(row_counter,Y_reg[counter + 3])] <= 8'd16)) : 6'd0;


    assign add_another = ((counter <= 7'd36) && (current_state == ADJUST))? (((square[`abs(col_counter,X_reg[counter])] + square[`abs(row_counter,Y_reg[counter])] <= 8'd16) || (square[`abs(CX,X_reg[counter])] + square[`abs(CY,Y_reg[counter])] <= 8'd16)) + ((square[`abs(col_counter,X_reg[counter + 1])] + square[`abs(row_counter,Y_reg[counter + 1])] <= 8'd16) || (square[`abs(CX,X_reg[counter + 1])] + square[`abs(CY,Y_reg[counter + 1])] <= 8'd16)) + ((square[`abs(col_counter,X_reg[counter + 2])] + square[`abs(row_counter,Y_reg[counter + 2])] <= 8'd16) || (square[`abs(CX,X_reg[counter + 2])] + square[`abs(CY,Y_reg[counter + 2])] <= 8'd16)) + ((square[`abs(col_counter,X_reg[counter + 3])] + square[`abs(row_counter,Y_reg[counter + 3])] <= 8'd16) || (square[`abs(CX,X_reg[counter + 3])] + square[`abs(CY,Y_reg[counter + 3])] <= 8'd16))) : 6'd0;

    always @(posedge CLK or posedge RST) begin
        if(RST) current_state <= READ;
        else current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            READ: begin
                if(col_counter == 7'd39) next_state = C1_SEARCH;
                else next_state = READ;
            end 
            C1_SEARCH: begin
                if(row_counter == 7'd15 && col_counter == 7'd15 && counter == 7'd40)begin
                    next_state = CHECK;
                end
                else next_state = C1_SEARCH;
            end 
            CHECK: begin
                if(max_current > max) next_state = ADJUST;
                else if((max_current <= max) && (non_imp <= 3'd3)) next_state = ADJUST;
                else next_state = FINISH;
            end
            ADJUST: begin
                if(row_counter == 7'd15 && col_counter == 7'd15 && counter == 7'd40)begin
                    next_state = CHECK;
                end
                else next_state = ADJUST;
            end 
            FINISH: begin
                next_state = READ;
            end
            default:next_state = READ ;
        endcase
    end

    always @(posedge CLK or posedge RST) begin
        if(RST) begin
            row_counter <= 6'd0;
            col_counter <= 6'd0;
            counter <= 1'b0;
        end
        else begin
            case (current_state)
                READ: begin
                    row_counter <= 6'd0;
                    counter <= 1'b0;
                    if(col_counter == 7'd39) col_counter <= 6'd0;
                    else col_counter <= col_counter + 6'd1;
                end 
                C1_SEARCH, ADJUST: begin
                    if(col_counter == 7'd15 && counter == 7'd40) col_counter <= 6'd0;
                    else if(counter == 7'd40) col_counter <= col_counter + 6'd1;
                    else col_counter <= col_counter;

                    if(row_counter == 7'd15 && col_counter == 5'd15 && counter == 7'd40) row_counter <= 6'd0;
                    else if(col_counter == 7'd15 && counter == 7'd40) row_counter <= row_counter + 6'd1;
                    else row_counter <= row_counter;

                    if(counter == 7'd40) counter <= 1'd0;
                    else counter <= counter + 6'd4;
                end
                CHECK:begin
                    row_counter <= 6'd0;
                    col_counter <= 6'd0;
                    counter <= 1'b0;
                end
                default: begin
                    row_counter <= 6'd0;
                    col_counter <= 6'd0;
                    counter <= 1'b0;
                end
            endcase
        end
    end 

    integer i;   

    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            for(i=0;i<40;i=i+1)begin
                X_reg[i] <= 4'd0;
                Y_reg[i] <= 4'd0;
            end
        end
        else begin
            if(current_state == READ)begin
                X_reg[col_counter] <= X;
                Y_reg[col_counter] <= Y;
            end
        end
    end

    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            max <= 6'd0;
        end
        else begin
            if(row_counter == 4'd15 && col_counter == 4'd15 && counter == 7'd40)
                max <= max_current;
            else if(current_state == FINISH)
                max <=6'd0;
            else
                max <= max;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            non_imp <= 3'd0;
        end
        else begin
            if(row_counter == 4'd15 && col_counter == 4'd15 && counter == 7'd40 && (max < max_current))
                non_imp <= 3'd0;
            else if(row_counter == 4'd15 && col_counter == 4'd15 && counter == 7'd40 && (max == max_current))
                non_imp <= non_imp + 3'b1;
            else if(current_state == FINISH)
                non_imp <= 3'd0;
            else
                non_imp <= non_imp;
        end
    end
    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            count <= 6'd0;
        end
        else begin
            if(current_state == C1_SEARCH && counter <= 7'd36)
                count <= count + add;
            else if(current_state == ADJUST && counter <= 7'd36)
                count <= count + add_another;
            else 
                count <= 6'd0;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            max_C1X <= 4'd0;
            max_C1Y <= 4'd0;
            max_C2X <= 4'd0;
            max_C2Y <= 4'd0;
            max_current <= 6'd0;
            circle <= 1'b0;
        end
        else begin  
            if(current_state == C1_SEARCH && counter == 7'd40)begin
                if(max_current <= count)begin
                    max_C1X <= col_counter;
                    max_C1Y <= row_counter;
                    max_C2X <= max_C2X;
                    max_C2Y <= max_C2Y;
                    max_current <= count;
                end
                else begin
                    max_C1X <= max_C1X;
                    max_C1Y <= max_C1Y;
                    max_C2X <= max_C2X;
                    max_C2Y <= max_C2Y;
                    max_current <= max_current;
                end
                circle<= circle;
            end
            else if(current_state == CHECK)begin
                circle <= ~circle;
                max_C1X <= max_C1X;
                max_C1Y <= max_C1Y;
                max_C2X <= max_C2X;
                max_C2Y <= max_C2Y;
                max_current <= max_current;
            end
            else if(current_state == ADJUST && counter == 7'd40)begin
                if(max_current <= count)begin
                    max_C1X <= (!circle)? col_counter : max_C1X;
                    max_C1Y <= (!circle)? row_counter : max_C1Y;
                    max_C2X <= (circle)? col_counter : max_C2X;
                    max_C2Y <= (circle)? row_counter : max_C2Y;
                    max_current <= count;
                end
                else begin
                    max_C1X <= max_C1X;
                    max_C1Y <= max_C1Y;
                    max_C2X <= max_C2X;
                    max_C2Y <= max_C2Y;
                    max_current <= max_current;
                end
                circle <= circle;
            end
            else if(current_state == FINISH) begin
                max_C1X <= 4'd0;
                max_C1Y <= 4'd0;
                max_C2X <= 4'd0;
                max_C2Y <= 4'd0;
                max_current <= 6'd0;
                circle <= 1'b0;
            end
            else begin
                max_C1X <= max_C1X;
                max_C1Y <= max_C1Y;
                max_C2X <= max_C2X;
                max_C2Y <= max_C2Y;
                max_current <= max_current;
                circle <= circle;
            end
        end
    end

endmodule


