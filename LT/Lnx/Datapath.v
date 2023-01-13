module Datapath(IN, OUT, CLK, RESET, SEL, MUX, LOAD, ENABLE, FLAG, READY, VALID);
input [15:0] IN;
input CLK, RESET, ENABLE;
wire WAIT;
input [7:0]SEL;
input [3:0] MUX;
input [6:0] LOAD;
input VALID;
output [15:0] OUT;
output FLAG, READY;

wire [15:0] busMUX0, busMUX1, bus0, bus1, bus2, bus3, bus4, bus5, bus6, bus7, bus8, bus9, bus10, bus11, bus12, bus13, bus14, bus15, bus16, bus17, bus18, bus19;
wire [5:0] LOADE;
// Datapath
// 1. Register File
REG16bit REG0 (CLK, RESET, LOAD[0], bus4, bus9);
REG16bit REG1 (CLK, RESET, LOAD[1], bus6, bus10);
REG16bit REG2 (CLK, RESET, LOAD[2], bus7, bus11);
REG16bit REG3 (CLK, RESET, LOAD[3], bus8, bus12);
REG16bit REG4 (CLK, RESET, LOAD[4], bus7, bus13);
REG16bit REG5 (CLK, RESET, LOAD[5], bus15, bus16);

// 2. MUX
MUX MUX0 (bus1, busMUX0, bus3, MUX[0]);
MUX MUX1 (bus1, busMUX1, bus5, MUX[1]);
MUX MUX2 (bus8, bus7, bus4, MUX[2]);
MUX MUX3 (bus8, bus14, bus15, MUX[3]);

// 3. Tristate
Tristate TRISTATE0 (bus2, SEL[0], bus1);
Tristate TRISTATE1 (bus9, SEL[1], bus0);
Tristate TRISTATE2 (bus10, SEL[2], bus0);
Tristate TRISTATE3 (bus11, SEL[3], bus0);
Tristate TRISTATE4 (bus11, SEL[4], bus1);
Tristate TRISTATE5 (bus12, SEL[5], bus1);
Tristate TRISTATE6 (bus13, SEL[6], bus0);
Tristate TRISTATE7 (bus19, SEL[7], bus1);
Tristate TRISTATE8 (bus17, VALID, bus18);

// 4. ALU
ADD ADDER0 (bus0, bus3, bus2);
SUB SUBTRACTOR (bus0, bus5, bus6);
MUL MULTIPLIER (bus0, bus1, CLK, RESET, LOAD[6], WAIT, bus8);
DIV DIVIDER (bus0, bus1, bus7);
ADD ADDER1 (bus1, bus14, bus15);

//5 COUNTER
COUNTER COUNTER0 (CLK, RESET, ENABLE, bus19);

//6 AND
AND AND0 (bus19,  );

// Wire
assign LOADE[5] = LOAD[5]&~WAIT;
assign LOADE[4] = LOAD[4]&~WAIT;
assign LOADE[3] = LOAD[3]&~WAIT;
assign LOADE[2] = LOAD[2]&~WAIT;
assign LOADE[1] = LOAD[1]&~WAIT;
assign LOADE[0] = LOAD[0]&~WAIT;
assign bus17 = bus16 << 1;

endmodule
