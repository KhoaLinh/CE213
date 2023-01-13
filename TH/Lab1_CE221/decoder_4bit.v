module decoder_4bit(hex0,hex1,in);
	output [6:0]hex0;
	output [6:0]hex1;
	input [3:0]in;
	
	reg [3:0]num0;
	reg [3:0]num1;
	
	segment7 seg0(num0,hex0);
	segment7 seg1(num1,hex1);
	
	always @(in) begin
		if (in < 10) begin
			num0 = in;
			num1 = 0;
		end
		else begin
			num0 = in-10;
			num1 = 1;
		end
	end
endmodule
	