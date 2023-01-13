module Quotientwire(IN, OUT);
input [8:0] IN;
output [15:0] OUT;

wire seven = 7'b0000000;
assign OUT[15:0] = {seven,IN};
endmodule
