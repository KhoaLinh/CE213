module D_flipflop (Q, D, Clock);
	output Q;
	input D, Clock;
	
	nand (T1, D, Clock), (T2, ~D, Clock), (Q, T1, T3), (T3, Q, T2);

endmodule