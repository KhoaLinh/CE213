// sub
module SUB(A, B, result);
	input[15:0]A;
	input [15:0]B;
	wire control, cin; 
   wire [15:0] cout;
    output [15:0] result;
    wire cin1, cin2, cin3, cin4, cin5, cin6, cin7, cin8, cin9;
    assign control = 1'b1;
    assign cin = 1'b1;

    CAS8bit CAS0 (control, A[7:0], B[7:0], cin, result[7:0], cin1);
    CAS8bit CAS1 (control, A[15:8], B[15:8], cin1, result[15:8], cin2);
endmodule