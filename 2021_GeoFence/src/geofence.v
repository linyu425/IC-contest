// `include "/home/nfs_cad/synopsys/synthesis/2022.03/dw/sim_ver/DW_sqrt.v"
module geofence ( clk,reset,X,Y,R,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
input [10:0] R;
output valid;
output is_inside;

localparam READ = 0,
           SORT = 1,
           CAL_SIX = 2,
           CAL_TRI = 3,
           FINISH = 4;
/***

    Please complete a Geofence system.
    This system utilizes six receivers to construct a virtual geofence on a plane.  
    Each receiver can measure the distance between itself and the object under test.  
    The Geofence system calculates based on this information whether
    the object under test is inside or outside the geofence.

    !!!!! Be sure to inquire about how to use DesignWare's DW_sqrt. !!!!!

***/

reg [2:0] current_state, next_state;
reg [2:0] counter, outer_counter;
reg [9:0] X_reg[5:0], Y_reg[5:0];
reg [10:0] R_reg[5:0];
reg signed [20:0] six_area, tri_area;

reg signed [20:0] cur_op;
wire signed [20:0] op;
wire signed [10:0] Ax,Ay,Bx,By;
wire signed [10:0] Ax_sort,Ay_sort,Bx_sort,By_sort;
wire signed [10:0] Ax_six,Ay_six,Bx_six,By_six;
reg signed [20:0] sqrt_in;
wire [10:0] sqrt_out; 
reg [11:0] s, c;
reg [10:0] sqrt_1;

DW_sqrt #(21,0) U1 (.a(sqrt_in),.root(sqrt_out));

always @(posedge clk or posedge reset) begin
    if(reset) current_state <= READ;
    else current_state <= next_state;
end

assign valid = (current_state == FINISH)? 1'b1 : 1'b0;
assign is_inside = (current_state == FINISH)? (six_area < 0)? 1'b0 : 1'b1 : 1'b0;

assign op = Ax * By - Bx * Ay;

assign Ax = (current_state == SORT)? Ax_sort : (current_state == CAL_SIX)? Ax_six : 11'd0;
assign Ay = (current_state == SORT)? Ay_sort : (current_state == CAL_SIX)? Ay_six : 11'd0;
assign Bx = (current_state == SORT)? Bx_sort : (current_state == CAL_SIX)? Bx_six : 11'd0;
assign By = (current_state == SORT)? By_sort : (current_state == CAL_SIX)? By_six : 11'd0;

assign Ax_sort = (current_state == SORT)? (X_reg[outer_counter - counter] - X_reg[0]) : 11'd0;
assign Ay_sort = (current_state == SORT)? (Y_reg[outer_counter - counter] - Y_reg[0]) : 11'd0;
assign Bx_sort = (current_state == SORT)? (X_reg[outer_counter - counter + 3'd1] - X_reg[0]) : 11'd0;
assign By_sort = (current_state == SORT)? (Y_reg[outer_counter - counter + 3'd1] - Y_reg[0]) : 11'd0;

assign Ax_six = (current_state == CAL_SIX)? (counter == 3'd5)? X_reg[0] : X_reg[3'd5 - counter] : 11'd0;
assign Ay_six = (current_state == CAL_SIX)? (counter == 3'd5)? Y_reg[0] : Y_reg[3'd5 - counter] : 11'd0;
assign Bx_six = (current_state == CAL_SIX)? (counter == 3'd5)? X_reg[5] : X_reg[3'd4 - counter] : 11'd0;
assign By_six = (current_state == CAL_SIX)? (counter == 3'd5)? Y_reg[5] : Y_reg[3'd4 - counter] : 11'd0;

always @(posedge clk or posedge reset) begin
    if(reset)begin
        counter <= 3'd0;
        outer_counter <= 3'd1;
    end
    else begin
        if(current_state == READ && counter == 3'd5) counter <= 3'd0;
        else if(current_state == SORT && ((op < 21'd0) || (outer_counter - counter == 3'd1))) counter <= 3'd0;
        else if(current_state == FINISH) counter <= 3'd0;
        else if(current_state == CAL_SIX && counter == 3'd6) counter <= 3'd0;
        else if(current_state == CAL_TRI && counter == 3'd3) counter <= 3'd0;
        else counter <= counter + 3'd1;

        if(current_state == SORT && ((outer_counter == 3'd4) && ((op < 21'd0) || (outer_counter - counter == 3'd1)))) outer_counter <= 3'd0;
        else if(current_state == FINISH) outer_counter <= 3'd1;
        else if(current_state == CAL_TRI && outer_counter == 3'd5 && counter == 3'd3) outer_counter <= 3'd0;
        else if(current_state == SORT && ((op < 21'd0) || (outer_counter - counter == 3'd1))) outer_counter <= outer_counter + 3'd1;
        else if(current_state == CAL_TRI && counter == 3'd3) outer_counter <= outer_counter + 3'd1;
        else outer_counter <= outer_counter;
    end
end

always @(*) begin
    if(current_state == CAL_TRI)begin
        case (counter)
        3'd0:begin
            if(outer_counter == 3'd5)begin
                sqrt_in = ((X_reg[outer_counter] - X_reg[0]) * (X_reg[outer_counter] - X_reg[0])) + ((Y_reg[outer_counter] - Y_reg[0]) * (Y_reg[outer_counter] - Y_reg[0]));
            end
            else begin
                sqrt_in = ((X_reg[outer_counter] - X_reg[outer_counter + 3'd1]) * (X_reg[outer_counter] - X_reg[outer_counter + 3'd1])) + ((Y_reg[outer_counter] - Y_reg[outer_counter + 3'd1]) * (Y_reg[outer_counter] - Y_reg[outer_counter + 3'd1]));
            end
        end
        3'd1:begin
            sqrt_in = (s * (s - R_reg[outer_counter]) < 0)? 0 : s * (s - R_reg[outer_counter]);
        end
        3'd2:begin
            if(outer_counter == 3'd5)begin
                sqrt_in = ((s - c) * (s - R_reg[0]) < 0)? 0 : (s - c) * (s - R_reg[0]);
            end
            else begin
                sqrt_in = ((s - c) * (s - R_reg[outer_counter + 3'd1]) < 0)? 0 : (s - c) * (s - R_reg[outer_counter + 3'd1]);
            end
        end
        default: sqrt_in = 21'd0;
    endcase
    end
    else begin
        sqrt_in = 21'd0;
    end
end

always @(*) begin
    case (current_state)
        READ:begin
            if(counter == 3'd5) next_state = SORT;
            else next_state = READ;
        end  
        SORT:begin
            if((outer_counter == 3'd4) && ((op < 21'd0) || (outer_counter - counter == 3'd1))) next_state = CAL_SIX;
            else next_state = SORT;
        end
        CAL_SIX:begin
            if(counter == 3'd6) next_state = CAL_TRI;
            else next_state = CAL_SIX;
        end
        CAL_TRI:begin
            if(counter == 3'd3 && outer_counter == 3'd5) next_state = FINISH;
            else next_state = CAL_TRI;
        end
        FINISH:begin
            next_state = READ;
        end
        default:begin
            next_state = SORT;
        end  
    endcase
end

integer i,j;
always @(posedge clk or posedge reset) begin
    if(reset)begin
        for (i=0;i<6;i=i+1) begin
            X_reg[i] <= 10'd0;
            Y_reg[i] <= 10'd0;
            R_reg[i] <= 11'd0;
        end
        six_area <= 21'd0;
        s <= 11'd0;
        c <= 11'd0;
        tri_area <= 21'd0;
    end 
    else begin
        if(current_state == READ)begin
            X_reg[counter] <= X;
            Y_reg[counter] <= Y;
            R_reg[counter] <= R;
        end
        else if(current_state == SORT)begin
            if($signed(op) > 0)begin
                X_reg[outer_counter - counter] <= X_reg[outer_counter - counter + 3'd1];
                X_reg[outer_counter - counter + 3'd1] <= X_reg[outer_counter - counter];
                Y_reg[outer_counter - counter] <= Y_reg[outer_counter - counter + 3'd1];
                Y_reg[outer_counter - counter + 3'd1] <= Y_reg[outer_counter - counter];
                R_reg[outer_counter - counter] <= R_reg[outer_counter - counter + 3'd1];
                R_reg[outer_counter - counter + 3'd1] <= R_reg[outer_counter - counter];
            end
        end
        else if(current_state == CAL_SIX)begin
            if(counter <= 3'd5)begin
                six_area <= six_area + op;
            end
            else if(counter == 3'd6)begin
                six_area <= six_area >> 1;
            end
        end
        else if(current_state == CAL_TRI)begin
            if(counter == 3'd0)begin
                if(outer_counter == 3'd5)begin
                    s <= (R_reg[outer_counter] + R_reg[0] + sqrt_out) >> 1;
                end
                else begin
                    s <= (R_reg[outer_counter] + R_reg[outer_counter + 3'd1] + sqrt_out) >> 1;
                end
                c <= sqrt_out;
            end
            else if(counter == 3'd1)begin
                sqrt_1 <= sqrt_out;
            end
            else if(counter == 3'd2)begin
                tri_area <= sqrt_1 * sqrt_out;
            end
            else if(counter == 3'd3)begin
                six_area <= six_area - tri_area;
            end
        end
        else if(current_state == FINISH)begin
            six_area <= 0;
        end
    end
end

endmodule

