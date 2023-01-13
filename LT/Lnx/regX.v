module regX (CLK, RESET, LOAD, sign_now, data_now, sign_next, data_next);
input RESET, CLK, LOAD, sign_now;
input [14:0] data_now;
output [14:0] data_next;
output sign_next;

REG8bit REG07 (CLK, RESET, LOAD, data_now[7:0], data_next[7:0]);
REG8bit REG15 (CLK, RESET, LOAD, {sign_now, data_now[14:8]}, {sign_next, data_next[14:8]});
endmodule
