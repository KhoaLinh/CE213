module Sub16(o,carry,a,b);
	output [15:0]o;
	output carry;
	input [15:0]a;
	input [15:0]b;
	
	wire [15:0]nb;
	not not_gate16[15:0](nb,b);
	
	Full_adder sub16_adder0(o[0],c0,a[0],nb[0],1);
	Full_adder sub16_adder1(o[1],c1,a[1],nb[1],c0);
	Full_adder sub16_adder2(o[2],c2,a[2],nb[2],c1);
	Full_adder sub16_adder3(o[3],c3,a[3],nb[3],c2);
	Full_adder sub16_adder4(o[4],c4,a[4],nb[4],c3);
	Full_adder sub16_adder5(o[5],c5,a[5],nb[5],c4);
	Full_adder sub16_adder6(o[6],c6,a[6],nb[6],c5);
	Full_adder sub16_adder7(o[7],c7,a[7],nb[7],c6);
	Full_adder sub16_adder8(o[8],c8,a[8],nb[8],c7);
	Full_adder sub16_adder9(o[9],c9,a[9],nb[9],c8);
	Full_adder sub16_adder10(o[10],c10,a[10],nb[10],c9);
	Full_adder sub16_adder11(o[11],c11,a[11],nb[11],c10);
	Full_adder sub16_adder12(o[12],c12,a[12],nb[12],c11);
	Full_adder sub16_adder13(o[13],c13,a[13],nb[13],c12);
	Full_adder sub16_adder14(o[14],c14,a[14],nb[14],c13);
	Full_adder sub16_adder15(o[15],carry,a[15],nb[15],c14);

endmodule
