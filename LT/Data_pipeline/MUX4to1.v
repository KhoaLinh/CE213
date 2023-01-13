module MUX4to1(o,a,b,c,d,sel);
	output [15:0]o;
	input [15:0]a;
	input [15:0]b;
	input [15:0]c;
	input [15:0]d;
	input [1:0]sel;
	
	wire [15:0]MUX4to1_n1;
	wire [15:0]MUX4to1_n2;
	
	MUX2to1 mux1(MUX4to1_n1,a,b,sel[0]);
	MUX2to1 mux2(MUX4to1_n2,c,d,sel[0]);
	MUX2to1 mux3(o,MUX4to1_n1,MUX4to1_n2,sel[1]);
	
endmodule
