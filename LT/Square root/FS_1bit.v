module FS_1bit (D, Bout, A, B, Bin);
	output D, Bout;
	input A, B, Bin;
	
	xor (T1, A, B), (D, T1, Bin);
   and (T2, ~A, B), (T3, ~A, Bin), (T4, B, Bin);
   or  (T5, T2, T3), (Bout, T4, T5);

endmodule