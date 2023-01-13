module Abs_16bit (M, A);
	
	output [15:0]M;
	input [15:0]A;
	
	wire[15:0]n1;
	wire[15:0]fa1;
	
	not not1[15:0](n1, A);
	FA_16bit FA1(fa1, n1, 16'b0000000000000001);
	Mux_2to1_16bit mux1(M, A, fa1, A[15]);
	
endmodule