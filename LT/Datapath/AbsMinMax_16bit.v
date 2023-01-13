module AbsMinMax_16bit(out,inA,inB,c);
	output [15:0]out;
	input [15:0]inA;
	input [15:0]inB;
	input [1:0]c;
	
	reg [15:0]out;
	
	always @(inA,inB,c) begin
		if (c==2'b00)
			out = inB[15]?-inB:inB;
		else if (c==2'b01)
			out = inA<inB?inA:inB;
		else if (c==2'b10)
			out = inA>inB?inA:inB;
	end
endmodule
	