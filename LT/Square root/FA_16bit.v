module FA_16bit (O, A, B);
	output [15:0]O;
	input [15:0]A;
	input [15:0]B;
	
	FA_1bit FA_16bit_Adder0(O[0],C0,A[0],B[0],0);
	FA_1bit FA_16bit_Adder1(O[1],C1,A[1],B[1],C0);
	FA_1bit FA_16bit_Adder2(O[2],C2,A[2],B[2],C1);
	FA_1bit FA_16bit_Adder3(O[3],C3,A[3],B[3],C2);
	FA_1bit FA_16bit_Adder4(O[4],C4,A[4],B[4],C3);
	FA_1bit FA_16bit_Adder5(O[5],C5,A[5],B[5],C4);
	FA_1bit FA_16bit_Adder6(O[6],C6,A[6],B[6],C5);
	FA_1bit FA_16bit_Adder7(O[7],C7,A[7],B[7],C6);
	FA_1bit FA_16bit_Adder8(O[8],C8,A[8],B[8],C7);
	FA_1bit FA_16bit_Adder9(O[9],C9,A[9],B[9],C8);
	FA_1bit FA_16bit_Adder10(O[10],C10,A[10],B[10],C9);
	FA_1bit FA_16bit_Adder11(O[11],C11,A[11],B[11],C10);
	FA_1bit FA_16bit_Adder12(O[12],C12,A[12],B[12],C11);
	FA_1bit FA_16bit_Adder13(O[13],C13,A[13],B[13],C12);
	FA_1bit FA_16bit_Adder14(O[14],C14,A[14],B[14],C13);
	FA_1bit FA_16bit_Adder15(O[15],C15,A[15],B[15],C14);

endmodule