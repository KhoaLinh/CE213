module GetP(IN, OUT);
input [31:0] IN;
output [15:0] OUT;

assign OUT[15:0] = IN[23:8];
endmodule