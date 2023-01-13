`timescale 1ns/100ps
module testCounter();
    reg clk, Reset_n, enable, up_down;
    wire [3:0] q_out;
    Lab5 uut(q_out,clk, Reset_n, enable, up_down);
    initial
    begin
        clk = 0;
        Reset_n = 0;
        enable = 0;
        up_down = 0;
        #10 Reset_n = 1;
        #10 enable = 1;
        #10 up_down = 1;
        #10 up_down = 0;
        #10 enable = 0;
        #10 $stop;
    end
    always #5 clk = ~clk;
endmodule
