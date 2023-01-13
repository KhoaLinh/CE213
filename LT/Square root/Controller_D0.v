module Controller_D0 (O, A, B, C, D, E, F);
	
	output O;
	input A, B, C, D, E, F;
	
	and and1(a1, ~A, ~C, E, ~F);
	and and2(a2, ~A, ~C, D, ~F);
	and and3(a3, ~A, C, ~D, ~E);
	and and4(a4, ~A, B, ~C, ~F);
	
	or or1(O, a1, a2, a3, a4);
	
endmodule