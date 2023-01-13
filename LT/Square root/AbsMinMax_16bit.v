module AbsMinMax_16bit (M, A, B, Op);
	
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
	
	Abs_16bit AbsAU1(n1, B);
	Min Min1AU1 (n2, A, B);
	Max Max1AU1 (n3, A, B);
	Tristate_16bit tristate (n0, A, Op[0]);
	Mux_2to1_16bit Mux1AU1 (m1, n0, n1, Op[0]);
	Mux_2to1_16bit Mux2AU1 (m2, n2, n3, Op[0]);
	Mux_2to1_16bit Mux3AU1 (M, m1, m2, Op[1]);
	
endmodule