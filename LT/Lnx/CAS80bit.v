module CAS80bit( control, A, B, cin, result, cout);
    input control;
	input[79:0]A;
	input [79:0]B;
	input cin;
    output [79:0] result, cout;
    wire cin1, cin2, cin3, cin4, cin5, cin6, cin7, cin8, cin9;

    CAS8bit CAS0 (control, A[7:0], B[7:0], cin, result[7:0], cin1);
    CAS8bit CAS1 (control, A[15:8], B[15:8], cin1, result[15:8], cin2);
    CAS8bit CAS2 (control, A[23:16], B[23:16], cin2, result[23:16], cin3);
    CAS8bit CAS3 (control, A[31:24], B[31:24], cin3, result[31:24], cin4);
    CAS8bit CAS4 (control, A[39:32], B[39:32], cin4, result[39:32], cin5);
    CAS8bit CAS5 (control, A[47:40], B[47:40], cin5, result[47:40], cin6);
    CAS8bit CAS6 (control, A[55:48], B[55:48], cin6, result[55:48], cin7);
    CAS8bit CAS7 (control, A[63:56], B[63:56], cin7, result[63:56], cin8);
    CAS8bit CAS8 (control, A[71:64], B[71:64], cin8, result[71:64], cin9);
    CAS8bit CAS9 (control, A[79:72], B[79:72], cin9, result[79:72], cout);
endmodule