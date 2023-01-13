module DIV (Dividend, Divisor, Quotient);
input [24:0] Dividend;
input [16:0] Divisor;
output [8:0] Quotient;
wire [16:0] rem1, rem2, rem3, rem4, rem5, rem6, rem7, rem8, rem9, rem10, rem11, rem12, rem13, rem14, rem15, rem16, rem17;
wire one, zero;

assign one = 1'b1;
assign zero = 1'b0;

CAS17bit CAS0 (one, Dividend[24:8], Divisor, one, rem1,);
CAS17bit CAS1 (~rem1[16], {rem1[15:0],Dividend[7]}, Divisor, ~rem1[16], rem2,);
CAS17bit CAS2 (~rem2[16], {rem2[15:0],Dividend[6]}, Divisor, ~rem2[16], rem3,);
CAS17bit CAS3 (~rem3[16], {rem3[15:0],Dividend[5]}, Divisor, ~rem3[16], rem4,);
CAS17bit CAS4 (~rem4[16], {rem4[15:0],Dividend[4]}, Divisor, ~rem4[16], rem5,);
CAS17bit CAS5 (~rem5[16], {rem5[15:0],Dividend[3]}, Divisor, ~rem5[16], rem6,);
CAS17bit CAS6 (~rem6[16], {rem6[15:0],Dividend[2]}, Divisor, ~rem6[16], rem7,);
CAS17bit CAS7 (~rem7[16], {rem7[15:0],Dividend[1]}, Divisor, ~rem7[16], rem8,);
CAS17bit CAS8 (~rem8[16], {rem8[15:0],Dividend[0]}, Divisor, ~rem8[16], rem9,);



assign Quotient[8] = ~rem1[16];
assign Quotient[7] = ~rem2[16];
assign Quotient[6] = ~rem3[16];
assign Quotient[5] = ~rem4[16];
assign Quotient[4] = ~rem5[16];
assign Quotient[3] = ~rem6[16];
assign Quotient[2] = ~rem7[16];
assign Quotient[1] = ~rem8[16];
assign Quotient[0] = ~rem9[16];
endmodule
