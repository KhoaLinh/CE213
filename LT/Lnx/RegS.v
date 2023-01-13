module RegS (CLK, RESET, LOAD, reg_now, reg_next);

input RESET, CLK, LOAD;
input [55:0] reg_now;
output [55:0] reg_next;

REG_RS1 REG00 (CLK, RESET, LOAD, reg_now[0], reg_next[0]);
REG     REG01 (CLK, RESET, LOAD, reg_now[1], reg_next[1]);
REG     REG02 (CLK, RESET, LOAD, reg_now[2], reg_next[2]);
REG     REG03 (CLK, RESET, LOAD, reg_now[3], reg_next[3]);
endmodule
