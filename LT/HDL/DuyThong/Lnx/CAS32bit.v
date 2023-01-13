module CAS32bit(control, A, B , cin, result, cout);
    input [31:0] A, B;
    input control, cin;
    output [31:0] result;
    output cout;
    wire cin1;

    CAS16bit CAS0 (control, A[15:0], B[15:0], cin, result[15:0], cin1);
    CAS16bit CAS1 (control, A[31:16], B[31:16], cin1, result[31:16], cout);
endmodule