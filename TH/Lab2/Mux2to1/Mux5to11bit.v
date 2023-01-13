module Mux5to11bit(m,x,y,v,w,u,s0,s1,s2);
input x,y,v,w,u,s0,s1,s2;
output m;

	Mux2to1 Muxxw(xw,x,w,s0);
	Mux2to1 Muxuv(uv,u,v,s0);
	Mux2to1 Muxuvwx(uvwx,uv,wx,s1);
	Mux2to1 Muxuvwxy(m,uvwx,y,s2);

endmodule
