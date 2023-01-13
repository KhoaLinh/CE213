`timescale 1ns/100ps
module tb_selfchecking();
    reg clk, Reset_n, enable, up_down;
    wire [3:0] q_out;
    Lab5 uut(q_out,clk, Reset_n, enable, up_down);
    initial
    repeat(100) begin
        clk = $random;
        Reset_n = $random;
        enable = $random;
        up_down = $random;
        #10
        $display("clk = %b, Reset_n = %b, enable = %b, up_down = %b, q_out = %b", clk, Reset_n, enable, up_down, q_out); 
        #10 $stop;
    end

    always #5 clk = ~clk;
endmodule