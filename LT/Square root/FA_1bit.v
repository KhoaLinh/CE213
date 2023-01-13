module FA_1bit (S, Cout, A, B, Cin);
	output S, Cout;
	input A, B, Cin;
	
	xor (T1, A, B), (S, T1, Cin);
   and (T2, T1, Cin), (T3, A, B);
   or  (Cout, T2, T3);

endmodule