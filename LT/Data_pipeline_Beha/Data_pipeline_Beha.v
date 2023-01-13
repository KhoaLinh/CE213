// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Sat Oct 08 23:02:46 2022"

module Data_pipeline_Beha(
	c,
	OE,
	inA,
	inB,
	out
);


input wire	c;
input wire	OE;
input wire	[15:0] inA;
input wire	[15:0] inB;
output wire	[15:0] out;

wire	[15:0] SYNTHESIZED_WIRE_0;





MaxAbs_16bit	b2v_inst(
	.c(c),
	.inA(inA),
	.inB(inB),
	.out(SYNTHESIZED_WIRE_0));

assign	out[15] = OE ? SYNTHESIZED_WIRE_0[15] : 1'bz;
assign	out[14] = OE ? SYNTHESIZED_WIRE_0[14] : 1'bz;
assign	out[13] = OE ? SYNTHESIZED_WIRE_0[13] : 1'bz;
assign	out[12] = OE ? SYNTHESIZED_WIRE_0[12] : 1'bz;
assign	out[11] = OE ? SYNTHESIZED_WIRE_0[11] : 1'bz;
assign	out[10] = OE ? SYNTHESIZED_WIRE_0[10] : 1'bz;
assign	out[9] = OE ? SYNTHESIZED_WIRE_0[9] : 1'bz;
assign	out[8] = OE ? SYNTHESIZED_WIRE_0[8] : 1'bz;
assign	out[7] = OE ? SYNTHESIZED_WIRE_0[7] : 1'bz;
assign	out[6] = OE ? SYNTHESIZED_WIRE_0[6] : 1'bz;
assign	out[5] = OE ? SYNTHESIZED_WIRE_0[5] : 1'bz;
assign	out[4] = OE ? SYNTHESIZED_WIRE_0[4] : 1'bz;
assign	out[3] = OE ? SYNTHESIZED_WIRE_0[3] : 1'bz;
assign	out[2] = OE ? SYNTHESIZED_WIRE_0[2] : 1'bz;
assign	out[1] = OE ? SYNTHESIZED_WIRE_0[1] : 1'bz;
assign	out[0] = OE ? SYNTHESIZED_WIRE_0[0] : 1'bz;


endmodule
