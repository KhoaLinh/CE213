module MUX2to1(o,a,b,sel);
	
	output o;
	input a,b,sel;
	
	
	assign o = (a & ~sel) | (b & sel);
	
endmodule
