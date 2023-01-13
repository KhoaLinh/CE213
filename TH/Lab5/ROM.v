module ROM #(parameter Width = 16, Depth =1024) (
    input clk,
    input [$clog2(Depth)-1:0] rdAddr,
    output reg [Width-1:0] rdData
);
    reg[Width-1:0] mem[Depth-1:0];
    initial begin
        $readmemb("initData.mif", mem);
    end

    always @(posedge clk) begin
        rdData <= mem[rdAddr];
    end
endmodule