module Mux2to1_1bit(x,y,s,m);
input x,y,s;
output m;
	assign m = (~s & x) | (s & y);
endmodule
