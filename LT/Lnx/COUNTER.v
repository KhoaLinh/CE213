module COUNTER(CLK, RESET, ENABLE, OUT);
input CLK, ENABLE, RESET;
output [15:0] OUT;
reg [15:0] OUT;

always @(posedge CLK or negedge RESET)
begin
    if (~RESET)
        OUT <= 16'b0000000000000001;
    else if (ENABLE)
    OUT <= OUT + 2;
end
endmodule
