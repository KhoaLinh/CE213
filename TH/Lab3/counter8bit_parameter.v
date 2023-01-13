module counter8bit_parameter(q,en,clk,clear);
	parameter N = 8;
	output [N-1:0]q;
	input en,clk,clear;
	
	counter4bit_parameter #(.N(N))counter(q,en,clk,clear);
endmodule
