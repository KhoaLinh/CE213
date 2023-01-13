module REG8bit (CLK, RESET, LOAD, reg_now, reg_next);
input RESET, CLK, LOAD;
input[7:0] reg_now;
output[7:0] reg_next;

REG 		reg7 (CLK, RESET, LOAD, reg_now[7], reg_next[7]);
REG 		reg6 (CLK, RESET, LOAD, reg_now[6], reg_next[6]);
REG 		reg5 (CLK, RESET, LOAD, reg_now[5], reg_next[5]);
REG 		reg4 (CLK, RESET, LOAD, reg_now[4], reg_next[4]);
REG 		reg3 (CLK, RESET, LOAD, reg_now[3], reg_next[3]);
REG 		reg2 (CLK, RESET, LOAD, reg_now[2], reg_next[2]);
REG 		reg1 (CLK, RESET, LOAD, reg_now[1], reg_next[1]);
REG		reg0 (CLK, RESET, LOAD, reg_now[0], reg_next[0]);
endmodule
