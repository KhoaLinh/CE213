module Controller_D (O3,O2,O1,O0,A,B, C, D, E, F);
    output O3,O2,O1,O0;
    input A, B,C, D, E, F;
    Controller_D3 D3 (O3, A, C, D, E, F);
    Controller_D2 D2 (O2, A, C, D, E, F);
    Controller_D1 D1 (O1, A, C, E, F);
    Controller_D0 D0 (O0,A,B, C, D, E, F);

endmodule