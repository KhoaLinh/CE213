module Controller_Decoder (OE, Op1, Op2, R5, R4, R3, R2, R1, A, B, C, D);
	
	output [11:0]OE;
	output [1:0]Op1;
	output [1:0]Op2;
	output R5, R4, R3, R2, R1;
	input A, B, C, D;
	
	and and0(a0, A, ~B, ~C);
	and and1(a1, ~A, ~B, C, D);
	and and2(a2, ~A, B, ~C, ~D);
	or or1(Op1[1], a0, a1, a2);
	
	and and3(a3, ~B, ~C, D);
	and and4(a4, ~A, C, ~D);
	and and5(a5, ~A, B, ~D);
	and and6(a6, ~A, B, C);
	or or2(Op1[0], a3, a4, a5, a6);
	
	and and7(a7,  ~A, B, C, ~D);
	and and8(a8,   A , ~B, ~C,~D);
	or or3(Op2[1], a7,a8);
	
	and and9(a9, ~A, B, C, D);
	and and10(a10, A, ~B, ~C, ~D);
	or or4(Op2[0], a9, a10);
	
	and and40(a40, ~A, B ,D);
	and and11(a11, ~A, B ,C);
	or or5(OE[11], a40, a11);
	
	and and12(OE[10], A, ~B, ~C, ~D);
	
	and and13(a13, ~A, B, D);
	and and14(a14, ~A, B, C);
	or or6(OE[9], a13, a14);
	
	and and15(OE[8], ~A, B, C, ~D);
	
	and and16(OE[7], ~A, B, D);

	and and17(OE[6], ~A, B, ~C, ~D);
	
	and and18(a18, ~A, ~B, ~C, ~D);
	and and19(a19, ~A, B, ~C, D);
	or or7(OE[5], a18, a19);
	
	and and20(a20, ~A,~B, C, ~D);
	and and21(a21, ~A, B, C, D);
	or or8(OE[4], a20, a21);
	
	and and22(a22, ~A, ~B, ~C, D);
	and and23(a23, ~A, B, C, ~D);
	or or9(OE[3], a22, a23);
	
	or or10(OE[2], a18, a19);
	
	and and24(a24, ~A, ~B, C);
	and and25(a25, ~A, C, D);
	and and26(a26, A, ~B, ~C,);
	and and27(a27, ~A, B, ~C, ~D);
	or or11(OE[1], a24, a25, a26, a27);
	
	and and28(a28, ~A, ~B, ~C, D);
	and and29(a29, ~A, B, C, ~D);
	or or12(OE[0], a28, a29);
	
	and and30(R5, ~A, ~B, C, D);

	and and31(R4, ~A, B, ~C, ~D);
	
	and and32(R3, ~A, B);
	
	and and33(R2, ~A, ~B, ~D);
	
	and and34(R1, ~A, ~B, ~C);

endmodule
