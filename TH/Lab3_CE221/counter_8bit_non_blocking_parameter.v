module counter_8bit_non_blocking_parameter(q,en,clk,clear);
	parameter N = 8;
	output [N-1:0]q;
	input en,clk,clear;
	
	counter_4bit_non_blocking_parameter #(.N(N))counter(q,en,clk,clear);
endmodule
