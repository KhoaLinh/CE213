module COUNTER(CLK, RESET, ENABLE, count_now, count_next);
input CLK, ENABLE, RESET;
input [15:0] count_now;
output [15:0] count_next;
wire [16:0] count_n, zero17;
wire zero;

assign zero = 1'b0;
assign zero17 = 17'b00000001000000000;
CAS17bit ADD (zero, {zero,count_now}, zero17, zero, count_n);

REG REG15 (CLK, RESET, ENABLE, count_n[15], count_next[15]);
REG REG14 (CLK, RESET, ENABLE, count_n[14], count_next[14]);
REG REG13 (CLK, RESET, ENABLE, count_n[13], count_next[13]);
REG REG12 (CLK, RESET, ENABLE, count_n[12], count_next[12]);
REG REG11 (CLK, RESET, ENABLE, count_n[11], count_next[11]);
REG REG10 (CLK, RESET, ENABLE, count_n[10], count_next[10]);
REG_RS1 REG9 (CLK, RESET, ENABLE, count_n[9], count_next[9]);
REG_RS1 REG8 (CLK, RESET, ENABLE, count_n[8], count_next[8]);
REG REG7 (CLK, RESET, ENABLE, count_n[7], count_next[7]);
REG REG6 (CLK, RESET, ENABLE, count_n[6], count_next[6]);
REG REG5 (CLK, RESET, ENABLE, count_n[5], count_next[5]);
REG REG4 (CLK, RESET, ENABLE, count_n[4], count_next[4]);
REG REG3 (CLK, RESET, ENABLE, count_n[3], count_next[3]);
REG REG2 (CLK, RESET, ENABLE, count_n[2], count_next[2]);
REG REG1 (CLK, RESET, ENABLE, count_n[1], count_next[1]);
REG REG0 (CLK, RESET, ENABLE, count_n[0], count_next[0]);

endmodule
