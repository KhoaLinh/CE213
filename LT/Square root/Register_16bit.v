module Register_16bit (Q, D, Load, Clock);
	output [15:0]Q;
	input [15:0]D; 
	input Load, Clock;
	
	wire [15:0]a1;
	wire [15:0]a2;
	wire [15:0]o1;
	
	and and1[15:0] (a1, ~Load, Q);
	and and2[15:0] (a2, Load, D);
	or or1[15:0] (o1, a1, a2);
	D_flipflop D_flipflop[15:0] (Q, o1, Clock);

endmodule