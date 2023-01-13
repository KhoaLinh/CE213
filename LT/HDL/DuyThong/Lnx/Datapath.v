module Datapath(OUT, FLAG, READY, CLK, IN, RESET, SEL, MUX, LOAD, ENABLE, VALID, busMUL0, busMUL1, busDiv0, busDiv1, busTich, busThuong, busFULL, bus14);
    input [15:0] IN;
    input CLK, RESET, ENABLE;
    input [8:0] SEL;
    input [1:0] MUX;
    input [6:0] LOAD;
    input VALID;
    output [15:0] OUT, busMUL0, busMUL1, busDiv0, busDiv1, busTich, busThuong;
    output FLAG, READY;
	 output [31:0] busFULL;
	 output [15:0] bus14;

    wire [15:0]bus0; // bus sharing 0
    wire [15:0]bus1; // bus sharing 1
    wire [15:0]bus2; // bus from ADD0
    wire [15:0]bus3; // bus from MUX0
    wire [15:0]bus4; // bus from SUB0
    wire [15:0]bus5; // bus from DIV
    wire [15:0]bus6; // bus from MUL
    wire [15:0]bus7; // bus from REG0
    wire [15:0]bus8; // bus from REG1
    wire [15:0]bus9; // bus from REG2
    wire [15:0]bus10; // bus from REG3
    wire [15:0]bus11; // bus from REG4
    wire [15:0]bus12; // bus from ADD1
    wire [15:0]bus13; // bus from MUX1
    wire [15:0]bus14; // bus from REG5
    wire [15:0]bus15, bus15div2; // bus from Shift
    wire [15:0]bus16, count_now; // bus from Counter
    wire [5:0]LOADE;
    wire WAIT;

    Tristate TRI8(IN, SEL[8], bus0);
    Tristate TRI7(bus16, SEL[7], bus1);
    Tristate TRI6(bus11, SEL[6], bus0);
    Tristate TRI5(bus10, SEL[5], bus1);
    Tristate TRI4(bus9, SEL[4], bus1);
    Tristate TRI3(bus9, SEL[3], bus0);
    Tristate TRI2(bus8, SEL[2], bus0);
    Tristate TRI1(bus7, SEL[1], bus0);
    Tristate TRI0(bus2, SEL[0], bus1);
    Tristate TRIOUT(bus15div2, VALID, OUT);
	 assign bus15div2 = {1'b0,bus15[15:1]};

    MUX MUX0(bus6, bus5, bus3, MUX[0]);
    MUX MUX1(bus1, bus12, bus13, MUX[1]);

    ADD ADD0(bus0, 16'b 0000001000000000, bus2);
    ADD ADD1(bus14, bus0, bus12);
    SUB SUB0(bus0, 16'b 0000000100000000, bus4);
    Divi DIV0(busDiv0, busDiv1, busThuong);
    MUL MUL0(busMUL0, busMUL1, CLK, RESET, LOAD[6], WAIT, READY, busFULL, busTich);

    REG16bit_Rst1 REG0(CLK, RESET, LOADE[0], bus3, bus7);
    REG16bit 		REG1(CLK, RESET, LOADE[1], bus4, bus8);
    REG16bit 		REG2(CLK, RESET, LOADE[2], bus5, bus9);
    REG16bit_Rst1 REG3(CLK, RESET, LOADE[3], bus6, bus10);
    REG16bit 		REG4(CLK, RESET, LOADE[4], bus5, bus11);
    REG16bit 		REG5(CLK, RESET, LOADE[5], bus13, bus14);

    COUNTER COUNTER0(CLK, RESET, ENABLE & ~WAIT, count_now, bus16);
	 assign count_now = bus16;
	 CounterCheck CHECK(FLAG, bus16);
	 
    assign bus15 = {bus14[14:0],{1'b0}};
    assign LOADE[5] = LOAD[5] & ~WAIT;
    assign LOADE[4] = LOAD[4] & ~WAIT;
    assign LOADE[3] = LOAD[3] & ~WAIT;
    assign LOADE[2] = LOAD[2] & ~WAIT;
    assign LOADE[1] = LOAD[1] & ~WAIT;
    assign LOADE[0] = LOAD[0] & ~WAIT;
	 assign busMUL0 = bus0;
	 assign busMUL1 = bus1;
	 assign busDiv0 = bus0;
	 assign busDiv1 = bus1;
	 assign busTich = bus6;
	 assign busThuong = bus5;
endmodule
