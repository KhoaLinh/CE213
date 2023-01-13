module MUXTRI(A, B, CONTROL, OUT);
input [15:0] A, B;
input CONTROL;
output [15:0] OUT;

wire [15:0] OUTA, OUTB;
wire ctrl;
Tristate TRI1(A, ~ctrl, OUTA);
Tristate TRI2(B, ctrl, OUTB);
MUX MUX0(OUTA, OUTB, OUT, CONTROL);
assign ctrl = CONTROL;

endmodule