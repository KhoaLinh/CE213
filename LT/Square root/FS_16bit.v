module FS_16bit (O, C, A, B);
	output [15:0]O; 
	output C;
	input [15:0]A;
	input [15:0]B;
	
	FS_1bit FS_16bit_Subtractor0(O[0],C0,A[0],B[0],0);
	FS_1bit FS_16bit_Subtractor1(O[1],C1,A[1],B[1],C0);
	FS_1bit FS_16bit_Subtractor2(O[2],C2,A[2],B[2],C1);
	FS_1bit FS_16bit_Subtractor3(O[3],C3,A[3],B[3],C2);
	FS_1bit FS_16bit_Subtractor4(O[4],C4,A[4],B[4],C3);
	FS_1bit FS_16bit_Subtractor5(O[5],C5,A[5],B[5],C4);
	FS_1bit FS_16bit_Subtractor6(O[6],C6,A[6],B[6],C5);
	FS_1bit FS_16bit_Subtractor7(O[7],C7,A[7],B[7],C6);
	FS_1bit FS_16bit_Subtractor8(O[8],C8,A[8],B[8],C7);
	FS_1bit FS_16bit_Subtractor9(O[9],C9,A[9],B[9],C8);
	FS_1bit FS_16bit_Subtractor10(O[10],C10,A[10],B[10],C9);
	FS_1bit FS_16bit_Subtractor11(O[11],C11,A[11],B[11],C10);
	FS_1bit FS_16bit_Subtractor12(O[12],C12,A[12],B[12],C11);
	FS_1bit FS_16bit_Subtractor13(O[13],C13,A[13],B[13],C12);
	FS_1bit FS_16bit_Subtractor14(O[14],C14,A[14],B[14],C13);
	FS_1bit FS_16bit_Subtractor15(O[15],C15,A[15],B[15],C14);
	assign C = C15;
	
endmodule