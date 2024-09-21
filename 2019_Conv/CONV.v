
`timescale 1ns/10ps

module  CONV(
	input		clk,
	input		reset,
	output		busy,	
	input		ready,	
			
	output reg	[11:0]	iaddr,
	input	[19:0]	idata,	
	
	output	 	cwr,
	output reg 	[11:0]	caddr_wr,
	output	[19:0]	cdata_wr,
	
	output	 	crd,
	output reg	[11:0] 	caddr_rd,
	input	[19:0] 	cdata_rd,
	
	output [2:0]	 	csel
	);

	localparam IDLE = 0,
				READ = 1,
				CAL_KER1 = 2,
				STORE_CONV_1 = 3,
				CAL_KER2 = 4,
				STORE_CONV_2 = 5,
				READ_1 = 6,
				STORE_MAX_1 = 7,
				READ_2 = 8,
				STORE_MAX_2 = 9;

	reg [3:0] cur_state, next_state;

	reg signed [19:0] tmp [8:0];
	reg [5:0] row, col;
	reg [3:0] counter;
	reg signed [41:0] partial_sum;

	wire signed [19:0] kernel;
	wire signed [19:0] kernel1 [8:0];
	wire signed [19:0] kernel2 [8:0];
	wire signed [35:0] bias1, bias2;
	wire signed [35:0] bias;
	wire [11:0] addr;

	assign kernel1[0] = 20'h0A89E;
	assign kernel1[1] = 20'h092D5;
	assign kernel1[2] = 20'h06D43;
	assign kernel1[3] = 20'h01004;
	assign kernel1[4] = 20'hF8F71;
	assign kernel1[5] = 20'hF6E54;
	assign kernel1[6] = 20'hFA6D7;
	assign kernel1[7] = 20'hFC834;
	assign kernel1[8] = 20'hFAC19;

	assign kernel2[0] = 20'hFDB55;
	assign kernel2[1] = 20'h02992;
	assign kernel2[2] = 20'hFC994;
	assign kernel2[3] = 20'h050FD;
	assign kernel2[4] = 20'h02F20;
	assign kernel2[5] = 20'h0202D;
	assign kernel2[6] = 20'h03BD7;
	assign kernel2[7] = 20'hFD369;
	assign kernel2[8] = 20'h05E68;

	assign kernel = (cur_state == CAL_KER1 && counter <= 4'd8)? kernel1[counter] : (cur_state == CAL_KER2 && counter <= 4'd8)? kernel2[counter] : 20'd0;

	assign bias1 = 36'h013100000;
	assign bias2 = 36'hF72950000;
	assign bias = (cur_state == CAL_KER1)? bias1 : (cur_state == CAL_KER2)? bias2 : 36'd0;

	assign busy = (cur_state == IDLE)? 1'b0 : 1'b1;
	assign addr = (cur_state == STORE_MAX_1 || cur_state == STORE_MAX_2)? (row << 5) + col : (row << 6) + col;
	assign cwr = (((cur_state == STORE_CONV_1) || (cur_state == STORE_CONV_2)) && counter == 4'd1)? 1'b1 : (((cur_state == STORE_MAX_1) || (cur_state == STORE_MAX_2)) && counter != 4'd0)? 1'b1 : 1'b0;
	assign csel = (cur_state == STORE_CONV_1)? 3'b001 : (cur_state == STORE_CONV_2)? 3'b010 : (cur_state == READ_1)? 3'b001 : (cur_state == READ_2)? 3'b010 : (cur_state == STORE_MAX_1 && counter <= 4'd1)? 3'b011 : (cur_state == STORE_MAX_2 && counter <= 4'd1)? 3'b100 : ((cur_state == STORE_MAX_1) || (cur_state == STORE_MAX_2) && counter == 4'd2)? 3'b101 : 3'b000;
	assign crd = ((cur_state == READ_1) || (cur_state == READ_2))? 1'b1 : 1'b0;
	
	assign cdata_wr = (cur_state == STORE_CONV_1 || cur_state == STORE_CONV_2)? partial_sum[35:16] : (cur_state == STORE_MAX_1 || cur_state == STORE_MAX_2)? tmp[8] : 20'd0;

	always @(posedge clk, posedge reset) begin
		if(reset) cur_state <= IDLE;
		else cur_state <= next_state;
	end

	always @(*) begin
		case (cur_state)
			IDLE:begin
				if(ready) next_state = READ;
				else next_state = IDLE;
			end 
			READ:begin
				if(counter == 4'd9)begin
					next_state = CAL_KER1;
				end
				else begin
					next_state = READ;
				end
			end
			CAL_KER1:begin
				if(counter == 4'd9)begin
					next_state = STORE_CONV_1;
				end
				else begin
					next_state = CAL_KER1;
				end
			end
			STORE_CONV_1:begin
				if(counter == 4'd1)begin
					next_state = CAL_KER2;
				end
				else begin
					next_state = STORE_CONV_1;
				end
			end
			CAL_KER2:begin
				if(counter == 4'd9)begin
					next_state = STORE_CONV_2;
				end
				else begin
					next_state = CAL_KER2;
				end
			end
			STORE_CONV_2:begin
				if(counter == 4'd1)begin
					if((row == 6'd63) && (col == 6'd63)) next_state = READ_1;
					else next_state = READ;
				end
				else begin
					next_state = STORE_CONV_2;
				end
			end
			READ_1:begin
				if(counter == 4'd3) next_state = STORE_MAX_1;
				else next_state = READ_1;
			end
			STORE_MAX_1:begin
				if(counter == 4'd2) next_state = READ_2;
				else next_state = STORE_MAX_1;
			end
			READ_2:begin
				if(counter == 4'd3) next_state = STORE_MAX_2;
				else next_state = READ_2;
			end
			STORE_MAX_2:begin
				if(counter == 4'd2)begin
					if((row == 6'd31) && (col == 6'd31)) next_state = IDLE;
					else next_state = READ_1;
				end
				else next_state = STORE_MAX_2;
			end
			default: begin
				next_state = IDLE;
			end
		endcase
	end

	integer i;

	always @(posedge clk, posedge reset) begin
		if(reset)begin
			for(i=0;i<9;i=i+1)
				tmp[i] <= 25'd0;
			partial_sum <= 42'd0;
			caddr_wr <= 12'd0;
		end
		else begin
			if(cur_state == READ)begin
				if((row == 6'd0) && (col == 6'd0))begin
					case (counter)
						4'd0:begin
							tmp[0] <= 25'd0;
							tmp[1] <= 25'd0;
							tmp[2] <= 25'd0;
							tmp[3] <= 25'd0;
							tmp[6] <= 25'd0;
							tmp[4] <= idata;
						end
						4'd1:begin
							tmp[5] <= idata;
						end
						4'd2:begin
							tmp[7] <= idata;
						end
						4'd3:begin
							tmp[8] <= idata;
						end
					endcase
				end
				else if((row == 6'd0) && (col == 6'd63))begin
					case (counter)
						4'd0:begin
							tmp[0] <= 25'd0;
							tmp[1] <= 25'd0;
							tmp[2] <= 25'd0;
							tmp[5] <= 25'd0;
							tmp[8] <= 25'd0;
							tmp[3] <= idata;
						end
						4'd1:begin
							tmp[4] <= idata;
						end
						4'd2:begin
							tmp[6] <= idata;
						end
						4'd3:begin
							tmp[7] <= idata;
						end
					endcase
				end
				else if((row == 6'd0) && (col == 6'd63))begin
					case (counter)
						4'd0:begin
							tmp[0] <= 25'd0;
							tmp[1] <= 25'd0;
							tmp[2] <= 25'd0;
							tmp[5] <= 25'd0;
							tmp[8] <= 25'd0;
							tmp[3] <= idata;
						end
						4'd1:begin
							tmp[4] <= idata;
						end
						4'd2:begin
							tmp[6] <= idata;
						end
						4'd3:begin
							tmp[7] <= idata;
						end
					endcase
				end
				else if((row == 6'd63) && (col == 6'd0))begin
					case (counter)
						4'd0:begin
							tmp[0] <= 25'd0;
							tmp[3] <= 25'd0;
							tmp[6] <= 25'd0;
							tmp[7] <= 25'd0;
							tmp[8] <= 25'd0;
							tmp[1] <= idata;
						end
						4'd1:begin
							tmp[2] <= idata;
						end
						4'd2:begin
							tmp[4] <= idata;
						end
						4'd3:begin
							tmp[5] <= idata;
						end
					endcase
				end
				else if((row == 6'd63) && (col == 6'd63))begin
					case (counter)
						4'd0:begin
							tmp[2] <= 25'd0;
							tmp[5] <= 25'd0;
							tmp[6] <= 25'd0;
							tmp[7] <= 25'd0;
							tmp[8] <= 25'd0;
							tmp[0] <= idata;
						end
						4'd1:begin
							tmp[1] <= idata;
						end
						4'd2:begin
							tmp[3] <= idata;
						end
						4'd3:begin
							tmp[4] <= idata;
						end
					endcase
				end
				else if(row == 6'd0)begin
					case (counter)
						4'd6:begin
							tmp[0] <= 25'd0;
							tmp[1] <= 25'd0;
							tmp[2] <= 25'd0;
						end
						4'd0, 4'd1, 4'd2, 4'd3, 4'd4, 4'd5:begin
							tmp[4'd3 + counter] <= idata;
						end
					endcase
				end
				else if(row == 6'd63)begin
					case (counter)
						4'd6:begin
							tmp[6] <= 25'd0;
							tmp[7] <= 25'd0;
							tmp[8] <= 25'd0;
						end
						4'd0, 4'd1, 4'd2, 4'd3, 4'd4, 4'd5:begin
							tmp[counter] <= idata;
						end
					endcase
				end
				else if(col == 6'd0)begin
					case (counter)
						4'd0:begin
							tmp[0] <= 25'd0;
							tmp[3] <= 25'd0;
							tmp[6] <= 25'd0;
							tmp[1] <= idata;
						end
						4'd1:begin
							tmp[2] <= idata;
						end
						4'd2:begin
							tmp[4] <= idata;
						end
						4'd3:begin
							tmp[5] <= idata;
						end
						4'd4:begin
							tmp[7] <= idata;
						end
						4'd5:begin
							tmp[8] <= idata;
						end
					endcase
				end
				else if(col == 6'd63)begin
					case (counter)
						4'd0:begin
							tmp[2] <= 25'd0;
							tmp[5] <= 25'd0;
							tmp[8] <= 25'd0;
							tmp[0] <= idata;
						end
						4'd1:begin
							tmp[1] <= idata;
						end
						4'd2:begin
							tmp[3] <= idata;
						end
						4'd3:begin
							tmp[4] <= idata;
						end
						4'd4:begin
							tmp[6] <= idata;
						end
						4'd5:begin
							tmp[7] <= idata;
						end
					endcase
				end
				else begin
					tmp[counter] <= idata;
				end
			end
			else if((cur_state == CAL_KER1) || (cur_state == CAL_KER2))begin
				if(counter <= 4'd8)begin
					partial_sum <= partial_sum + tmp[counter] * kernel;
				end
				else begin
					partial_sum <= partial_sum + bias;
				end
			end
			else if((cur_state == STORE_CONV_1) || (cur_state == STORE_CONV_2))begin
				if(counter == 4'd0)begin
					if(partial_sum[41]) partial_sum <= 42'd0;
					else begin
						if(partial_sum[15]) partial_sum <= partial_sum + 42'h10000;
					end
					caddr_wr <= addr;
				end
				else begin
					partial_sum <= 42'd0;
				end
			end
			else if(cur_state == READ_1)begin
				if(tmp[8] < cdata_rd)begin
					tmp[8] <= cdata_rd;
				end
			end
			else if(cur_state == STORE_MAX_1)begin
				if(counter == 4'd0)begin
					caddr_wr <= addr;
				end
				else if(counter == 4'd1)begin
					caddr_wr <= caddr_wr << 1;
				end
				else if(counter == 4'd2)begin
					tmp[8] <= 20'd0;
				end
			end
			else if(cur_state == READ_2)begin
				if(tmp[8] < cdata_rd)begin
					tmp[8] <= cdata_rd;
				end
			end
			else if(cur_state == STORE_MAX_2)begin
				if(counter == 4'd0)begin
					caddr_wr <= addr;
				end
				else if(counter == 4'd1)begin
					caddr_wr <= (caddr_wr << 1) + 12'd1;
				end
				else if(counter == 4'd2)begin
					tmp[8] <= 20'd0;
				end
			end
		end
	end

	always @(posedge clk, posedge reset) begin
		if(reset)begin
			iaddr <= 12'd0;
		end
		else begin
			if(cur_state == READ)begin
				if((row == 6'd0) && (col == 6'd0))begin
					case (counter)
						4'd0: iaddr <= iaddr + 12'd1; 
						4'd1: iaddr <= iaddr + 12'd63; 
						4'd2: iaddr <= iaddr + 12'd1; 
						4'd3: iaddr <= iaddr - 12'd65; 
						default: iaddr <= iaddr;
					endcase
				end
				else if((row == 6'd0) && (col == 6'd63))begin
					case (counter)
						4'd0: iaddr <= iaddr + 12'd1; 
						4'd1: iaddr <= iaddr + 12'd63; 
						4'd2: iaddr <= iaddr + 12'd1; 
						4'd3: iaddr <= iaddr - 12'd127; 
						default: iaddr <= iaddr;
					endcase
				end
				else if((row == 6'd63) && (col == 6'd0))begin
					case (counter)
						4'd0: iaddr <= iaddr + 12'd1; 
						4'd1: iaddr <= iaddr + 12'd63; 
						4'd2: iaddr <= iaddr + 12'd1; 
						4'd3: iaddr <= iaddr - 12'd65; 
						default: iaddr <= iaddr;
					endcase
				end
				else if((row == 6'd63) && (col == 6'd63))begin
					case (counter)
						4'd0: iaddr <= iaddr + 12'd1; 
						4'd1: iaddr <= iaddr + 12'd63; 
						4'd2: iaddr <= iaddr + 12'd1; 
						4'd3: iaddr <= 12'd0; 
						default: iaddr <= iaddr;
					endcase
				end
				else if((row == 6'd0) ||(row == 6'd63))begin
					case (counter)
						4'd0,4'd1: iaddr <= iaddr + 12'd1; 
						4'd2: iaddr <= iaddr + 12'd62; 
						4'd3,4'd4: iaddr <= iaddr + 12'd1; 
						4'd5: iaddr <= iaddr - 12'd65;
						default: iaddr <= iaddr;
					endcase
				end
				else if((col == 6'd0))begin
					case (counter)
						4'd0,4'd2,4'd4: iaddr <= iaddr + 12'd1; 
						4'd1,4'd3: iaddr <= iaddr + 12'd63; 
						4'd5: iaddr <= iaddr - 12'd129;
						default: iaddr <= iaddr;
					endcase
				end
				else if(col == 6'd63)begin
					case (counter)
						4'd0,4'd2,4'd4: iaddr <= iaddr + 12'd1; 
						4'd1,4'd3: iaddr <= iaddr + 12'd63; 
						4'd5: iaddr <= iaddr - 12'd127;
						default: iaddr <= iaddr;
					endcase
				end
				else begin
					case (counter)
						4'd0,4'd1,4'd3,4'd4,4'd6,4'd7: iaddr <= iaddr + 12'd1; 
						4'd2,4'd5: iaddr <= iaddr + 12'd62; 
						4'd8: iaddr <= iaddr - 12'd129;
						default: iaddr <= iaddr;
					endcase
				end
			end
		end
	end

	always @(posedge clk, posedge reset) begin
		if(reset)begin
			caddr_rd <= 12'd0;
		end
		else begin
			if(cur_state == READ_1)begin
				case (counter)
					4'd0: begin
						caddr_rd <= caddr_rd + 12'd1;
					end
					4'd1: begin
						caddr_rd <= caddr_rd + 12'd63;
					end 
					4'd2: begin
						caddr_rd <= caddr_rd + 12'd1;
					end  
					4'd3: begin
						caddr_rd <= caddr_rd - 12'd65;
					end 
				endcase
			end
			if(cur_state == READ_2)begin
				if(col == 6'd31)begin
					case (counter)
						4'd0: begin
							caddr_rd <= caddr_rd + 12'd1;
						end
						4'd1: begin
							caddr_rd <= caddr_rd + 12'd63;
						end 
						4'd2: begin
							caddr_rd <= caddr_rd + 12'd1;
						end  
						4'd3: begin
							caddr_rd <= caddr_rd + 12'd1;
						end 
					endcase
				end
				else begin
					case (counter)
						4'd0: begin
							caddr_rd <= caddr_rd + 12'd1;
						end
						4'd1: begin
							caddr_rd <= caddr_rd + 12'd63;
						end 
						4'd2: begin
							caddr_rd <= caddr_rd + 12'd1;
						end  
						4'd3: begin
							caddr_rd <= caddr_rd - 12'd63;
						end 
					endcase
				end
			end
		end
		
	end

	always @(posedge clk, posedge reset) begin
		if(reset)begin
			row <= 6'd0;
			col <= 6'd0;
			counter <= 4'd0;
		end
		else begin
			if(cur_state == READ)begin
				if(counter == 4'd9)begin
					counter <= 4'd0;
				end
				else begin
					counter <= counter + 4'd1;
				end
			end
			else if((cur_state == CAL_KER1) || (cur_state == CAL_KER2))begin
				if(counter == 4'd9) counter <= 4'd0;
				else counter <= counter + 4'd1;
			end
			else if(cur_state == STORE_CONV_1)begin
				if(counter == 4'd1) counter <= 4'd0;
				else counter <= counter + 4'd1;
			end
			else if(cur_state == STORE_CONV_2)begin
				if(counter == 4'd1) begin
					counter <= 4'd0;

					if(col == 6'd63)begin
						col <= 6'd0;
						if(row == 6'd63) row <= 6'd0;
						else row <= row + 6'd1;
					end
					else begin
						col <= col + 6'd1;
					end
				end
				else counter <= counter + 4'd1;
			end
			else if((cur_state == READ_1) || (cur_state == READ_2))begin
				if(counter == 4'd3) counter <= 4'd0;
				else counter <= counter + 4'd1;
			end
			else if(cur_state == STORE_MAX_1)begin
				if(counter == 4'd2)begin
					counter <= 4'd0;
				end 
				else counter <= counter + 4'd1;
			end
			else if(cur_state == STORE_MAX_2)begin
				if(counter == 4'd2)begin
					counter <= 4'd0;

					if(col == 6'd31)begin
						col <= 6'd0;
						if(row == 6'd31) row <= 6'd0;
						else row <= row + 6'd1;
					end
					else col <= col + 6'd1;
				end 
				else counter <= counter + 4'd1;
			end
		end
	end

endmodule




