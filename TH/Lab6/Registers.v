module Registers(RD1,
                 RD2,
                 RR1,
                 RR2,
                 WR,
                 WD,
                 reg_write,
                 clk);
    output [31:0] RD1,RD2;
    input [4:0] RR1,RR2;
    input [4:0] WR;
    input [31:0] WD;
    input reg_write,clk;
    
    reg [31:0] data [0:31];
    initial begin
    data[31] = 8'h0000;
    data[30] = 8'h0000;
    data[29] = 8'h0000;
    data[28] = 8'h0000;
    data[27] = 8'h0000;
    data[26] = 8'h0000;
    data[25] = 8'h0000;
    data[24] = 8'h0000;
    data[23] = 8'h0000;
    data[22] = 8'h0000;
    data[21] = 8'h0000;
    data[20] = 8'h0000;
    data[19] = 8'h0000;
    data[18] = 8'h0000;
    data[17] = 8'h0000;
    data[16] = 8'h0000;
    data[15] = 8'h0000;
    data[14] = 8'h0000;
    data[13] = 8'h0000;
    data[12] = 8'h0000;
    data[11] = 8'h0000;
    data[10] = 8'h0000;
    data[9] = 8'h0000;
    data[8] = 8'h0000;
    data[7] = 8'h0000;
    data[6] = 8'h0000;
    data[5] = 8'h0006;
    data[4] = 8'h0005;
    data[3] = 8'h0004;
    data[2] = 8'h0003;
    data[1] = 8'h0002;
    data[0] = 8'h0001;
    end
    
    reg [31:0] RD1_out, RD2_out;
    
    assign RD1 = RD1_out;
    assign RD2 = RD2_out;
    
    always @(posedge clk) begin
        if (reg_write) begin
            data[WR] = WD;
        end
    end
    
    always @(posedge clk) begin
        RD1_out = data[RR1];
        RD2_out = data[RR2];
    end
    
endmodule
