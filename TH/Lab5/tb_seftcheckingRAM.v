
module tb_seftcheckingRAM();
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
    integer i;
    always #10 clock = ~clock;
    assign data = !oe ? data_tb : 'hz;
    initial begin
        {clock, cs, wr_e, oe, addr, data_tb} <= 0;
        repeat (2) @(posedge clock);

        for ( i = 0 ; i < 2**Address_Width ; i = i + 1 ) begin
            repeat (1) @(posedge clock) addr <= i; wr_e <= 1; cs <= 1; oe <=0; data_tb <= $random;
        end

        for ( i = 0 ; i < 2**Address_Width ; i = i + 1 ) begin
            repeat (1) @(posedge clock) addr <= i; wr_e <= 0; cs <= 1; oe <= 1;
        end

        #20 $stop;
    end

endmodule