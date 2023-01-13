module Controller(
		load,oe,c1,c2,start,reset,clk,count
		);
	output [4:0]load;
	output [11:0]oe;
	output [1:0]c1;
	output [1:0]c2;
	output [3:0]count;
	input start,reset,clk;
	
	reg [3:0]count;
	wire [3:0]state;
	reg [4:0]load;
	reg [11:0]oe;
	reg [1:0]c1;
	reg [1:0]c2;
	
	Counter counter(state,start,reset,clk);
	
	/*
	@ALU1:
		00:Abs
		01:Min
		10:Max
		11:None-op(highz output)
	@ALU2:
		00:Add
		01:Sub
		10:Max
		11:None-op(highz output)
	*/
	always @(state,clk,reset) begin
		count = state;
		case (state)
			//nth pair loading
			4'b0000: begin
				load <= 5'b00011;
				c1 <= 2'b11;	//none-op
				c2 <= 2'b11;	//none-op
				oe <= 12'b000000100100;
			end
			4'b0001: begin
				load <= 5'b00001;
				c1 <= 2'b00;	//abs
				c2 <= 2'b11;	//none-op
				oe <= 12'b000000001001;
			end
			4'b0010: begin
				load <= 5'b00010;
				c1 <= 2'b00;	//abs
				c2 <= 2'b11;	//none-op
				oe <= 12'b000000010010;
			end
			4'b0011: begin
				load <= 5'b10000;
				c1 <= 2'b01;	//min
				c2 <= 2'b11;	//none-op
				oe <= 12'b000000000010;
			end
			4'b0100: begin
				load <= 5'b01100;
				c1 <= 2'b10;	//max
				c2 <= 2'b11;	//none-op
				oe <= 12'b000001000010;
			end
			//(n+1)th pair loading
			4'b0101: begin
				load <= 5'b00111;
				c1 <= 2'b11;	//none-op
				c2 <= 2'b01;	//sub
				oe <= 12'b101010100100;
			end
			4'b0110: begin
				load <= 5'b00101;
				c1 <= 2'b00;	//abs
				c2 <= 2'b00;	//add
				oe <= 12'b101100001001;
			end
			4'b0111: begin
				load <= 5'b00110;
				c1 <= 2'b00;	//abs
				c2 <= 2'b10;	//max	
				oe <= 12'b101010010010;
			end
			4'b1000: begin
				load <= 5'b10000;
				c1 <= 2'b01;	//min
				c2 <= 2'b11;	//none-op
				oe <= 12'b010000000010;
			end
			4'b1001: begin
				load <= 5'b01100;
				c1 <= 2'b10;	//max
				c2 <= 2'b11;	//none-op
				oe <= 12'b000001000010;
			end
		endcase
	end
	
	
endmodule
