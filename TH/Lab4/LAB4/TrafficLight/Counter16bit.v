module Counter16bit(CLK, RESET, count_now, count_next);
input CLK, RESET;
input [15:0] count_now;
output[15:0] count_next;
wire[15:0] count_n;

assign count_n = count_now + 1'b1;
register16bit reg16(CLK, RESET, 1'b1, count_n, count_next);
endmodule 