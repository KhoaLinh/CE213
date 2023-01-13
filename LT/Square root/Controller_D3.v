module Controller_D3 (O, A, C, D, E, F);
	
	output O;
	input A, C, D, E, F;
	
	and and1(a1, ~A, ~C, D, E, F);
	and and2(a2, ~A, C, ~D, ~E, ~F);
	
	or or1(O, a1, a2);
	
endmodule