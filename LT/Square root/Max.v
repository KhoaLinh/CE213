module Max (Max, A, B);
	output [15:0] Max;
	input [15:0]A;
	input [15:0]B;
	
	FS_16bit FS_16bit_NegativeDetector (S, C, A, B);
	Mux_2to1_16bit Mux_2to1_16bit_AB (Max, A, B, C);
	
endmodule