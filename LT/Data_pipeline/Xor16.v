module Xor16(o,a,b);
	output [15:0]o;
	input [15:0]a;
	input [15:0]b;
	
	xor xor_gate16[15:0](o,a,b);
	
endmodule
