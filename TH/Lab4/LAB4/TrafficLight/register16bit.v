module register16bit (CLK, RESET, LOAD, reg_now, reg_next);
input RESET, CLK, LOAD;
input[15:0] reg_now;
output[15:0] reg_next;

register 		reg15 (CLK, RESET, LOAD, reg_now[15], reg_next[15]);
register 		reg14 (CLK, RESET, LOAD, reg_now[14], reg_next[14]);
register 		reg13 (CLK, RESET, LOAD, reg_now[13], reg_next[13]);
register 		reg12 (CLK, RESET, LOAD, reg_now[12], reg_next[12]);
register 		reg11 (CLK, RESET, LOAD, reg_now[11], reg_next[11]);
register 		reg10 (CLK, RESET, LOAD, reg_now[10], reg_next[10]);
register 		reg9 (CLK, RESET, LOAD, reg_now[9], reg_next[9]);
register 		reg8 (CLK, RESET, LOAD, reg_now[8], reg_next[8]);
register 		reg7 (CLK, RESET, LOAD, reg_now[7], reg_next[7]);
register 		reg6 (CLK, RESET, LOAD, reg_now[6], reg_next[6]);
register 		reg5 (CLK, RESET, LOAD, reg_now[5], reg_next[5]);
register 		reg4 (CLK, RESET, LOAD, reg_now[4], reg_next[4]);
register 		reg3 (CLK, RESET, LOAD, reg_now[3], reg_next[3]);
register 		reg2 (CLK, RESET, LOAD, reg_now[2], reg_next[2]);
register 		reg1 (CLK, RESET, LOAD, reg_now[1], reg_next[1]);
register 		reg0 (CLK, RESET, LOAD, reg_now[0], reg_next[0]);

endmodule