module huffman(clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
    code_valid, HC1, HC2, HC3, HC4, HC5, HC6, M1, M2, M3, M4, M5, M6);

    input clk;
    input reset;
    input gray_valid;
    input [7:0] gray_data;
    output CNT_valid;
    output [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
    output code_valid;
    output reg [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
    output reg [7:0] M1, M2, M3, M4, M5, M6;

    integer i;
    localparam LOAD = 3'd0,
                CAL_GROUP = 3'd1,
                FIND_MIN = 3'd2,
                HUFF = 3'd3,
                COMB = 3'd4,
                REVERSE = 3'd5,
                FINISH = 3'd7;

    reg [2:0] cur_state, next_state;
    reg [6:0] counter, counter_init, counter_fin;
    reg [7:0] pr_table [5:0];
    // reg [2:0] sym_table [5:0];

    reg [5:0] group [5:0];

    reg [7:0] huffman_code [5:0];
    reg [7:0] mask [5:0];

    reg [9:0] group_values [5:0];
    reg [2:0] min1_idx, min2_idx;
    reg [9:0] min1_value, min2_value;

    assign code_valid = (cur_state == FINISH)? 1'b1 : 1'b0;
    assign CNT_valid = (cur_state == CAL_GROUP && counter_init == 7'd0 && counter == 7'd0  && counter_fin == 7'd0)? 1'b1 : 1'b0;

    assign CNT1 = pr_table[0];
    assign CNT2 = pr_table[1];
    assign CNT3 = pr_table[2];
    assign CNT4 = pr_table[3];
    assign CNT5 = pr_table[4];
    assign CNT6 = pr_table[5];

    // assign {HC1, HC2, HC3, HC4, HC5, HC6} = {huffman_code[0], huffman_code[1], huffman_code[2], huffman_code[3], huffman_code[4], huffman_code[5]};
    // assign {M1, M2, M3, M4, M5, M6} = {mask[0], mask[1], mask[2], mask[3], mask[4], mask[5]};

    always @(*) begin
        case (cur_state)
            LOAD:begin
                if(counter == 7'd99)begin
                    next_state = CAL_GROUP;
                end
                else begin
                    next_state = LOAD;
                end
            end 
            CAL_GROUP:begin
                if(counter_init == 5 && counter == 5)begin
                    next_state = FIND_MIN;
                end
                else begin
                    next_state = CAL_GROUP;
                end
            end 
            FIND_MIN: begin
                if(counter == 5) next_state = HUFF;
                else next_state = FIND_MIN;
            end
            HUFF: begin
                if(counter == 5) next_state = COMB;
                else next_state = HUFF;
            end
            COMB: begin
                if(counter_fin == 4)begin
                    next_state = REVERSE;
                end
                else next_state = CAL_GROUP;
            end
            REVERSE: begin
                if({mask[0], mask[1], mask[2], mask[3], mask[4], mask[5]} != 0) begin
                    next_state = REVERSE;
                end
                else begin
                    next_state = FINISH;
                end
            end
            default:begin
                next_state = LOAD;
            end
        endcase    
    end

    always @(posedge clk, posedge reset) begin
        if(reset)begin
            counter <= 7'd0;
            counter_init <= 7'd0;
            counter_fin <= 7'd0;
        end
        else begin
            if(cur_state == LOAD)begin
                if(gray_valid)begin
                    if(counter == 7'd99)begin
                        counter <= 7'd0;
                    end
                    else begin
                        counter <= counter + 7'd1;
                    end
                end
            end
            else if(cur_state == CAL_GROUP)begin
                if(counter == 7'd5)begin
                    if(counter_init == 7'd5)begin
                        counter_init <= 7'd0;
                    end
                    else begin
                        counter_init <= counter_init + 7'd1;
                    end
                    counter <= 7'd0;
                end
                else begin
                    counter <= counter + 7'd1;
                end
                // if(counter == 7'd5)begin
                //     counter <= 7'd0;
                //     if(counter_init == 7'd5) counter_init <= 7'd0;
                //     else counter_init <= counter_init + 7'd1;
                // end
                // else begin
                //     counter <= counter + 7'd1;
                // end
                // case (counter_init)
                //     0: begin
                //         if(counter == (gp_idx[0]-1) || gp_idx[0] == 0)begin
                //             counter <= 0;
                //             counter_init <= counter_init + 1;
                //         end
                //         else counter <= counter + 1;
                //     end
                //     1: begin
                //         if(counter == (gp_idx[1]-1) || gp_idx[1] == 0)begin
                //             counter <= 0;
                //             counter_init <= counter_init + 1;
                //         end
                //         else counter <= counter + 1;
                //     end
                //     2: begin
                //         if(counter == (gp_idx[2]-1) || gp_idx[2] == 0)begin
                //             counter <= 0;
                //             counter_init <= counter_init + 1;
                //         end
                //         else counter <= counter + 1;
                //     end
                //     3: begin
                //         if(counter == (gp_idx[3]-1) || gp_idx[3] == 0)begin
                //             counter <= 0;
                //             counter_init <= counter_init + 1;
                //         end
                //         else counter <= counter + 1;
                //     end
                //     4: begin    
                //         if(counter == (gp_idx[4]-1) || gp_idx[4] == 0)begin
                //             counter <= 0;
                //             counter_init <= counter_init + 1;
                //         end
                //         else counter <= counter + 1;
                //     end
                //     5: begin
                //         if(counter == (gp_idx[5]-1) || gp_idx[5] == 0)begin
                //             counter <= 0;
                //             counter_init <= 0;
                //         end
                //         else counter <= counter + 1;
                //     end

                // endcase
            end
            else if(cur_state == FIND_MIN)begin
                if(counter == 5)begin
                    counter <= 0;
                end
                else begin
                    counter <= counter + 1;
                end
            end
            else if(cur_state == HUFF)begin
                if(counter == 5)begin
                    counter <= 0;
                end
                else begin
                    counter <= counter + 1;
                end
            end
            else if(cur_state == COMB) begin
                counter_fin <= counter_fin + 1;
            end
        end
    end

    always @(posedge clk, posedge reset) begin
        if(reset)begin
            pr_table[0] <= 8'd0;
            pr_table[1] <= 8'd0;
            pr_table[2] <= 8'd0;
            pr_table[3] <= 8'd0;
            pr_table[4] <= 8'd0;
            pr_table[5] <= 8'd0;
            // sym_table[0] <= 8'd0;
            // sym_table[1] <= 8'd1;
            // sym_table[2] <= 8'd2;
            // sym_table[3] <= 8'd3;
            // sym_table[4] <= 8'd4;
            // sym_table[5] <= 8'd5;

            group[0] <= 6'b000001;
            group[1] <= 6'b000010;
            group[2] <= 6'b000100;
            group[3] <= 6'b001000;
            group[4] <= 6'b010000;
            group[5] <= 6'b100000;
            for(i=0;i<6;i=i+1)begin
                group_values[i] <= 0;
            end
            min1_value <= 1023;
            min1_idx <= 7;
            min2_value <= 1023;
            min2_idx <= 7;
            for(i=0;i<6;i=i+1)begin
                huffman_code[i] <= 0;
                mask[i] <= 0;
            end
            HC1 <= 0;
            HC2 <= 0;
            HC3 <= 0;
            HC4 <= 0;
            HC5 <= 0;
            HC6 <= 0;
            M1 <= 0;
            M2 <= 0;
            M3 <= 0;
            M4 <= 0;
            M5 <= 0;
            M6 <= 0;
        end
        else begin
            if(cur_state == LOAD && gray_valid == 1)begin
                case (gray_data)
                    8'h01:begin
                        pr_table[0] <= pr_table[0] + 8'd1;
                    end 
                    8'h02:begin
                        pr_table[1] <= pr_table[1] + 8'd1;
                    end
                    8'h03:begin
                        pr_table[2] <= pr_table[2] + 8'd1;
                    end
                    8'h04:begin
                        pr_table[3] <= pr_table[3] + 8'd1;
                    end
                    8'h05:begin
                        pr_table[4] <= pr_table[4] + 8'd1;
                    end
                    8'h06:begin
                        pr_table[5] <= pr_table[5] + 8'd1;
                    end
                endcase
            end
            else if(cur_state == CAL_GROUP)begin
                // if(pr_table[sym_table[counter]] < pr_table[sym_table[counter + 7'd1]])begin
                //     sym_table[counter + 7'd1] <= sym_table[counter];
                //     sym_table[counter] <= sym_table[counter + 7'd1];
                // end                
                if(group[counter_init] == 0) group_values[counter_init] <= 1023;
                else begin
                    if(group[counter_init][counter])
                        group_values[counter_init] <= group_values[counter_init] + pr_table[counter];
                end
            end
            else if(cur_state == FIND_MIN)begin
                if((|group[counter]) != 0)begin
                    if(group_values[counter] <= min1_value)begin
                        min1_value <= group_values[counter];
                        min1_idx <= counter;
                        min2_value <= min1_value;
                        min2_idx <= min1_idx;
                    end
                    else if(group_values[counter] <= min2_value)begin
                        min2_value <= group_values[counter];
                        min2_idx <= counter;
                    end
                end
            end
            else if(cur_state == HUFF) begin
                //--- huffman code start---//
                if(min1_value == min2_value)begin
                    if(group[min1_idx][0] + group[min1_idx][1] + group[min1_idx][2] + group[min1_idx][3] + group[min1_idx][4] + group[min1_idx][5] == 1)begin
                        if(group[min2_idx][counter])begin
                            huffman_code[counter] <= (huffman_code[counter]<<1) | 8'd1;
                            mask[counter] <= (mask[counter]<<1) | 8'd1;
                        end

                        if(group[min1_idx][counter])begin
                            huffman_code[counter] <= (huffman_code[counter]<<1);
                            mask[counter] <= (mask[counter]<<1) | 8'd1;
                        end
                    end 
                    else if(group[min2_idx][0] + group[min2_idx][1] + group[min2_idx][2] + group[min2_idx][3] + group[min2_idx][4] + group[min2_idx][5] == 1)begin
                        if(group[min1_idx][counter])begin
                            huffman_code[counter] <= (huffman_code[counter]<<1) | 8'd1;
                            mask[counter] <= (mask[counter]<<1) | 8'd1;
                        end

                        if(group[min2_idx][counter])begin
                            huffman_code[counter] <= (huffman_code[counter]<<1);
                            mask[counter] <= (mask[counter]<<1) | 8'd1;
                        end
                    end
                end
                else begin
                    if(group[min1_idx][counter])begin
                        huffman_code[counter] <= (huffman_code[counter]<<1) | 8'd1;
                        mask[counter] <= (mask[counter]<<1) | 8'd1;
                    end

                    if(group[min2_idx][counter])begin
                        huffman_code[counter] <= (huffman_code[counter]<<1);
                        mask[counter] <= (mask[counter]<<1) | 8'd1;
                    end
                end
            end
            // else if(cur_state == COMB)begin
            //     group[min1_idx][gp_idx[min1_idx]] <= group[min2_idx][counter];
            //     group[min2_idx][counter] <= 7;
            //     gp_idx[min1_idx] <=  gp_idx[min1_idx] + 1;
            //     if(counter == gp_idx[min2_idx]-1)begin
            //         gp_idx[min2_idx] <= 0;
            //     end
            //     if(counter_fin == 4)begin
            //         {M1, M2, M3, M4, M5, M6} <= {mask[0], mask[1], mask[2], mask[3], mask[4], mask[5]};
            //     end
            // end
            else if(cur_state == COMB)begin
                group[min1_idx] <= group[min1_idx] | group[min2_idx];
                group[min2_idx] <= 6'd0;
                min1_value <= 1023;
                min2_value <= 1023;
                if(counter_fin == 4)begin
                    {M1, M2, M3, M4, M5, M6} <= {mask[0], mask[1], mask[2], mask[3], mask[4], mask[5]};
                end
                for(i=0;i<6;i=i+1)begin
                    group_values[i] <= 0;
                end
            end
            else if(cur_state == REVERSE)begin
                if({mask[0], mask[1], mask[2], mask[3], mask[4], mask[5]} != 0)begin
                    if(mask[0] != 0)begin
                        mask[0] <= mask[0] >> 1;
                        HC1 <= (HC1 << 1) | huffman_code[0][0];
                        huffman_code[0] <= huffman_code[0] >> 1;
                    end
                    if(mask[1] != 0)begin
                        mask[1] <= mask[1] >> 1;
                        HC2 <= (HC2 << 1) | huffman_code[1][0];
                        huffman_code[1] <= huffman_code[1] >> 1;
                    end
                    if(mask[2] != 0)begin
                        mask[2] <= mask[2] >> 1;
                        HC3 <= (HC3 << 1) | huffman_code[2][0];
                        huffman_code[2] <= huffman_code[2] >> 1;
                    end
                    if(mask[3] != 0)begin
                        mask[3] <= mask[3] >> 1;
                        HC4 <= (HC4 << 1) | huffman_code[3][0];
                        huffman_code[3] <= huffman_code[3] >> 1;
                    end
                    if(mask[4] != 0)begin
                        mask[4] <= mask[4] >> 1;
                        HC5 <= (HC5 << 1) | huffman_code[4][0];
                        huffman_code[4] <= huffman_code[4] >> 1;
                    end
                    if(mask[5] != 0)begin
                        mask[5] <= mask[5] >> 1;
                        HC6 <= (HC6 << 1) | huffman_code[5][0];
                        huffman_code[5] <= huffman_code[5] >> 1;
                    end
                end
            end
            
        end
    end
    
    always @(posedge clk, posedge reset) begin
        if(reset)begin
            cur_state <= LOAD;
        end
        else begin
            cur_state <= next_state;
        end
    end

endmodule

