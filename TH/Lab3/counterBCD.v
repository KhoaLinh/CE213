module counterBCD(q,clk,reset);
    output [3:0]q;
    input clk,reset;
    
    reg [3:0]q;
    
    always @(posedge clk) begin
        if (reset == 1'b0)
            q = 4'b0000;
        else if (q < 4'b1001)
            q = q + 1;
        else
            q = 4'b0000;
    end
endmodule

