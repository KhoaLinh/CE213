module Mux_2to1_8bit (X,Y,s,M);
	input [7:0]X;
	input [7:0]Y;
	input s;
	output [7:0]M;

	Mux_2to1 Mux_n[7:0](X,Y,s,M);
	
endmodule