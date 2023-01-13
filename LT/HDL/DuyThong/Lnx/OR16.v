module OR16(IN, OUT);
input [15:0] IN;
output OUT;

assign OUT = IN[15] | IN[14] | IN[13] | IN[12] | IN[11] | IN[10] | IN[9] | IN[8] | IN[7] | IN[6] | IN[5] | IN[4] | IN[3] | IN[2] | IN[1] | IN[0];

endmodule