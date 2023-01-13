module shiftright1(o,a);
	output [15:0]o;
	input [15:0]a;
	
	assign o = a >> 1;
	
endmodule
