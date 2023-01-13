module register(CLK, RESET, LOAD, IN, Qnext);
input CLK, RESET, LOAD, IN;
output Qnext;
wire Q,zero;

assign zero = 1'b0;
assign Q = (LOAD)? IN: Qnext;
REG reg0(Q, RESET,zero,CLK, Qnext);
endmodule
