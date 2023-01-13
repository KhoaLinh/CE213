module Divi(Dividend, Divisor, Quotient);
input [15:0] Dividend;
input [15:0] Divisor;
output [15:0] Quotient;

wire [24:0] Dividendwire_OUT; 
wire [16:0] Divisorwire_OUT;
wire [8:0]Quotientwire_OUT;
Dividendwire Dividendwire1 (Dividend, Dividendwire_OUT);
Divisorwire Divisorwire1 (Divisor, Divisorwire_OUT);
DIV DIV1 (Dividendwire_OUT, Divisorwire_OUT, Quotientwire_OUT);
Quotientwire Quotientwire1 (Quotientwire_OUT, Quotient);
endmodule