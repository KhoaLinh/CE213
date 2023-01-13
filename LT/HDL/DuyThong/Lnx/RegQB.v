module RegQB(CLK, RESET, LOAD, reg_now, reg_next);
input CLK, RESET, LOAD;
input [23:0] reg_now;
output [23:0] reg_next;

REG8bit REG07 (CLK, RESET, LOAD, reg_now[7:0], reg_next[7:0]);
REG8bit REG15 (CLK, RESET, LOAD, reg_now[15:8], reg_next[15:8]);
REG8bit REG23 (CLK, RESET, LOAD, reg_now[23:16], reg_next[23:16]);
endmodule
