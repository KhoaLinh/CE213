module AddSubMax_16bit (M, A, B, Op);
	
	output [15:0]M;
	input [15:0]A;
	input [15:0]B;
	input [1:0]Op;
	
	wire [15:0]n0;
	wire [15:0]n1;
	wire [15:0]n2;
	wire [15:0]n3;
	wire [15:0]m1;
	wire [15:0]m2;
	
	FA_16bit AddAU2(n1, A, B);
	FS_16bit SubAU2(n2, C, A, B);
	Max Max1AU2 (n3, A, B);
	Tristate_16bit tristate (n0, A, Op[0]);
	Mux_2to1_16bit Mux1AU2 (m1, n0, n1, Op[0]);
	Mux_2to1_16bit Mux2AU2 (m2, n2, n3, Op[0]);
	Mux_2to1_16bit Mux3AU2 (M, m1, m2, Op[1]);
	
endmodule