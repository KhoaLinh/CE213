module MUX2to1_8bit(o,a,b,sel);
	
	output [7:0]o;
	input [7:0]a;
	input [7:0]b;
	input sel;
	
	MUX2to1 MUX_n[7:0](o,a,b,sel);
	
endmodule
