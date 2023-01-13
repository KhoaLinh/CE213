module Mux2to18bit(m,x,y,s);
input [7:0]x;
input [7:0]y;
input s;
output [7:0]m;

	Mux2to1 Mux2to18bit[7:0](m,x,y,s);
	
endmodule
