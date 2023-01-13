module FSM (CLK, RESET, DONE,
            NSR, NSY, NSG, EWR, EWY, EWG, zero, delaymode);
input DONE, CLK, RESET;
output NSR, NSY, NSG, EWR, EWY, EWG, zero, delaymode;
wire[2:0] CurrentState, NextState, StateReg;

assign CurrentState = StateReg;
NextStateLogic NSL (DONE, CurrentState, NextState);
StateReg		SR  (CLK, RESET, NextState, StateReg);
OutputLogic 	OL  (CLK, RESET, DONE, StateReg, NSR, NSY, NSG, EWR, EWY, EWG, zero, delaymode);
endmodule