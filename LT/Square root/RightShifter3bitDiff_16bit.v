module RightShifter3bitDiff_16bit (O, I);
	output [15:0]O; 
	input [15:0]I;
	
	assign O[12:0] = I[15:3];
	assign O[15] = 0;
	assign O[14] = 0;
	assign O[13] = 0;

endmodule