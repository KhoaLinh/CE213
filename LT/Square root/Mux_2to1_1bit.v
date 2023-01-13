module Mux_2to1_1bit (M, A, B, S);
	
	output M;
	input A;
	input B;
	input S;
	
	not notS(nS,S);
	and and1(a1,A,nS);
	and and2(a2,B,S);
	or or1(M,a1,a2);
	
endmodule