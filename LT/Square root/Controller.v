module Controller ( Q,OE, Op1, Op2, R5, R4, R3, R2, R1, Start, Reset, Clk);
    output[3:0] Q;
    output [11:0]OE;
    output [1:0]Op1;
    output [1:0]Op2;
    output R5, R4, R3, R2, R1;
    input Start, Reset, Clk;

    wire [3:0] Q;
    wire [3:0] D;
	 

    d_ff_struct Dff0(Q[0], D[0], Clk);
    d_ff_struct Dff1(Q[1], D[1], Clk);
    d_ff_struct Dff2(Q[2], D[2], Clk);
    d_ff_struct Dff3(Q[3], D[3], Clk);
		
    Controller_D controllerD(D[3],D[2],D[1],D[0], Reset, Start, Q[3], Q[2], Q[1], Q[0]);
    Controller_Decoder Decoder(OE, Op1, Op2, R5, R4, R3, R2, R1, Q[3], Q[2], Q[1], Q[0]);
endmodule