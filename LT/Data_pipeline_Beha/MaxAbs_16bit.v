module MaxAbs_16bit(out,inA,inB,c);
	output [15:0]out;
	input [15:0]inA;
	input [15:0]inB;
	input c;
	
	reg [15:0]out;
	
	always @(inA,inB,c) begin
		if(c==0)
			out = inA > inB ? inA : inB;
		else	begin
			out[15]=0;
			out[14:0]=inA[14:0];
		end
	end
	
endmodule
