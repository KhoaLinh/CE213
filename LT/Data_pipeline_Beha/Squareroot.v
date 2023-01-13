module Squareroot (out,count,start,reset,clk,inA,inB);
	output [15:0]out;
	output [3:0]count;
	input	start;
	input reset;
	input clk;
	input [15:0]inA;
	input [15:0]inB;
	 
	wire [4:0]load;
	wire [11:0]oe;
	wire [1:0]c1;
	wire [1:0]c2;
	
	Controller controller (load,oe,c1,c2,start,reset,clk,count);
	Datapath datapath (out,inA,inB,load,oe,c1,c2,clk);
endmodule

	
	