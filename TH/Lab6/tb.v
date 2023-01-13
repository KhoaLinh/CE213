`timescale 100ns/1ps
module tb();
    reg [31:0]code;
    reg clk;
    wire [31:0] ALUScr1, ALUScr2, WD, alu_out;
    datapath datapath1(code,clk, ALUScr1, ALUScr2,alu_out, WD);
    initial begin
        clk = 0;
        code = 0;
        #20
        // clk = 1;
        // code = 32'b000001_00000_00001_00010_00000100000; // add $2,$0,$1
        // #80
        code = 32'b000100_00010_00001_0000000000000000; // lw $1,0($2);
        // #80
        // code = 32'b000010_00010_00001_0000000000000000;// sw $1,0($2);
        #280 $stop;
    end
    always #20 clk = ~clk;
endmodule
