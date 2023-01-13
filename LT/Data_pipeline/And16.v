module And16(a,b,o);
	output [15:0]o;
	input [15:0]a;
	input [15:0]b;
	
	and and_gate16[15:0](o,a,b);
	
endmodule
