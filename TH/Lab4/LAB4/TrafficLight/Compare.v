module Compare (A, B, DONE);
input[15:0] A, B;
output DONE;
wire[15:0] C;

xor xor15 (C[15], A[15], B[15]);
xor xor14 (C[14], A[14], B[14]);
xor xor13 (C[13], A[13], B[13]);
xor xor12 (C[12], A[12], B[12]);
xor xor11 (C[11], A[11], B[11]);
xor xor10 (C[10], A[10], B[10]);
xor xor9 (C[9], A[9], B[9]);
xor xor8 (C[8], A[8], B[8]);
xor xor7 (C[7], A[7], B[7]);
xor xor6 (C[6], A[6], B[6]);
xor xor5 (C[5], A[5], B[5]);
xor xor4 (C[4], A[4], B[4]);
xor xor3 (C[3], A[3], B[3]);
xor xor2 (C[2], A[2], B[2]);
xor xor1 (C[1], A[1], B[1]);
xor xor0 (C[0], A[0], B[0]);

assign DONE = !(C[15] | C[14] | C[13] | C[12] | C[11] |
             C[10] | C[9] | C[8] | C[7] | C[6] | C[5] | C[4] | C[3] | C[2] | C[1] | C[0]);
endmodule