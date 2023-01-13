module Controller_D1 (O, A, C, E, F);
	
	output O;
	input A, C, E, F;
	
	and and1(a1, ~A, ~C, ~E, F);
	and and2(a2, ~A, ~C, E, ~F);
	
	or or1(O, a1, a2);
	
endmodule