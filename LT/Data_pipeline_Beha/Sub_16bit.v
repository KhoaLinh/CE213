module Sub_16bit(out,carry,inA,inB);
	output [15:0]out;
	output carry;
	input [15:0]inA;
	input [15:0]inB;
	
	assign {carry,out} = inA-inB;
	
endmodule

