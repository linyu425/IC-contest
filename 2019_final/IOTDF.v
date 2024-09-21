`timescale 1ns/10ps
module IOTDF( clk, rst, in_en, iot_in, fn_sel, busy, valid, iot_out);
    input          clk;
    input          rst;
    input          in_en;
    input  [7:0]   iot_in;
    input  [2:0]   fn_sel;
    output        busy;
    output         valid;
    output reg [127:0] iot_out;

    localparam IDLE = 0,
                READ = 1,
                FUNC = 2,
                OUTPUT = 3,
                SHIFT = 4,
                COMP = 5;

    reg [2:0] cur_state, next_state;
    reg [3:0] counter, counter_round;
    reg [127:0] temp;
    reg [131:0] temp_avg;
    wire [127:0] low_f4, high_f4, low_f5, high_f5;

    assign low_f4 = 128'h6FFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
    assign high_f4 = 128'hAFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;

    assign low_f5 = 128'h7FFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
    assign high_f5 = 128'hBFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;

    assign busy = !((cur_state == READ && counter <'d15) || cur_state == IDLE);
    assign valid = (cur_state == OUTPUT);

    always @(*) begin
        case (cur_state)
            READ:begin
                if(counter == 'd15)begin
                    next_state = FUNC;
                end
                else begin
                    next_state = READ;
                end
            end 
            FUNC:begin
                case (fn_sel)
                    'b001,'b010:begin
                        if(counter_round == 'd7)begin
                            next_state = OUTPUT;
                        end
                        else begin
                            next_state = IDLE;
                        end
                    end
                    'b011:begin
                        if(counter_round == 'd7)begin
                            next_state = SHIFT;
                        end
                        else begin
                            next_state = IDLE;
                        end
                    end
                    'b100:begin
                        if(temp[127:124] > low_f4[127:124] && temp[127:124] <= high_f4[127:124])begin
                            next_state = OUTPUT;
                        end
                        else begin
                            next_state = IDLE;
                        end
                    end
                    'b101:begin
                        if(temp[127:124] <= low_f5[127:124] || temp[127:124] > high_f5[127:124])begin
                            next_state = OUTPUT;
                        end
                        else begin
                            next_state = IDLE;
                        end
                    end
                    'b110, 'b111:begin
                        if(counter_round == 'd7)begin
                            next_state = COMP;
                        end
                        else begin
                            next_state = IDLE;
                        end
                    end
                    default:begin
                        next_state = IDLE;
                    end
                endcase
            end
            OUTPUT:begin
                next_state = IDLE;
            end
            SHIFT:begin
                next_state = OUTPUT;
            end
            COMP:begin
                if(fn_sel == 3'b110)begin
                    if(temp_avg > iot_out)begin
                        next_state = OUTPUT;
                    end
                    else begin
                        next_state = IDLE;
                    end
                end
                else if(fn_sel == 3'b111)begin
                    if(temp_avg < iot_out)begin
                        next_state = OUTPUT;
                    end
                    else begin
                        next_state = IDLE;
                    end
                end
            end
            default: begin //IDLE
                next_state = READ;
            end
        endcase
    end

    always @(posedge clk, posedge rst) begin
        if(rst)begin
            temp <= 128'd0;
            if(fn_sel == 'b010 || fn_sel == 'b111)begin
                iot_out <= 128'hFFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
                temp_avg <= 128'hFFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
            end
            else begin
                iot_out <= 128'd0;
                temp_avg <= 132'd0;
            end
        end
        else begin
            if(cur_state == READ)begin
                temp[(127 - (counter << 3)) -: 8] <= iot_in;
            end
            else if(cur_state == FUNC)begin
                case (fn_sel)
                    'b001:begin
                        if(iot_out < temp)begin
                            iot_out <= temp;
                        end
                    end
                    'b010:begin
                        if(iot_out > temp)begin
                            iot_out <= temp;
                        end
                    end
                    'b011:begin
                        temp_avg <= temp_avg + temp;
                    end
                    'b100:begin
                        if(temp[127:124] > low_f4[127:124] && temp[127:124] <= high_f4[127:124])begin
                            iot_out <= temp;
                        end
                    end
                    'b101:begin
                        if(temp[127:124] <= low_f5[127:124] || temp[127:124] > high_f5[127:124])begin
                            iot_out <= temp;
                        end
                    end
                    'b110:begin
                        if(temp_avg < temp)begin
                            temp_avg <= temp;
                        end
                    end
                    'b111:begin
                        if(temp_avg > temp)begin
                            temp_avg <= temp;
                        end
                    end
                endcase
            end
            else if(cur_state == SHIFT)begin
                iot_out <= temp_avg >> 3;
                temp_avg <= 132'd0;
            end
            else if(cur_state == COMP)begin
                if(fn_sel == 'b110)begin
                    if(temp_avg > iot_out)begin
                        iot_out <= temp_avg;
                    end
                end
                else if(fn_sel == 'b111)begin
                    if(temp_avg < iot_out)begin
                        iot_out <= temp_avg;
                    end
                end
            end
            else if(cur_state == OUTPUT)begin
                if(fn_sel == 'b001)begin
                    iot_out <= 128'd0;
                end
                else if(fn_sel == 'b010)begin
                    iot_out <= 128'hFFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
                end
            end
        end
    end

    always @(posedge clk, posedge rst) begin
        if(rst)begin
            counter <= 'd0;
            counter_round <= 'd0;
        end
        else begin
            if(cur_state == READ)begin
                if(counter =='d15)begin
                    counter <= 'd0;
                end
                else begin
                    counter <= counter + 'd1;
                end
            end
            else if(cur_state == FUNC)begin
                counter_round <= counter_round + 'd1;
            end
            else if(cur_state == OUTPUT)begin
                counter_round <= 'd0;
            end
            else if(cur_state == COMP)begin
                counter_round <= 'd0;
            end
        end
    end

    always @(posedge clk, posedge rst) begin
        if(rst)begin
            cur_state <= IDLE;
        end
        else begin
            cur_state <= next_state;
        end
    end

endmodule
