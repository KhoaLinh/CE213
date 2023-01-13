module Datapath (O, R1, R2, R3, R4, R5, AU1, AU2, S1, S2, A, B, OE, Op1, Op2, Load, Clk);
	
	output [15:0] O;
	output [15:0] R1;
	output [15:0] R2;
	output [15:0] R3;
	output [15:0] R4;
	output [15:0] R5;
	output [15:0] AU1;
	output [15:0] AU2;
	output [15:0] S1;
	output [15:0] S2;
	
	input [15:0] A;
	input [15:0] B;
	input [11:0] OE;
	input [1:0] Op1;
	input [1:0] Op2;
	input [4:0] Load;
	input Clk;
	
	wire [15:0] Bus1;
	wire [15:0] Bus2;
	wire [15:0] Bus3;
	wire [15:0] Bus4;
	wire [15:0] Bus5;
	wire [15:0] Bus6;
	wire [15:0] Bus7;
	wire [15:0] r1;
	wire [15:0] r2;
	wire [15:0] r3;
	wire [15:0] r4;
	wire [15:0] r5;
	wire [15:0] a1;
	wire [15:0] a2;
	wire [15:0] s1;
	wire [15:0] s2;
	
	Tristate_16bit Tri0 (Bus2, r1, OE[0]);
	Tristate_16bit Tri1 (Bus2, r2, OE[1]);
	Tristate_16bit Tri2 (Bus3, A, OE[2]);
	Tristate_16bit Tri3 (Bus3, a1, OE[3]);
	Tristate_16bit Tri4 (Bus4, a1, OE[4]);
	Tristate_16bit Tri5 (Bus4, B, OE[5]);
	Tristate_16bit Tri6 (Bus7, s2, OE[6]);
	Tristate_16bit Tri7 (Bus5, r4, OE[7]);
	Tristate_16bit Tri8 (Bus5, r5, OE[8]);
	Tristate_16bit Tri9 (Bus6, r3, OE[9]);
	Tristate_16bit Tri10 (O, r3, OE[10]);
	Tristate_16bit Tri11 (Bus7, a2, OE[11]);
	
	Register_16bit Reg1 (r1, Bus3, Load[0], Clk);
	Register_16bit Reg2 (r2, Bus4, Load[1], Clk);
	Register_16bit Reg3 (r3, Bus7, Load[2], Clk);
	Register_16bit Reg4 (r4, a1, Load[3], Clk);
	Register_16bit Reg5 (r5, s1, Load[4], Clk);
	
	AbsMinMax_16bit au1 (a1, r1, Bus2, Op1);
	AddSubMax_16bit au2 (a2, Bus5, Bus6, Op2);
	
	RightShifter1bitDiff_16bit Shift1 (s1, a1);
	RightShifter3bitDiff_16bit Shift3 (s2, a1);
	
	assign R1[15:0] = r1[15:0];
	assign R2[15:0] = r2[15:0];
	assign R3[15:0] = r3[15:0];
	assign R4[15:0] = r4[15:0];
	assign R5[15:0] = r5[15:0];
	assign AU1[15:0] = a1[15:0];
	assign AU2[15:0] = a2[15:0];
	assign S1[15:0] = s1[15:0];
	assign S2[15:0] = s2[15:0];
	
endmodule