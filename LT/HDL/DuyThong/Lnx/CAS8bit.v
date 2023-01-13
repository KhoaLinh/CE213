module CAS8bit (control, A, B, cin, result, cout);
input control, cin;
input[7:0] A, B;
output[7:0] result;
output cout;
wire  cin1,cin2,cin3,cin4,cin5,cin6,cin7;

CAS CAS0 (control, A[0], B[0], cin,  result[0], cin1);
CAS CAS1 (control, A[1], B[1], cin1, result[1], cin2);
CAS CAS2 (control, A[2], B[2], cin2, result[2], cin3);
CAS CAS3 (control, A[3], B[3], cin3, result[3], cin4);
CAS CAS4 (control, A[4], B[4], cin4, result[4], cin5);
CAS CAS5 (control, A[5], B[5], cin5, result[5], cin6);
CAS CAS6 (control, A[6], B[6], cin6, result[6], cin7);
CAS CAS7 (control, A[7], B[7], cin7, result[7], cout);

endmodule
