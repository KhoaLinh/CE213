module test_Squareroot;
	reg start,reset,clock;
	reg [15:0]inA = 16'b1111111111111101;
	reg [15:0]inB = 16'b1111111111111110;
	wire out;
	wire count;
	Squareroot MUT (out,count,start,reset,clock,inA,inB);
	initial begin
		#20 reset = 1'b1;
		#25 start = 1'b1;
		#35 inA = 16'b1111111111111101;
		#35 inB = 16'b1111111111111110;
		#200 $finish;
	end
	always #40 clock = ~clock;	
endmodule

