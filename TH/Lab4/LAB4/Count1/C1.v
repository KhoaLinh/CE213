module C1(W, CLK, RESET, Z);
input W, CLK, RESET;
output Z;
wire [2:0] StateReg, NextState, CurrentState;

assign CurrentState = StateReg;
NextStateLogic NSL(W, CurrentState, NextState);
StateReg SR(CLK, RESET, NextState, StateReg);
assign Z = StateReg[2] & ~StateReg[1] & ~StateReg[0];
endmodule