module Mux5to13bit(m,x,y,v,w,u,s0,s1,s2);
input [2:0]x;
input [2:0]y;
input [2:0]v;
input [2:0]w;
input [2:0]u;
input s0,s1,s2;
output [2:0]m;

	Mux2to1 Muxxw3bit[2:0](xw,x,w,s0);
	Mux2to1 Muxuv3bit[2:0](uv,u,v,s0);
	Mux2to1 Muxuvwx3bit[2:0](uvwx,uv,wx,s1);
	Mux2to1 Muxuvwxy3bit[2:0](m,uvwx,y,s2);

endmodule
