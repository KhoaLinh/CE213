module Divisorwire(IN, OUT);
input [15:0] IN;
output [16:0] OUT;

assign OUT[16:0] = {1'b0, IN[15:0]};
endmodule
