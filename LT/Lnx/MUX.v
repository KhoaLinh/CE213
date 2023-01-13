module MUX(IN1, IN2, OUT, SEL);
input [15:0]IN1, IN2;
output [15:0]OUT;
input  SEL;

assign OUT = (SEL) ? IN2 : IN1;

endmodule
