module NextStageLogic(CurrentState, Start, Flag, Ready, Next);
input [3:0] CurrentState;
input Start,Flag,Ready;
output [3:0] Next;


// S0 =   ~ CurrentState[3] ~CurrentState[2] ~CurrentState[1] ~CurrentState[0]   0000
// S1 =   ~ CurrentState[3] ~CurrentState[2] ~CurrentState[1] CurrentState[0]    0001
// S2 =   ~ CurrentState[3] ~CurrentState[2] CurrentState[1] ~CurrentState[0]    0010
// S3 =   ~ CurrentState[3] ~CurrentState[2] CurrentState[1] CurrentState[0]     0011
// S4 =   ~ CurrentState[3] CurrentState[2] ~CurrentState[1] ~CurrentState[0]    0100
// S5 =   ~ CurrentState[3] CurrentState[2] ~CurrentState[1] CurrentState[0]    0101
// S6 =   ~ CurrentState[3] CurrentState[2] CurrentState[1] ~CurrentState[0]    0110
// S7 =   ~ CurrentState[3] CurrentState[2] CurrentState[1] CurrentState[0]     0111
// S8 =    CurrentState[3] ~CurrentState[2] ~CurrentState[1] ~CurrentState[0]   1000



// Q0 = S0.Start + S2.1 + S3.Ready' + S4.1 + S5.Ready' + S6.1
assign Next[0] = ~CurrentState[3] & ~CurrentState[2] & ~CurrentState[1] & ~CurrentState[0] & Start
               | ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & ~CurrentState[0] & 1'b1
               | ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & CurrentState[0] & ~Ready
               | ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & ~CurrentState[0] & 1'b1
               | ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & CurrentState[0] & ~Ready
               | ~CurrentState[3] & CurrentState[2] & CurrentState[1] & ~CurrentState[0] & 1'b1;

// Q1 = S1.1 + S2.1 + S3.Ready' + S5.Ready + S6.1
assign Next[1] = ~CurrentState[3] & ~CurrentState[2] & ~CurrentState[1] & CurrentState[0] & 1'b1
               | ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & ~CurrentState[0] & 1'b1
               | ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & CurrentState[0] & ~Ready
               | ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & CurrentState[0] & Ready
               | ~CurrentState[3] & CurrentState[2] & CurrentState[1] & ~CurrentState[0] & 1'b1;

// Q2 = S3.Ready + S4.1 + S5.1 + S6.1 + S7.Flag' 
assign Next[2] = ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & CurrentState[0] & Ready
               | ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & ~CurrentState[0] & 1'b1
               | ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & CurrentState[0] & 1'b1
               | ~CurrentState[3] & CurrentState[2] & CurrentState[1] & ~CurrentState[0] & 1'b1
               | ~CurrentState[3] & CurrentState[2] & CurrentState[1] & CurrentState[0] & ~Flag;

// Q3 = S7.Flag + S8.1
assign Next[3] = ~CurrentState[3] & CurrentState[2] & CurrentState[1] & CurrentState[0] & Flag
               | CurrentState[3] & ~CurrentState[2] & ~CurrentState[1] & ~CurrentState[0] & 1'b1;

endmodule