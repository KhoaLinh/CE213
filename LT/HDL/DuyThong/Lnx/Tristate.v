module Tristate( IN, OE, OUT);
input [15:0] IN;
input OE;
output [15:0] OUT;

assign OUT[15:0] = OE ? IN[15:0] : {16{1'bZ}};
endmodule

