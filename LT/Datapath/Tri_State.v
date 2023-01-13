module Tri_State(out,in,oe);
	output out;
	input in,oe;
	
	assign out = oe ? in:1'bz;
	
endmodule
