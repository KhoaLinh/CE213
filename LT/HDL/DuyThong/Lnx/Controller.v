module Controller(CLK, RESETstage, RESET, START, ENABLE, MUX, SEL, LOAD, VALID, READY, FLAG);
input CLK, START, FLAG, RESETstage, READY;
output ENABLE, VALID, RESET;
output [1:0]MUX;
output [8:0]SEL;
output [6:0]LOAD;

wire [3:0] CurrentState, Next, NextStage_reg;
assign CurrentState = NextStage_reg;

NextStageLogic NSL(CurrentState, START, FLAG, READY, Next);
Machine STAGE(CLK, RESETstage, Next, NextStage_reg);
ControllerDecoder getOut (RESET, ENABLE, MUX, SEL, LOAD, VALID, CurrentState);
endmodule





