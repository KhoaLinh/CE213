module Mux_2to1_16bit (M, A, B, S);
	
	output [15:0]M;
	input [15:0]A;
	input [15:0]B;
	input S;
	
	wire nS;
	wire [15:0]a1;
	wire [15:0]a2;
	
	not(nS,S);
	and and1[15:0](a1,A,nS);
	and and2[15:0](a2,B,S);
	or or1[15:0](M,a1,a2);
	
endmodule