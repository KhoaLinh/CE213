module MUX5to1_1bit(o,a,b,c,d,e,sel);
	output o;
	input a,b,c,d,e;
	input [2:0]sel;
	
	MUX2to1 mux1(ab,a,b,sel[0]);
	MUX2to1 mux2(cd,c,d,sel[0]);
	MUX2to1 mux3(abcd,ab,cd,sel[1]);
	MUX2to1 mux4(o,abcd,e,sel[2]);

endmodule
