module SquareRoot (O,Start,Reset,Clk,A,B);
    output [15:0]O;
    input Start;
    input Reset;
    input Clk;
    input [15:0]A;
    input [15:0]B;

    wire [4:0]load;
    wire [11:0]OE;
    wire [1:0]Op1;
    wire [1:0]Op2;

    Controller controller(OE, Op1, Op2, R5, R4, R3, R2, R1, Start, Reset, Clk);
    Datapath datapath(O, R1, R2, R3, R4, R5, AU1, AU2, S1, S2, A, B, OE, Op1, Op2, Load, Clk);
endmodule