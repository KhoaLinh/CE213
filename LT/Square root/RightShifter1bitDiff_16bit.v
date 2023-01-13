module RightShifter1bitDiff_16bit (O, I);
	output [15:0]O; 
	input [15:0]I;
	
	assign O[14:0] = I[15:1];
	assign O[15] = 0;

endmodule