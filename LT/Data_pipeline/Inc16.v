module Inc16(o,a);
	output [15:0]o;
	input [15:0]a;
	
	Full_adder add16_adder0(o[0],c0,a[0],0,0);
	Full_adder add16_adder1(o[1],c1,a[1],0,c0);
	Full_adder add16_adder2(o[2],c2,a[2],0,c1);
	Full_adder add16_adder3(o[3],c3,a[3],0,c2);
	Full_adder add16_adder4(o[4],c4,a[4],0,c3);
	Full_adder add16_adder5(o[5],c5,a[5],0,c4);
	Full_adder add16_adder6(o[6],c6,a[6],0,c5);
	Full_adder add16_adder7(o[7],c7,a[7],0,c6);
	Full_adder add16_adder8(o[8],c8,a[8],0,c7);
	Full_adder add16_adder9(o[9],c9,a[9],0,c8);
	Full_adder add16_adder10(o[10],c10,a[10],0,c9);
	Full_adder add16_adder11(o[11],c11,a[11],0,c10);
	Full_adder add16_adder12(o[12],c12,a[12],0,c11);
	Full_adder add16_adder13(o[13],c13,a[13],0,c12);
	Full_adder add16_adder14(o[14],c14,a[14],0,c13);
	Full_adder add16_adder15(o[15],c15,a[15],0,c14);

endmodule
