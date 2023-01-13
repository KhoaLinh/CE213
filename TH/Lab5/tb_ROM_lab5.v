`timescale 1ns/1ps
module tb_ROM_lab5();
    parameter Address_Width = 7;
    parameter Data_Width    = 8;
    parameter Size          = 1 << Address_Width;
    
    reg clock, cs, rd_en;
    reg [Address_Width-1:0] addr;
    wire [Data_Width-1:0] data_out;
    // reg [Data_Width-1:0] data_tb;
    // reg [Data_Width-1:0] data_file[0:Size-1];
    
    ROM_lab5 uut (
    .data_out(data_out),
    .clock(clock),
    .cs(cs),
    .rd_en(rd_en),
    .addr(addr)
    );
    // assign data_out = (cs && rd_en) ? data_tb : 'hz;
    integer  i;
    localparam T = 20 ;
    
    always
    begin
    clock = 1;
    # (T/2);
    clock = 0;
    # (T/2);
    end
    initial begin
        // $readmemb("initData.mif", data_file);
        
        for (i = 0; i < 128; i = i + 1)
        begin
            addr         = i;
            cs           = 1;
            rd_en        = 1;
            // {data_tb} = data_file[i];
            # (T);
            cs    = 1;
            rd_en = 0;
            # (T);
        end
        $stop;
    end
endmodule
