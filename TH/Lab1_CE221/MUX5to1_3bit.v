module MUX5to1_3bit(o,a,b,c,d,e,sel);
	output [2:0]o;
	input [2:0]a;
	input [2:0]b;
	input [2:0]c;
	input [2:0]d;
	input [2:0]e;
	input [2:0]sel;
	
	MUX5to1_1bit MUX5to1_n[2:0](o,a,b,c,d,e,sel);

endmodule
