module Controller_D2 (O, A, C, D, E, F);
	
	output O;
	input A, C, D, E, F;
	
	and and1(a1, ~A, ~C, D, ~E);
	and and2(a2, ~A, ~C, D, ~F);
	and and3(a3, ~A, ~C, ~D, E, F);
	and and4(a4, ~A, C, ~D, ~E, F);
	
	or or1(O, a1, a2, a3, a4);
	
endmodule