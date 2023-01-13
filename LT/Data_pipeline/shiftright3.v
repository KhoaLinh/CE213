module shiftright3(o,a);
	output [15:0]o;
	input [15:0]a;
	
	assign o = a >> 3;

endmodule
