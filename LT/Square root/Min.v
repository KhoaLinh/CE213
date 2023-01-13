module Min (Min, A, B);
	output [15:0]Min;
	input [15:0]A;
	input [15:0]B;
	
	FS_16bit FS_16bit_NegativeDetector (S, C, A, B);
	Mux_2to1_16bit Mux_2to1_16bit_AB (Min, B, A, C);
	
endmodule