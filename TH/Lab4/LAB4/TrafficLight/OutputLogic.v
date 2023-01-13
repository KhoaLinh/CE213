module OutputLogic(CLK, RESET, DONE, state, NSR, NSY, NSG, EWR, EWY, EWG, zero, delaymode);
input CLK, RESET, DONE;
input[2:0] state;
output NSR, NSY, NSG, EWR, EWY, EWG;
output zero, delaymode;
wire resetcounter;

// A'B + AB'
assign NSR = ~state[2]&state[1] | state[2]& ~state[1];
// A'B'C
assign NSY = ~state[2]&~state[1]& state[0];
// A'B'C'
assign NSG = ~state[2]&~state[1]&~state[0];
// A'C' + B'C
assign EWR = ~state[2]&~state[0] | ~state[1]&state[0];
// AB'C'
assign EWY = state[2]&~state[1]&~state[0];
// A'BC
assign EWG = ~state[2]&state[1]&state[0];
// delaymode
assign delaymode = ~state[2] & ~state[1] & ~state[0] | ~state[2] & state[1] & state[0];
// resetcounter
assign resetcounter = DONE; 
// mealy to moore
register reg0 (CLK, RESET, 1'b1, resetcounter, zero);


endmodule