module STI_DAC(clk ,reset, load, pi_data, pi_length, pi_fill, pi_msb, pi_low, pi_end,
	       so_data, so_valid,
	       oem_finish, oem_dataout, oem_addr,
	       odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr);

	input		clk, reset;
	input		load, pi_msb, pi_low, pi_end; 
	input	[15:0]	pi_data;
	input	[1:0]	pi_length;
	input		pi_fill;
	output	reg	so_data;
	output  so_valid;

	output  oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr;
	output [4:0] oem_addr;
	output reg [7:0] oem_dataout;

//==============================================================================
	localparam LOAD = 0,
				STI_SET = 1,
				STI_SHIFT = 2,
				ZERO = 3,
				FINISH = 7;

	reg [4:0] counter;
	reg [7:0] address;
	reg [31:0] tmp_data;
	reg start_store, reverse;

	reg [2:0] cur_state, next_state;

	assign so_valid = (cur_state == STI_SHIFT);
	assign oem_addr = address[5:1];
	assign odd1_wr = ((((reverse && address[0]==1'b0) || (!reverse && address[0]== 1'b1)) && address[7:6] == 2'b00 && counter[2:0] == 3'b111 && start_store != 1'b1) || (cur_state == ZERO && address[7:6] == 2'b00 && ((reverse && address[0]==1'b0) || (!reverse && address[0]== 1'b1))))? 1'b1 : 1'b0;
	assign odd2_wr = ((((reverse && address[0]==1'b0) || (!reverse && address[0]== 1'b1)) && address[7:6] == 2'b01 && counter[2:0] == 3'b111 && start_store != 1'b1) || (cur_state == ZERO && address[7:6] == 2'b01 && ((reverse && address[0]==1'b0) || (!reverse && address[0]== 1'b1))))? 1'b1 : 1'b0;
	assign odd3_wr = ((((reverse && address[0]==1'b0) || (!reverse && address[0]== 1'b1)) && address[7:6] == 2'b10 && counter[2:0] == 3'b111 && start_store != 1'b1) || (cur_state == ZERO && address[7:6] == 2'b10 && ((reverse && address[0]==1'b0) || (!reverse && address[0]== 1'b1))))? 1'b1 : 1'b0;
	assign odd4_wr = ((((reverse && address[0]==1'b0) || (!reverse && address[0]== 1'b1)) && address[7:6] == 2'b11 && counter[2:0] == 3'b111 && start_store != 1'b1) || (cur_state == ZERO && address[7:6] == 2'b11 && ((reverse && address[0]==1'b0) || (!reverse && address[0]== 1'b1))))? 1'b1 : 1'b0;

	assign even1_wr = ((((reverse && address[0]==1'b1) || (!reverse && address[0]== 1'b0)) && address[7:6] == 2'b00 && counter[2:0] == 3'b111 && start_store != 1'b1) || (cur_state == ZERO && address[7:6] == 2'b00 && ((reverse && address[0]==1'b1) || (!reverse && address[0]== 1'b0))))? 1'b1 : 1'b0;
	assign even2_wr = ((((reverse && address[0]==1'b1) || (!reverse && address[0]== 1'b0)) && address[7:6] == 2'b01 && counter[2:0] == 3'b111 && start_store != 1'b1) || (cur_state == ZERO && address[7:6] == 2'b01 && ((reverse && address[0]==1'b1) || (!reverse && address[0]== 1'b0))))? 1'b1 : 1'b0;
	assign even3_wr = ((((reverse && address[0]==1'b1) || (!reverse && address[0]== 1'b0)) && address[7:6] == 2'b10 && counter[2:0] == 3'b111 && start_store != 1'b1) || (cur_state == ZERO && address[7:6] == 2'b10 && ((reverse && address[0]==1'b1) || (!reverse && address[0]== 1'b0))))? 1'b1 : 1'b0;
	assign even4_wr = ((((reverse && address[0]==1'b1) || (!reverse && address[0]== 1'b0)) && address[7:6] == 2'b11 && counter[2:0] == 3'b111 && start_store != 1'b1) || (cur_state == ZERO && address[7:6] == 2'b11 && ((reverse && address[0]==1'b1) || (!reverse && address[0]== 1'b0))))? 1'b1 : 1'b0;

	assign oem_finish = (cur_state == FINISH);

	always @(*) begin
		case (cur_state)
			LOAD:begin
				if(load) next_state = STI_SET;
				else if(pi_end) next_state = ZERO;
				else next_state = LOAD;
			end 
			STI_SET:begin
				next_state = STI_SHIFT;
			end
			STI_SHIFT:begin
				if(counter == 5'd0)begin
					next_state = LOAD;
				end
				else begin
					next_state = STI_SHIFT;
				end
			end
			ZERO:begin
				if(address == 8'b11111111) next_state = FINISH;
				else next_state = ZERO;
			end
			default: next_state = LOAD;
		endcase
	end
	

	always @(posedge clk, posedge reset) begin
		if(reset)begin
			tmp_data <= 16'd0;
			address <= 8'd0;
			oem_dataout <= 8'd0;
			start_store <= 1'b0;
			reverse <= 1'b1;
		end
		else begin
			if(cur_state == LOAD)begin
				tmp_data <= pi_data;
				start_store <= 1'b1;
				if(counter == 5'd31)begin
					address <= address + 8'd1;
					oem_dataout <= 8'd0;
					if(address[2:0] == 3'b111)begin
						reverse <= ~reverse;
					end
				end
			end
			else if(cur_state == STI_SET)begin
				if(pi_length == 2'b10)begin	//24bit
					tmp_data <= {8'd0,pi_data,8'd0};
				end
				else if(pi_length == 2'b11)begin	//32bit
					if(pi_fill == 1'b1)begin
						tmp_data <= {pi_data, 16'd0};
					end
					else begin
						tmp_data <= {16'd0, pi_data};
					end
				end
			end
			else if(cur_state == STI_SHIFT)begin
				if(pi_msb == 1'b1)begin
					tmp_data <= tmp_data << 1;
				end
				else begin
					tmp_data <= tmp_data >> 1;
				end
				oem_dataout <= oem_dataout << 1;
				oem_dataout[0] <= so_data;
				if(counter[2:0] == 3'b111 && start_store != 1'b1)begin
					address <= address + 8'd1;
					oem_dataout <= {7'd0, so_data}; 
					if(address[2:0] == 3'b111)begin
						reverse <= ~reverse;
					end
				end
				else if(counter[2:0] == 3'b111 )begin
					start_store <= 1'b0;
				end
			end
			else if(cur_state == ZERO)begin
				address <= address + 8'd1;
				if(address[2:0] == 3'b111)begin
					reverse <= ~reverse;
				end
			end
		end
	end
	always @(*)begin
		if(cur_state == STI_SHIFT)begin
			case(pi_length)
				2'b00:begin //8
					if(pi_low)begin
						if(pi_msb)begin
							so_data = tmp_data[15];
						end
						else begin
							so_data = tmp_data[8];
						end
					end
					else begin
						if(pi_msb)begin
							so_data = tmp_data[7];
						end
						else begin
							so_data = tmp_data[0];
						end
					end
				end
				2'b01:begin //16
					if(pi_msb)begin
						so_data = tmp_data[15];
					end
					else begin
						so_data = tmp_data[0];
					end
				end
				2'b10:begin //24
					if(pi_fill)begin
						if(pi_msb)begin
							so_data = tmp_data[23];
						end
						else begin
							so_data = tmp_data[0];
						end
					end
					else begin
						if(pi_msb)begin
							so_data = tmp_data[31];
						end
						else begin
							so_data = tmp_data[8];
						end
					end
				end
				default: begin //32
					if(pi_msb)begin
						so_data = tmp_data[31];
					end
					else begin
						so_data = tmp_data[0];
					end
				end
			endcase
		end
		else begin
			so_data = 1'b0;
		end
	end

	always @(posedge clk, posedge reset) begin
		if(reset)begin
			counter <= 5'd0;
		end
		else begin
			if(cur_state == LOAD)begin
				if(load == 1'b1)begin
					if(pi_length == 2'b00)begin
						counter <= 5'd7;
					end
					else if(pi_length == 2'b01)begin
						counter <= 5'd15;
					end
					else if(pi_length == 2'b10)begin
						counter <= 5'd23;
					end
					else begin
						counter <= 5'd31;
					end
				end
				else begin
					counter <= 5'd0;
				end
			end
			else if(cur_state == STI_SHIFT)begin
				counter <= counter - 5'd1;
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
