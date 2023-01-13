module REG16bit(CLK, RESET, LOAD, reg_now, reg_next);
input CLK, RESET, LOAD;
input [15:0] reg_now;
output [15:0] reg_next;

REG REG0(CLK, RESET, LOAD, reg_now[0], reg_next[0]);
REG REG1(CLK, RESET, LOAD, reg_now[1], reg_next[1]);
REG REG2(CLK, RESET, LOAD, reg_now[2], reg_next[2]);
REG REG3(CLK, RESET, LOAD, reg_now[3], reg_next[3]);
REG REG4(CLK, RESET, LOAD, reg_now[4], reg_next[4]);
REG REG5(CLK, RESET, LOAD, reg_now[5], reg_next[5]);
REG REG6(CLK, RESET, LOAD, reg_now[6], reg_next[6]);
REG REG7(CLK, RESET, LOAD, reg_now[7], reg_next[7]);
REG REG8(CLK, RESET, LOAD, reg_now[8], reg_next[8]);
REG REG9(CLK, RESET, LOAD, reg_now[9], reg_next[9]);
REG REG10(CLK, RESET, LOAD, reg_now[10], reg_next[10]);
REG REG11(CLK, RESET, LOAD, reg_now[11], reg_next[11]);
REG REG12(CLK, RESET, LOAD, reg_now[12], reg_next[12]);
REG REG13(CLK, RESET, LOAD, reg_now[13], reg_next[13]);
REG REG14(CLK, RESET, LOAD, reg_now[14], reg_next[14]);
REG REG15(CLK, RESET, LOAD, reg_now[15], reg_next[15]);

endmodule

