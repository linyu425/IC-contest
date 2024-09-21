module DT(
	input 			clk, 
	input			reset,
	output	reg		done ,
	output 	sti_rd ,
	output	reg 	[9:0]	sti_addr ,
	input		[15:0]	sti_di,
	output	reg		res_wr ,
	output			res_rd ,
	output	reg 	[13:0]	res_addr ,
	output	reg 	[7:0]	res_do,
	input		[7:0]	res_di
	);
	integer i,j;
	localparam LOAD_STI = 0,
				FWD_CAL = 1,
				LOAD_FWD_MEM = 2,
				LOAD_BACK = 3,
				FINISH = 7;

	reg [2:0] cur_state, next_state;

	reg [0:127] bin [1:0];
	reg [7:0] dis_window [1:0][0:2];
	reg [6:0] counter_x, counter_y, counter;

	assign sti_rd = (cur_state == LOAD_STI);
	assign res_rd = ((cur_state == LOAD_FWD_MEM ) || (cur_state == FWD_CAL & (counter == 1)));

	always @(*) begin
		case (cur_state)
			LOAD_STI:begin
				if(counter_x == 7'd112)begin
					if(counter_y == 0)begin
						next_state = LOAD_STI;
					end
					else begin
						next_state = LOAD_FWD_MEM;
					end
				end
				else next_state = LOAD_STI;
			end 
			LOAD_FWD_MEM:begin
				if(counter == 7'd1)begin
					next_state = FWD_CAL;
				end
				else begin	
					next_state = LOAD_FWD_MEM;
				end
			end
			FWD_CAL:begin
				if(bin[1][counter_x]==0 && counter == 7'd1)begin
					if(counter_x == 7'd126 && counter_y == 7'd127)begin
						next_state = LOAD_BACK;
					end
					else if(counter_x == 7'd126)begin
						next_state = LOAD_STI;
					end
					else begin
						next_state = FWD_CAL;
					end
				end
				else if(counter == 7'd2)begin
					if(counter_x == 7'd126 && counter_y == 7'd127)begin
						next_state = LOAD_BACK;
					end
					else if(counter_x == 7'd126)begin
						next_state = LOAD_STI;
					end
					else begin
						next_state = FWD_CAL;
					end
				end
				else begin
					next_state = FWD_CAL;
				end
			end
			default:begin
				next_state = LOAD_STI;
			end
		endcase
	end

	always @(posedge clk, negedge reset) begin
		if(~reset)begin
			bin[0] <= 128'd0;
			bin[1] <= 128'd0;
			dis_window[0][0] <= 8'd0;
			dis_window[0][1] <= 8'd0;
			dis_window[0][2] <= 8'd0;
			dis_window[1][0] <= 8'd0;
			dis_window[1][1] <= 8'd0;
			dis_window[1][2] <= 8'd0;
			sti_addr <= 10'd0;
			res_do <= 8'd0;
			res_addr <= 14'd0;
			res_wr <= 1'b0;
		end
		else begin
			if(cur_state == LOAD_STI)begin
				if(counter_y == 0)begin
					bin[0][counter_x+:16] <= sti_di;
				end
				else begin
					bin[1][counter_x+:16] <= sti_di;
				end
				bin[0][counter_x+:16] <= bin[1][counter_x+:16];
				sti_addr <= sti_addr + 10'd1;
				//
				res_addr <= ((counter_y - 1) << 7);
			end
			else if(cur_state == LOAD_FWD_MEM)begin
				if(counter == 0)begin
					res_addr <= ((counter_y - 2) << 7) + 1;
					dis_window[0][0] <= res_di;
				end
				else begin
					res_addr <= ((counter_y - 2) << 7) + 2;
					dis_window[0][1] <= res_di;
					dis_window[1][0] <= 7'd0;
				end

			end
			else if(cur_state == FWD_CAL)begin
				if(bin[1][counter_x])begin //object
					if(counter == 7'd0)begin
						res_wr <= 1'b0;
						res_addr <= ((counter_y - 2) << 7) + counter_x + 1;
					end
					else if(counter == 7'd1)begin
						dis_window[0][2] <= res_di;
						dis_window[0][0] <= dis_window[0][1];
						dis_window[0][1] <= dis_window[0][2];
						dis_window[1][0] <= dis_window[1][1];
						dis_window[1][1] <= dis_window[1][2];
					end
					else begin
						if((bin[0][counter_x-1] == 1'b1) && (bin[0][counter_x] == 1'b1) && (bin[0][counter_x+1] == 1'b1) && (bin[1][counter_x-1] == 1'b1))begin //all object around
							if((dis_window[0][0] <= dis_window[0][1]) && (dis_window[0][0] <= dis_window[0][2]) && (dis_window[0][0] <= dis_window[1][0]))begin
								dis_window[1][1] <= dis_window[0][0] + 8'd1;
								res_do <= dis_window[0][0] + 8'd1;
							end
							else if((dis_window[0][1] <= dis_window[0][0]) && (dis_window[0][1] <= dis_window[0][2]) && (dis_window[0][1] <= dis_window[1][0]))begin
								dis_window[1][1] <= dis_window[0][1] + 8'd1;
								res_do <= dis_window[0][1] + 8'd1;
							end
							else if((dis_window[0][2] <= dis_window[0][0]) && (dis_window[0][2] <= dis_window[0][1]) && (dis_window[0][2] <= dis_window[1][0]))begin
								dis_window[1][1] <= dis_window[0][2] + 8'd1;
								res_do <= dis_window[0][2] + 8'd1;
							end
							else if((dis_window[1][0] <= dis_window[0][0]) && (dis_window[1][0] <= dis_window[0][2]) && (dis_window[1][0] <= dis_window[0][1]))begin
								dis_window[1][1] <= dis_window[1][0] + 8'd1;
								res_do <= dis_window[1][0] + 8'd1;
							end
						end
						else begin //background around
							dis_window[1][1] <= 8'd1;
							res_do <= 8'd1;
						end
						res_addr <= ((counter_y - 1) << 7) + counter_x;
						res_wr <= 1'b1;
					end
				end
				else begin // background
					if(counter == 7'd0)begin
						res_wr <= 1'b0;
						res_do <= 8'd0;
						res_addr <= ((counter_y - 2) << 7) + counter_x + 1;
						dis_window[1][1] <= 8'd0;
					end
					else if(counter == 7'd1)begin
						dis_window[0][2] <= res_di;
						dis_window[0][0] <= dis_window[0][1];
						dis_window[0][1] <= dis_window[0][2];
						dis_window[1][0] <= dis_window[1][1];
						dis_window[1][1] <= dis_window[1][2];
					end
								
				end
			end
		end
	end

	always @(posedge clk, negedge reset) begin
		if(~reset)begin
			counter_x <= 7'd0;
			counter_y <= 7'd0;
			counter <= 7'd0;
		end
		else begin
			if(cur_state == LOAD_STI)begin
				if(counter_x == 7'd112)begin
					if(counter_y == 7'd127)begin
						counter_y <= 7'd0;
					end
					else if(counter_y == 7'd0)begin
						counter_x <= 7'd0;
						counter_y <= counter_y + 7'd1;
					end	
					else begin
						counter_y <= counter_y + 7'd1;
						counter_x <= 7'd1;
					end
				end
				else begin
					counter_x <= counter_x + 7'd16;
				end
			end
			else if(cur_state == LOAD_FWD_MEM)begin
				if(counter == 7'd1)begin
					counter <= 7'd0;
				end
				else begin
					counter <= counter + 7'd1;
				end
			end
			else if(cur_state == FWD_CAL)begin
				if(bin[1][counter_x]==0) begin
					if(counter_x == 7'd126 && (counter == 7'd1))begin
						counter_x <= 7'd0;
						if(counter_y == 7'd127)begin
							counter_y <= 7'd1;
						end
					end
					else if(counter == 1)begin
						counter_x <= counter_x + 7'd1;
						counter <= 7'd0;
					end
					else begin
						counter <= counter + 7'd1;
					end
				end
				else begin
					if(counter_x == 7'd126 && (counter == 7'd2))begin
						counter_x <= 7'd0;
						if(counter_y == 7'd127)begin
							counter_y <= 7'd1;
						end
					end
					else if(counter == 7'd2) begin
						counter_x <= counter_x + 7'd1;
						counter <= 7'd0;
					end
					else begin
						counter <= counter + 7'd1;
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
