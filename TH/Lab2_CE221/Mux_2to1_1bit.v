module Mux_2to1_1bit (x,y,s,m);
	input x, y, s;
	output m;

	assign m = (x & ~s)|(s & y);
endmodule