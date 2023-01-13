module AddSubMax_16bit(out,inA,inB,c);
	output [15:0]out;
	input [15:0]inA;
	input [15:0]inB;
	input [1:0]c;
	
	reg skip;
	reg [15:0]out;
	
	always @(inA,inB,c) begin
		if (c==2'b00)	//add
			{skip,out} = inA+inB;
		else if (c==2'b01)	//sub
			{skip,out} = inA-inB;
		else if (c==2'b10)	//max
			out = inA>inB?inA:inB;
		else if (c==2'b11)	//none operator
			out = 16'bzzzzzzzzzzzzzzzz;
	end
endmodule
