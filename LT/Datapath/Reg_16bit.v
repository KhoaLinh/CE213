module Reg_16bit(out,in,load,clk);
	output [15:0]out;
	input [15:0]in;
	input load,clk;
	
	reg [15:0]out;
	
	always @(posedge clk) begin
		if (load==1)
			out<=in;
	end
	
endmodule
