`define abs(a,b) ((a>b)? a-b:b-a)
`define is_in_circle(c) \
	({1'b0,square[`abs(x,cx[c])]}+{1'b0,square[`abs(y,cy[c])]}<=square[cr[c]])

module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );

input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output reg busy;
output reg valid;
output reg [7:0] candidate;

reg [6:0]square[0:8];
reg [3:0]cx[0:2];
reg [3:0]cy[0:2];
reg [3:0]cr[0:2];

reg [3:0]x,y;
reg [1:0]tmp;
integer i;

always @(posedge clk or posedge rst) begin
	if(rst)begin
		busy <= 1'd0;
		valid <= 1'd0;
		candidate <= 8'd0;
		cx[0][3:0] <= 4'd0;
		cx[1][3:0] <= 4'd0;
		cx[2][3:0] <= 4'd0;
		cy[0][3:0] <= 4'd0;
		cy[1][3:0] <= 4'd0;
		cy[2][3:0] <= 4'd0;
		cr[0][3:0] <= 4'd0;
		cr[1][3:0] <= 4'd0;
		cr[2][3:0] <= 4'd0;
		for(i=0 ; i<9 ; i=i+1)begin
			square[i] <= i*i;
		end
	end
	else if(en && !busy)begin
		busy <= 1'd1;
		valid <= 1'd0;
		candidate <= 8'd0;
		tmp <= mode;
		x <= 4'd1;
		y <= 4'd1;
		cx[0][3:0] <= central[23:20];
		cx[1][3:0] <= central[15:12];
		cx[2][3:0] <= central[7:4];
		cy[0][3:0] <= central[19:16];
		cy[1][3:0] <= central[11:8];
		cy[2][3:0] <= central[3:0];
		cr[0][3:0] <= radius[11:8];
		cr[1][3:0] <= radius[7:4];
		cr[2][3:0] <= radius[3:0];	
	end
	else if(busy)begin
		case (tmp)
			2'b00:
				if(`is_in_circle(0)) candidate <= candidate + 4'd1;
			2'b01:
				if(`is_in_circle(0) && `is_in_circle(1)) candidate <= candidate + 4'd1;
			2'b10:
				if(!(`is_in_circle(0) && `is_in_circle(1)) && (`is_in_circle(0) && `is_in_circle(1))) candidate <= candidate + 4'd1;
			2'b11: 
				if(!(`is_in_circle(0) && `is_in_circle(1) && `is_in_circle(2)) && (`is_in_circle(0) && `is_in_circle(1) && `is_in_circle(2))) candidate <= candidate + 4'd1;
		endcase		
		if(y == 4'd8)begin
			y <= 4'd1;
			x <= x + 4'd1;
		end
		if(x == 4'd9)begin
			valid = 1'b1;
			busy = 1'b0;
		end
		y <= y + 4'd1;
	end
end

endmodule
