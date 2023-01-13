module counter4bit_parameter(q,en,clk,clear);
	parameter N = 4;
	
	output [N-1:0]q;
	input en,clk,clear;
	
	reg [N-1:0]q;
	
	always @(posedge clk) begin
		if (!clear)
			q <= N-1'd0;
		else if (en)
			q <= q + 1;
	end
endmodule