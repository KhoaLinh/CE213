module counter_4bit(q,en,clk,clear);
	output [3:0]q;
	input en,clk,clear;
	
	reg [3:0]q;
	
	always @(posedge clk or negedge clear) begin
		if (clear == 1'b0)
			q = 4'b0000;
		else if (en == 1'b1)
			q = q+1;
	end
endmodule
