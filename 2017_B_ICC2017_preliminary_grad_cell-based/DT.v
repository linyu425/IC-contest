module DT(
	input 			clk, 
	input			reset,
	output			done ,
	output 	sti_rd ,
	output	reg 	[9:0]	sti_addr ,
	input		[15:0]	sti_di,
	output	reg		res_wr ,
	output	reg		res_rd ,
	output	reg 	[13:0]	res_addr ,
	output	reg 	[7:0]	res_do,
	input		[7:0]	res_di
	);
	integer i,j;
	localparam LOAD_STI = 0,
				DECIDE =1,
				LOAD_FWD = 2,
				STORE = 3,
				LOAD_BACK = 4,
				FINISH = 7;

	reg [2:0] cur_state, next_state;

	reg [0:15] bin;
	reg [7:0] min;
	reg [6:0] counter_x, counter_y, counter;
	reg fwd_done;

	assign sti_rd = (cur_state == LOAD_STI);
	assign done = (cur_state == FINISH);

	always @(*) begin
		case (cur_state)
			LOAD_STI:begin
				next_state = DECIDE;
			end 
			DECIDE:begin
				if(!fwd_done)begin
					if(bin[counter_x[3:0]])begin //object
						next_state = LOAD_FWD;	
					end
					else if(counter_x == 7'd126)begin
						next_state = LOAD_STI;
					end
					else if(counter_x[3:0] == 4'd15 || counter_x == 7'd126) begin
						next_state = LOAD_STI;
					end
					else begin
						next_state = DECIDE;
					end
				end
				else begin
					if(bin[counter_x[3:0]])begin //object
						next_state = LOAD_BACK;	
					end
					else if(counter_x == 7'd1 && counter_y == 7'd1)begin
						next_state = FINISH;
					end
					else if(counter_x[3:0] == 4'd0 || counter_x == 7'd1) begin
						next_state = LOAD_STI;
					end
					else begin
						next_state = DECIDE;
					end
				end
			end
			LOAD_FWD:begin
				if(counter == 7'd2)begin
					next_state = STORE;
				end
				else begin	
					next_state = LOAD_FWD;
				end
			end
			LOAD_BACK:begin
				if(counter == 7'd3)begin
					next_state = STORE;
				end
				else begin	
					next_state = LOAD_BACK;
				end
			end
			STORE:begin
				if(!fwd_done)begin
					if(counter_x == 7'd126 && counter_y == 7'd126)begin
						next_state = LOAD_STI;
					end
					else if(counter_x[3:0] == 4'd15 || counter_x == 7'd126)begin
						next_state = LOAD_STI;
					end
					else begin
						next_state = DECIDE;
					end
				end
				else begin
					if(counter_x == 7'd1 && counter_y == 7'd1)begin
						next_state = FINISH;
					end
					else if(counter_x[3:0] == 4'd0  || counter_x == 7'd1)begin
						next_state = LOAD_STI;
					end
					else begin
						next_state = DECIDE;
					end
				end
				
			end
			default:begin
				next_state = LOAD_STI;
			end
		endcase
	end

	always @(posedge clk, negedge reset) begin
		if(~reset)begin
			bin <= 16'd0;
			sti_addr <= 10'd8;
			res_addr <= 14'd0;
			res_wr <= 1'b0;
			res_rd <= 1'b0;
			min <= 8'd255;
		end
		else begin
			if(cur_state == LOAD_STI)begin
				bin <= sti_di;
				if(!fwd_done)begin
					if(sti_addr != 10'd1015)begin
						sti_addr <= sti_addr + 10'd1;
					end
				end
				else begin
					sti_addr <= sti_addr - 10'd1;
				end
			end
			else if(cur_state == DECIDE)begin
				if(!fwd_done)begin
					res_addr <= ((counter_y - 1) << 7) + counter_x - 14'd1;
					if(!bin[counter_x[3:0]]) begin
						res_do <= 8'd0;
					end
					else res_rd <= 1'b1;
				end
				else begin
					res_addr <= ((counter_y + 1) << 7) + counter_x - 14'd1;
					if(!bin[counter_x[3:0]]) begin
						res_do <= 8'd0;
					end
					else res_rd <= 1'b1;
				end
			end
			else if(cur_state == LOAD_FWD)begin
				if(counter == 7'd2)begin
					if(res_di <= min)begin //res is smaller
						res_do <= res_di + 8'd1;
					end
					else begin // min is smaller
						res_do <= min + 8'd1;
					end
					res_addr <= (counter_y << 7) + counter_x;
					res_wr <= 1'b1;
					res_rd <= 1'b0;
					min <= 8'd255;
				end
				else begin
					res_addr <=res_addr + 14'd1;
					if((res_di <= min) && (res_di <= res_do)) begin // res_do(previous object)
						min <= res_di;
					end
					else if((res_do <= min) && (res_do <= res_di))begin
						min <= res_do;
					end	
				end
			end
			else if(cur_state == LOAD_BACK)begin
				if(counter == 7'd3)begin	//object vs. min
					if(res_di <= min)begin //res is smaller
						res_do <= res_di;
					end
					else begin // min is smaller
						res_do <= min + 8'd1;
					end
					res_addr <= (counter_y << 7) + counter_x;
					res_wr <= 1'b1;
					res_rd <= 1'b0;
					min <= 8'd255;
				end
				else begin
					if(counter == 7'd2)begin
						res_addr <= res_addr - 14'd129;
					end
					else begin
						res_addr <=res_addr + 14'd1;
					end
					
					if((res_di <= min) && (res_di <= res_do)) begin // res_do(previous object)
						min <= res_di;
					end
					else if((res_do <= min) && (res_do <= res_di))begin
						min <= res_do;
					end	
				end
			end
			else if(cur_state == STORE)begin
				res_wr <= 1'b0;
			end
		end
	end

	always @(posedge clk, negedge reset) begin
		if(~reset)begin
			counter_x <= 7'd1;
			counter_y <= 7'd1;
			counter <= 7'd0;
			fwd_done <= 1'b0;
		end
		else begin
			if(cur_state == DECIDE)begin
				if(!bin[counter_x[3:0]])begin
					if(!fwd_done)begin
						if(counter_x == 7'd126)begin
							if(counter_y == 7'd126)begin
								counter_y <= 7'd126;
								counter_x <= 7'd126;
								fwd_done <= 1'b1;
							end
							else begin
								counter_y <= counter_y + 7'd1;
								counter_x <= 7'd1;
							end
						end
						else begin
							counter_x <= counter_x + 7'd1;
						end
					end
					else begin
						if(counter_x == 7'd1)begin
							if(counter_y == 7'd1)begin
								counter_y <= 7'd1;
								counter_x <= 7'd1;
							end
							else begin
								counter_y <= counter_y - 7'd1;
								counter_x <= 7'd126;
							end
						end
						else begin
							counter_x <= counter_x - 7'd1;
						end
					end
				end
			end
			else if(cur_state == LOAD_FWD)begin
				if(counter == 7'd2)begin
					counter <= 7'd0;
				end	
				else begin
					counter <= counter + 7'd1;
				end
			end	
			else if(cur_state == LOAD_BACK)begin
				if(counter == 7'd3)begin
					counter <= 7'd0;
				end	
				else begin
					counter <= counter + 7'd1;
				end
			end
			else if(cur_state == STORE)begin
				if(!fwd_done)begin
					if(counter_x == 7'd126)begin
						if(counter_y == 7'd126)begin
							counter_y <= 7'd126;
							counter_x <= 7'd126;
							fwd_done <= 1'b1;
						end
						else begin
							counter_y <= counter_y + 7'd1;
							counter_x <= 7'd1;
						end
					end
					else begin
						counter_x <= counter_x + 7'd1;
					end
				end
				else begin
					if(counter_x == 7'd1)begin
						if(counter_y == 7'd1)begin
							counter_y <= 7'd1;
							counter_x <= 7'd1;
						end
						else begin
							counter_y <= counter_y - 7'd1;
							counter_x <= 7'd126;
						end
					end
					else begin
						counter_x <= counter_x - 7'd1;
					end
				end
			end
		end
	end

	always @(posedge clk, negedge reset) begin
		if(~reset)begin
			cur_state <= LOAD_STI;
		end
		else begin
			cur_state <= next_state;
		end
	end

endmodule
