module CAS16bit(control, A, B , cin, result, cout);
    input [15:0] A, B;
    input control, cin;
    output [15:0] result;
    output cout;
    wire cin1, cin2;

    CAS8bit CAS0 (control, A[7:0], B[7:0], cin, result[7:0], cin1);
    CAS8bit CAS1 (control, A[15:8], B[15:8], cin1, result[15:8], cin2);
endmodule

