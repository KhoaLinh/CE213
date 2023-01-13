module Dividendwire(IN, OUT);
input [15:0] IN;
output [24:0] OUT;

assign OUT[24:0] = {IN[15:0], 9'b0};
endmodule
