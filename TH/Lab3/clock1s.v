module clock1s(clk,CLOCK_50);
	output clk;
	input CLOCK_50;
	
	reg enable,clk;
	reg [24:0]counter;

	always @(posedge CLOCK_50) begin
		if(counter == 25'd0)
			counter = 25'd25000000;
		else 
			counter = counter - 1;
		enable = counter == 25'd0;
	end
	always @(posedge CLOCK_50) begin
		if (enable) 
			clk = clk+1'b1;
	end
	
endmodule
