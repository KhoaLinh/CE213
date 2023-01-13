module Machine(CLK, RESET, stage_now, stage_next);
input CLK, RESET;
input [3:0] stage_now;
output [3:0] stage_next;
wire one;

assign one = 1'b1;
REG D3(CLK, RESET, one, stage_now[3], stage_next[3]);
REG D2(CLK, RESET, one, stage_now[2], stage_next[2]);
REG D1(CLK, RESET, one, stage_now[1], stage_next[1]);
REG D0(CLK, RESET, one, stage_now[0], stage_next[0]);

endmodule
