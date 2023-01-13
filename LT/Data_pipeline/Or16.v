module Or16(a,b,o);
	output [15:0]o;
	input [15:0]a;
	input [15:0]b;
	
	or or_gate16[0:15](a,b,o);
	
endmodule
