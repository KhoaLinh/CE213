module Tristate( IN, OE, OUT);
input [15:0] IN;
input OE;
output [15:0] OUT;
bufif0 b1(OUT[0], OE, IN[0]);
bufif0 b2(OUT[1], OE, IN[1]);
bufif0 b3(OUT[2], OE, IN[2]);
bufif0 b4(OUT[3], OE, IN[3]);
bufif0 b5(OUT[4], OE, IN[4]);
bufif0 b6(OUT[5], OE, IN[5]);
bufif0 b7(OUT[6], OE, IN[6]);
bufif0 b8(OUT[7], OE, IN[7]);
bufif0 b9(OUT[8], OE, IN[8]);
bufif0 b10(OUT[9], OE, IN[9]);
bufif0 b11(OUT[10], OE, IN[10]);
bufif0 b12(OUT[11], OE, IN[11]);
bufif0 b13(OUT[12], OE, IN[12]);
bufif0 b14(OUT[13], OE, IN[13]);
bufif0 b15(OUT[14], OE, IN[14]);
bufif0 b16(OUT[15], OE, IN[15]);
endmodule

