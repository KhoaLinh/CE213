module CAS17bit(control, A, B , cin, result, cout);
    input [16:0] A, B;
    input control, cin;
    output [16:0] result;
    output cout;
    wire cin1, cin2, cin3, cin4, cin5, cin6, cin7, cin8, cin9, cin10, cin11, cin12, cin13, cin14, cin15, cin16;

    CAS CAS0 (control, A[0], B[0], cin, result[0], cin1);
    CAS CAS1 (control, A[1], B[1], cin1, result[1], cin2);
    CAS CAS2 (control, A[2], B[2], cin2, result[2], cin3);
    CAS CAS3 (control, A[3], B[3], cin3, result[3], cin4);
    CAS CAS4 (control, A[4], B[4], cin4, result[4], cin5);
    CAS CAS5 (control, A[5], B[5], cin5, result[5], cin6);
    CAS CAS6 (control, A[6], B[6], cin6, result[6], cin7);
    CAS CAS7 (control, A[7], B[7], cin7, result[7], cin8);
    CAS CAS8 (control, A[8], B[8], cin8, result[8], cin9);
    CAS CAS9 (control, A[9], B[9], cin9, result[9], cin10);
    CAS CAS10 (control, A[10], B[10], cin10, result[10], cin11);
    CAS CAS11 (control, A[11], B[11], cin11, result[11], cin12);
    CAS CAS12 (control, A[12], B[12], cin12, result[12], cin13);
    CAS CAS13 (control, A[13], B[13], cin13, result[13], cin14);
    CAS CAS14 (control, A[14], B[14], cin14, result[14], cin15);
    CAS CAS15 (control, A[15], B[15], cin15, result[15], cin16);
    CAS CAS16 (control, A[16], B[16], cin16, result[16], cout);
endmodule