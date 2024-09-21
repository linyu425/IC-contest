module JAM (
input CLK,
input RST,
output [2:0] W,
output [2:0] J,
input [6:0] Cost,
output [3:0] MatchCount,
output [9:0] MinCost,
output Valid );

/*****
    The application of the Job Assignment Machine (JAM) is quite extensive.  
    When there are n tasks to be completed, and n workers have varying costs for each task,
    determining how to assign each worker to a task in order to minimize the overall cost
    is the primary objective of the JAM.  

    The most straightforward approach to solving the job assignment problem is to
    calculate the cost for all possible combinations and then
    identify the combination with the lowest cost.  

    In this question, input data regarding worker task costs will be provided,
    and participants are required to enumerate all possible pairings using an exhaustive search method. 

    Subsequently, they should find the lowest cost and determine the number of combinations
    that achieve this lowest cost.
*****/

    localparam CAL = 0;  
    localparam RIGHT_SEARCH = 1;
    localparam REPLACE_POINT = 2;
    localparam REVERSE = 3;
    localparam FINISH = 4;

    reg [2:0] current_state, next_state;

    //READ
    reg [3:0] job_counter;
    reg [9:0] cost;
    //CAL
    reg [9:0] min_cost;
    reg [2:0] pat [7:0];
    reg [3:0] count;
    //RIGHT SEARCH
    reg [2:0] right_index;
    //REPLACE_POINT
    reg [2:0] replace_min_index, replace_min;

    assign W = job_counter;
    assign J = (job_counter != (3'd7 + 3'b1))? pat[job_counter] : 4'd0;

    assign Valid = (current_state == FINISH);
    assign MinCost = min_cost;
    assign MatchCount = count;

    always @(posedge CLK or posedge RST) begin
        if(RST) current_state <= CAL;
        else current_state <= next_state;
    end  

    always @(*) begin
        case (current_state)
            CAL:begin
                if((job_counter == 3'd7 + 3'd1) && (right_index ==  3'd0)) next_state = FINISH;
                else if((job_counter == 3'd7 + 3'd1) && ((right_index >> 1) != 3'b0)) next_state = REVERSE;
                else next_state = CAL;
            end
            // RIGHT_SEARCH: begin
            //     if(pat[job_counter] > pat[job_counter + 1]) next_state = REPLACE_POINT;
            //     else if(job_counter == 3'd6 && (pat[job_counter] < pat[job_counter + 1])) next_state = FINISH;
            //     else next_state = RIGHT_SEARCH;
            // end
            REPLACE_POINT: begin
                if(job_counter == right_index - 3'd1 && ((right_index >> 1) != 3'b0)) next_state = REVERSE;
                else if((right_index >> 1) == 3'b0) next_state = CAL;
                else next_state = REPLACE_POINT;
            end
            REVERSE:begin
                if(job_counter == ((right_index >> 1) - 3'b1)) next_state = CAL;
                else next_state = REVERSE;
            end
            default: begin
                next_state = CAL;
            end
        endcase
    end

    //counter
    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            job_counter <= 3'b0;
        end
        else begin
            if((current_state == CAL) && (job_counter == (3'd7 + 3'd1))) job_counter <= 4'b0;
            else if(current_state == RIGHT_SEARCH && (pat[job_counter] > pat[job_counter + 1])) job_counter <= 4'b0;
            else if(current_state == REPLACE_POINT && job_counter == right_index - 4'd1) job_counter <= 4'b0;
            else if(current_state == REVERSE && (job_counter == (right_index >> 1) - 3'b1)) job_counter <= 4'b0;
            else job_counter <= job_counter + 4'b1;

            // if(job_counter == 3'd7 && worker_counter == 3'd7) worker_counter <= 3'b0;
            // else if(current_state == READ && job_counter == 3'd7) worker_counter <= worker_counter + 3'b1;
            // else worker_counter <= worker_counter;
            // worker_counter_r <= worker_counter; 
        end
    end

    integer k;

    //CAL
    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            for(k=0;k<8;k=k+1)begin
                pat[k] <= 7 - k; 
            end
            min_cost <= 10'd1023;
            count <= 4'b0;
            cost <= 10'd0;
        end
        else begin
            if(current_state == CAL) begin
                if(job_counter <= 4'd7 && job_counter != 4'd0)begin
                    cost <= cost + Cost;
                end
                else if(job_counter == 3'd7 + 3'd1) begin
                    cost <= cost + Cost;
                    if(cost + Cost < min_cost)begin
                        min_cost <= cost + Cost;
                        count <= 4'd1;
                    end
                    else if(cost + Cost == min_cost)begin
                        count <= count + 4'd1;
                        min_cost <= min_cost;
                    end
                    else begin
                        count <= count;
                        min_cost <= min_cost;
                    end
                    if(pat[4'd8 - job_counter] > pat[right_index])begin
                        pat[right_index] <= pat[4'd8 - job_counter];
                        pat[4'd8 - job_counter] <= pat[right_index];
                    end
                    else begin
                        pat[right_index] <= pat[replace_min_index];
                        pat[replace_min_index] <= pat[right_index];
                    end
                    cost <= 10'd0;
                end
            end 
            else if(current_state == REVERSE)begin
                pat[job_counter] <= pat[(right_index - 3'b1) - job_counter];
                pat[(right_index - 3'b1) - job_counter] <= pat[job_counter];
            end
        end
    end

    //RIGHT SEARCH
    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            right_index <= 3'd0;
        end
        else begin
            if((current_state == CAL) && (job_counter <= 4'd7) && (job_counter !=4'd0))begin
                if(pat[4'd8 - job_counter] < pat[4'd8 - job_counter - 1])begin
                    right_index <= 4'd8 - job_counter;
                end
                else begin
                    right_index <= right_index;
                end
            end
            else if((current_state == CAL) && (job_counter == 4'b0))begin
                right_index <= 3'd0;
            end
        end
    end

    //REPLACE_POINT
    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            replace_min_index <= 3'd0;
            replace_min <= 3'd7;
        end
        else begin
            if(current_state == CAL && job_counter != 4'd0)begin
                if(pat[4'd8 - job_counter] < pat[4'd8 - job_counter - 1])begin
                    replace_min_index <= 3'd0;
                    replace_min <= 3'd7;
                end
                else if((pat[4'd8 - job_counter] > pat[right_index]) && (replace_min >= pat[4'd8 - job_counter]) && (job_counter != 4'd8))begin
                    replace_min <= pat[4'd8 - job_counter];
                    replace_min_index <= 4'd8 - job_counter;
                end
                else begin
                    replace_min <= replace_min;
                    replace_min_index <= replace_min_index;
                end
            end
            else if(current_state == CAL && job_counter == 4'd0)begin
                replace_min_index <= 3'd0;
                replace_min <= 3'd7;
            end
        end
    end

endmodule


