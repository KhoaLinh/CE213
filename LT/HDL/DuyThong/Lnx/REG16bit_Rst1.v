module REG16bit_Rst1(CLK, RESET, LOAD, IN, Qnext);
    input CLK, RESET, LOAD;
    input [15:0] IN;
    output [15:0] Qnext;

    REG RE15 (CLK, RESET, LOAD, IN[15], Qnext[15]);
    REG RE14 (CLK, RESET, LOAD, IN[14], Qnext[14]);
    REG RE13 (CLK, RESET, LOAD, IN[13], Qnext[13]);
    REG RE12 (CLK, RESET, LOAD, IN[12], Qnext[12]);
    REG RE11 (CLK, RESET, LOAD, IN[11], Qnext[11]);
    REG RE10 (CLK, RESET, LOAD, IN[10], Qnext[10]);
    REG RE9 (CLK, RESET, LOAD, IN[9], Qnext[9]);
    REG_RS1 RE8 (CLK, RESET, LOAD, IN[8], Qnext[8]);
    REG RE7 (CLK, RESET, LOAD, IN[7], Qnext[7]);
    REG RE6 (CLK, RESET, LOAD, IN[6], Qnext[6]);
    REG RE5 (CLK, RESET, LOAD, IN[5], Qnext[5]);
    REG RE4 (CLK, RESET, LOAD, IN[4], Qnext[4]);
    REG RE3 (CLK, RESET, LOAD, IN[3], Qnext[3]);
    REG RE2 (CLK, RESET, LOAD, IN[2], Qnext[2]);
    REG RE1 (CLK, RESET, LOAD, IN[1], Qnext[1]);
    REG RE0 (CLK, RESET, LOAD, IN[0], Qnext[0]);  

endmodule
