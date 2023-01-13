module NextStateLogic (W, CurrentState, NextState);
input W;
input [2:0] CurrentState;
output [2:0] NextState;

// W * A'C'
assign NextState[0] = W & ( ~CurrentState[2] & ~CurrentState[0]);
// W * (A'B'C + A'BC')
assign NextState[1] = W & ( ~CurrentState[2] & ~CurrentState[1] &CurrentState[0] | ~CurrentState[2] & CurrentState[1] & ~CurrentState[0]);
// W * (A'BC + AB'C')
assign NextState[2] = W & ( ~CurrentState[2] & CurrentState[1] & CurrentState[0] | CurrentState[2] & ~CurrentState[1] & ~CurrentState[0]);
endmodule