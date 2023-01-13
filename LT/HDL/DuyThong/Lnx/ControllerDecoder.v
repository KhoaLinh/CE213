module ControllerDecoder(RESET, ENABLE, MUX, SEL, LOAD, VALID, CurrentState);
input [3:0]CurrentState;
output RESET, ENABLE, MUX, SEL, LOAD, VALID;

wire [1:0]MUX;
wire [8:0]SEL;
wire [6:0]LOAD;

// S0 =   ~ CurrentState[3] ~CurrentState[2] ~CurrentState[1] ~CurrentState[0]   0000
// S1 =   ~ CurrentState[3] ~CurrentState[2] ~CurrentState[1] CurrentState[0]    0001
// S2 =   ~ CurrentState[3] ~CurrentState[2] CurrentState[1] ~CurrentState[0]    0010
// S3 =   ~ CurrentState[3] ~CurrentState[2] CurrentState[1] CurrentState[0]     0011
// S4 =   ~ CurrentState[3] CurrentState[2] ~CurrentState[1] ~CurrentState[0]    0100
// S5 =   ~ CurrentState[3] CurrentState[2] ~CurrentState[1] CurrentState[0]    0101
// S6 =   ~ CurrentState[3] CurrentState[2] CurrentState[1] ~CurrentState[0]    0110
// S7 =   ~ CurrentState[3] CurrentState[2] CurrentState[1] CurrentState[0]     0111
// S8 =    CurrentState[3] ~CurrentState[2] ~CurrentState[1] ~CurrentState[0]   1000

// Enable = S7
assign ENABLE = ~CurrentState[3] & CurrentState[2] & CurrentState[1] & CurrentState[0];

// RESET = S0
assign RESET = ~CurrentState[3] & ~CurrentState[2] & ~CurrentState[1] & ~CurrentState[0];

// MUX0 = ~CurrentState[3] & ~CurrentState[2]
assign MUX[0] = ~CurrentState[3] & ~CurrentState[2];

// MUX1 = ~CurrentState[3] & CurrentState[0]
assign MUX[1] = ~CurrentState[3] & CurrentState[0];

// SEL0 = S2
assign SEL[0] = ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & ~CurrentState[0];

// SEL1 = S5 + S6
assign SEL[1] = ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & CurrentState[0] | ~CurrentState[3] & CurrentState[2] & CurrentState[1] & ~CurrentState[0];

// SEL2 = S2
assign SEL[2] = ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & ~CurrentState[0];

// SEL3 = S3
assign SEL[3] = ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & CurrentState[0];

// SEL4 = S3 + S4
assign SEL[4] = ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & CurrentState[0] | ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & ~CurrentState[0];

// SEL5 = S5
assign SEL[5] = ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & CurrentState[0];

// SEL6 = S7
assign SEL[6] = ~CurrentState[3] & CurrentState[2] & CurrentState[1] & CurrentState[0];

// SEL7 = S6
assign SEL[7] = ~CurrentState[3] & CurrentState[2] & CurrentState[1] & ~CurrentState[0];

// SEL8 = S1
assign SEL[8] = ~CurrentState[3] & ~CurrentState[2] & ~CurrentState[1] & CurrentState[0];

// LOAD0 = S2 + S6
assign LOAD[0] = ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & ~CurrentState[0] | ~CurrentState[3] & CurrentState[2] & CurrentState[1] & ~CurrentState[0];

// LOAD1 = S1
assign LOAD[1] = ~CurrentState[3] & ~CurrentState[2] & ~CurrentState[1] & CurrentState[0];

// LOAD2 = S2
assign LOAD[2] = ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & ~CurrentState[0];

// LOAD3 = S5
assign LOAD[3] = ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & CurrentState[0];

// LOAD4 = S6
assign LOAD[4] = ~CurrentState[3] & CurrentState[2] & CurrentState[1] & ~CurrentState[0];

// LOAD5 = S4 + S7
assign LOAD[5] = ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & ~CurrentState[0] | ~CurrentState[3] & CurrentState[2] & CurrentState[1] & CurrentState[0];

// LOAD6 = S3 +  S5  
assign LOAD[6] = ~CurrentState[3] & ~CurrentState[2] & CurrentState[1] & CurrentState[0] | ~CurrentState[3] & CurrentState[2] & ~CurrentState[1] & CurrentState[0];


// VAILID = S8
assign VALID = CurrentState[3] & ~CurrentState[2] & ~CurrentState[1] & ~CurrentState[0];

endmodule

