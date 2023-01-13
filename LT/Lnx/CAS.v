module CAS (control, A, B, cin, sum, cout);
input control, A, B, cin;
output sum, cout;
wire b;

xor xor0 (b, control, B);
FA FA0 (A, b, cin, sum, cout);
endmodule
