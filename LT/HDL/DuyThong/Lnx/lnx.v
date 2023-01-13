// Path Datapath.v
// Path Controller.v
module lnx(OUT, IN, CLK, RESETstage, START, ENABLE, VALID, READY, FLAG, RESET, busMUL0, busMUL1, busDiv0, busDiv1, busTich, busThuong, busFULL, bus14);
input [15:0] IN;
input CLK, RESETstage, START;
output [15:0] OUT, busMUL0, busMUL1, busDiv0, busDiv1, busTich, busThuong;
output ENABLE, VALID, READY, FLAG, RESET;
output [31:0] busFULL;
output [15:0] bus14;
wire [1:0] MUX;
wire [6:0] LOAD;
wire [8:0] SEL;

Controller CONTROLLER(CLK, RESETstage, RESET, START, ENABLE, MUX, SEL, LOAD, VALID, READY, FLAG);
Datapath DATAPATH(OUT, FLAG, READY, CLK, IN, RESET, SEL, MUX, LOAD, ENABLE, VALID, busMUL0, busMUL1, busDiv0, busDiv1, busTich, busThuong, busFULL, bus14);
endmodule
