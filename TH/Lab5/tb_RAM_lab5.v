`timescale 1ns/1ps
module tb_RAM_lab5();
    parameter Address_Width = 7;
    parameter Data_Width = 8;
    parameter Size = 1 << Address_Width;

    reg clock, cs, wr_e, oe;
    reg [Address_Width-1:0] addr;
    wire [Data_Width-1:0] data;
    reg [Data_Width-1:0] data_tb;

    RAM_lab5 uut (
        .data(data),
        .clock(clock),
        .cs(cs),
        .wr_e(wr_e),
        .oe(oe),
        .addr(addr)
    );
    assign data = !oe ? data_tb : 'hz;
    initial begin
        clock = 0;
        cs = 0;
        wr_e = 0;
        oe = 0;
        addr = 0;
        data_tb = 0;
        #10
        cs = 1;
        wr_e = 1;
        oe = 0;
        addr = 0;
        data_tb = $random;
        #10
        cs = 1;
        wr_e = 1;
        oe = 0;
        addr = 1;
        data_tb = $random;
        #10
        cs = 1;
        wr_e = 1;
        oe = 0;
        addr = 2;
        data_tb = $random;
        #10
        cs = 1;
        wr_e = 1;
        oe = 0;
        addr = 3;
        data_tb = $random;
        #10
        cs = 1;
        wr_e = 0;
        oe = 1;
        addr = 0;
        #10
        cs = 1;
        wr_e = 0;
        oe = 1;
        addr = 1;
        #10
        cs = 1;
        wr_e = 0;
        oe = 1;
        addr = 2;
        #10
        cs = 1;
        wr_e = 0;
        oe = 1;
        addr = 3;
        #20 $stop;
    end
    always #5 clock = ~clock;

endmodule