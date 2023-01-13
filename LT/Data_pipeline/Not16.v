module not16(a,o);
	output [15:0]o;
	input [15:0]a;
	
	not not_gate16[15:0](o,a);
	
endmodule
