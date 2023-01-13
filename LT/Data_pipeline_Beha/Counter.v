module Counter(out,start,reset,clk);
	output [3:0]out;
	input start,clk,reset;
	
	reg [3:0]out;
	
	always @(posedge clk or posedge reset) begin
		if (reset)
			out<=0;
		else if (start && out == 4'b0000)
			out<=out+1;
		else if (out != 4'b0000 && out < 4'b1001) 
			out<=out+1;
		else if (out == 4'b1001)
			out<=4'b0101;
	end
endmodule
