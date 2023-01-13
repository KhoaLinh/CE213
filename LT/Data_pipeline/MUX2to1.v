module MUX2to1(o,a,b,sel);
	
	output [15:0]o;
	input [15:0]a;
	input [15:0]b;
	input sel;
	
	wire nsel;
	wire [15:0]n1;
	wire [15:0]n2;
	
	not(nsel,sel);
	and and_gate1[15:0](n1,a,nsel);
	and and_gate2[15:0](n2,b,sel);
	or or_gate1[15:0](o,n1,n2);
	
endmodule
