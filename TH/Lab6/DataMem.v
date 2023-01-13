module DataMem(read_data,
               address,
               write_data,
               mem_write,
               mem_read,
               clk);
    parameter Address_Width = 7,
    Data_Width = 32,
    Size = 1 << Address_Width;
    
    output [Data_Width - 1 : 0]read_data;
    input [Address_Width - 1 : 0]address;
    input [Data_Width - 1 : 0]write_data;
    input mem_write,mem_read,clk;
    
    reg [Data_Width - 1 : 0] mem [0 : Size - 1];
    reg [Data_Width - 1 : 0] data_out;

    initial begin
        mem[0] = 8'h0010;
        mem[1] = 8'h0011;
        mem[2] = 8'h0012;
        mem[3] = 8'h0013;
        mem[4] = 8'h0014;
        mem[5] = 8'h0015;
        mem[6] = 8'h0016;
        mem[7] = 8'h0000;
        mem[8] = 8'h0000;
        mem[9] = 8'h0000;
        mem[10] = 8'h0000;

        // mem[0] = 8'h0001;
        // mem[1] = 8'h0002;
        // mem[2] = 8'h0003;
        // mem[3] = 8'h0004;
        // mem[4] = 8'h0005;
        // mem[5] = 8'h0006;
        // mem[6] = 8'h0007;
        // mem[7] = 8'h0008;
        // mem[8] = 8'h0009;
        // mem[9] = 8'h000a;
        // mem[10] = 8'h000b;
        // mem[11] = 8'h000c;
        // mem[12] = 8'h000d;
        // mem[13] = 8'h000e;
        // mem[14] = 8'h000f;
        // mem[15] = 8'h0010;
        // mem[16] = 8'h0011;
        // mem[17] = 8'h0012;
        // mem[18] = 8'h0013;
        // mem[19] = 8'h0014;
        // mem[20] = 8'h0015;
        // mem[21] = 8'h0016;
        // mem[22] = 8'h0017;
        // mem[23] = 8'h0018;
        // mem[24] = 8'h0019;
        // mem[25] = 8'h001a;
        // mem[26] = 8'h001b;
        // mem[27] = 8'h001c;
        // mem[28] = 8'h001d;
        // mem[29] = 8'h001e;
        // mem[30] = 8'h001f;
        // mem[31] = 8'h0020;

    end
    assign read_data = mem_read ? data_out : {32{1'bz}};
    
    always @(posedge clk) begin
        if (mem_write) begin
            mem[address] = write_data;
        end
    end
    
    always @(posedge clk) begin
        if (mem_read) begin
            data_out = mem[address];
        end
    end
    
endmodule
