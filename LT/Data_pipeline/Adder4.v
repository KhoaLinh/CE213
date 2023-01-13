module Adder4(sum, carry, inA, inB);

	output [3:0]sum;
	output carry;
	input [3:0]inA, inB;
	
	Full_adder a0(sum[0], c0, inA[0], inB[0], 0);
	Full_adder a1(sum[1], c1, inA[1], inB[1], c0);
	Full_adder a2(sum[2], c2, inA[2], inB[2], c1);
	Full_adder a3(sum[3], carry, inA[3], inB[3], c2);
	
endmodule
	