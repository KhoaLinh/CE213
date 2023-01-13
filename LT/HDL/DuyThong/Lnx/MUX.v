module MUX(IN0, IN1, OUT, SEL);
input [15:0]IN0, IN1;
output [15:0]OUT;
input  SEL;

assign OUT = (SEL)? IN1: IN0;

endmodule
