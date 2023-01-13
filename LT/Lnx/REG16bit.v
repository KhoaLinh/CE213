module REG16bit(CLK, RESET, LOAD, reg_now, reg_next);
input CLK, RESET, LOAD;
input [15:0] reg_now;
output [15:0] reg_next;

REG8bit REG0 (CLK, RESET, LOAD, reg_now[7:0], reg_next[7:0]);
REG8bit REG1 (CLK, RESET, LOAD, reg_now[15:8], reg_next[15:8]);
endmodule

