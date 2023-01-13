module Add16(o,carry,a,b);
	output [15:0]o;
	output carry;
	input [15:0]a;
	input [15:0]b;
	
	Full_adder add16_adder0(o[0],c0,a[0],b[0],0);
	Full_adder add16_adder1(o[1],c1,a[1],b[1],c0);
	Full_adder add16_adder2(o[2],c2,a[2],b[2],c1);
	Full_adder add16_adder3(o[3],c3,a[3],b[3],c2);
	Full_adder add16_adder4(o[4],c4,a[4],b[4],c3);
	Full_adder add16_adder5(o[5],c5,a[5],b[5],c4);
	Full_adder add16_adder6(o[6],c6,a[6],b[6],c5);
	Full_adder add16_adder7(o[7],c7,a[7],b[7],c6);
	Full_adder add16_adder8(o[8],c8,a[8],b[8],c7);
	Full_adder add16_adder9(o[9],c9,a[9],b[9],c8);
	Full_adder add16_adder10(o[10],c10,a[10],b[10],c9);
	Full_adder add16_adder11(o[11],c11,a[11],b[11],c10);
	Full_adder add16_adder12(o[12],c12,a[12],b[12],c11);
	Full_adder add16_adder13(o[13],c13,a[13],b[13],c12);
	Full_adder add16_adder14(o[14],c14,a[14],b[14],c13);
	Full_adder add16_adder15(o[15],carry,a[15],b[15],c14);

endmodule
