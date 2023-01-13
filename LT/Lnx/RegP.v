module RegP(CLK, RESET, LOAD, reg_now, reg_next);

input CLK, RESET, LOAD;
input [55:0] reg_now;
output [55:0] reg_next;

REG8bit REG07 (CLK, RESET, LOAD, reg_now[7:0], reg_next[7:0]);
REG8bit REG15 (CLK, RESET, LOAD, reg_now[15:8], reg_next[15:8]);
REG8bit REG23 (CLK, RESET, LOAD, reg_now[23:16], reg_next[23:16]);
REG8bit REG31 (CLK, RESET, LOAD, reg_now[31:24], reg_next[31:24]);
REG8bit REG39 (CLK, RESET, LOAD, reg_now[39:32], reg_next[39:32]);
REG8bit REG47 (CLK, RESET, LOAD, reg_now[47:40], reg_next[47:40]);
REG8bit REG55 (CLK, RESET, LOAD, reg_now[55:48], reg_next[55:48]);
endmodule
