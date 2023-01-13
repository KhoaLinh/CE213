//PATH: lnx.v
`timescale 10ns/1ns
module tb_lnx;
reg START, CLK, RESETstage;
wire VALID, READY, FLAG, RESET, ENABLE;
reg[15:0] IN;
wire[15:0] OUT, busMUL0, busMUL1, busDiv0, busDiv1, busTich, busThuong, bus14;
wire[31:0] busFULL;
lnx lnx(OUT, IN, CLK, RESETstage, START, ENABLE, VALID, READY, FLAG, RESET, busMUL0, busMUL1, busDiv0, busDiv1, busTich, busThuong, busFULL, bus14);
initial begin
    CLK  = 0;
    START = 0;
    RESETstage = 1;
    IN = 0;
    #50
    RESETstage  = 0;
    #75
    START = 1;
    #50
    START = 0;
    #25
    IN = 16'b0000111010000000;
    #1000000
    $stop;
end
    always #50 CLK = ~CLK;
endmodule


