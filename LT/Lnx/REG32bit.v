module REG32bit(CLK, RESET, LOAD, reg_now, reg_next);
input CLK, RESET, LOAD;
input [31:0] reg_now;
output [31:0] reg_next;

REG16bit REG0 (CLK, RESET, LOAD, reg_now[15:0], reg_next[15:0]);
REG16bit REG1 (CLK, RESET, LOAD, reg_now[31:16], reg_next[31:16]);
endmodule
