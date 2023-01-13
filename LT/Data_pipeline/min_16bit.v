module min_16bit(o,a,b);
	output [15:0]o;
	input [15:0]a;
	input [15:0]b;
	
	assign o = a < b ? a : b;
	
endmodule
