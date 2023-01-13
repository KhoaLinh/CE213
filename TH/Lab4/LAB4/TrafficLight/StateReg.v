module StateReg (CLK, RESET, CurrentState, NextState);
input CLK, RESET;
input[2:0] CurrentState;
output[2:0] NextState;

register reg0(CLK, RESET, 1'b1, CurrentState[0], NextState[0]);
register reg1(CLK, RESET, 1'b1, CurrentState[1], NextState[1]);
register reg2(CLK, RESET, 1'b1, CurrentState[2], NextState[2]);
endmodule