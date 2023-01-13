module max_16bit(o,a,b);
	output [15:0]o;
	input [15:0]a;
	input [15:0]b;
	
	Sub16 sub(_,carry,a,b);
	MUX2to1 mux(o,b,a,carry);
	
endmodule
