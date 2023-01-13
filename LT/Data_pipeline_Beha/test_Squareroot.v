`timescale 1ps/1ps;
module test();
    
    reg start,reset,clock;
    reg [15:0]inA;
    reg [15:0]inB;
    wire [15:0]out;
    wire [3:0]count;
    
    Squareroot dut (.out(out),.inA(inA),.inB(inB),.start(start),.reset(reset),.clk(clock),.count(count));
    
    initial begin
        reset = 1'b1;
        inA   = 16'b0000000000000011;
        inB   = 16'b0000000000000100;
        #20;
        clock = 0;
        reset = 1'b0;
        start = 1'b1;
        if (count == 4'b0100) begin
          inA = 16'b0000000000000101;
          inB = 16'b0000000000001100;
        end
      
        #2000 $stop;
    end
    
    always #50 clock = ~clock;
endmodule