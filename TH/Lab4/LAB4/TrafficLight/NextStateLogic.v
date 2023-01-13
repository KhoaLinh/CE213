module NextStateLogic (DONE, CurrentState, NextState);
input DONE;
input [2:0] CurrentState;
output [2:0] NextState;

//  DONE * (S0 +  S2 + S4)  + DONE'*(S1 + S3 +S5)
assign NextState[0] = DONE & (~CurrentState[2] & ~CurrentState[0] | ~CurrentState[1]& ~CurrentState[0])  
                    | ~DONE & (~CurrentState[2] & CurrentState[0] | ~CurrentState[1]& CurrentState[0]);
// DONE*(S1 + S2) + DONE'*(S2+S3)
assign NextState[1] = DONE & (~CurrentState[2] & ~CurrentState[1]& CurrentState[0] | ~CurrentState[2]& CurrentState[1]& ~CurrentState[0])  
                    | ~DONE & (~CurrentState[2] & CurrentState[1]);
// DONE*(S3 + S4) + DONE'*(S4+S5)
assign NextState[2] = DONE & (~CurrentState[2] & CurrentState[1]& CurrentState[0] | CurrentState[2]& ~CurrentState[1]& ~CurrentState[0])
                    | ~DONE & (CurrentState[2]&~CurrentState[1]);


endmodule