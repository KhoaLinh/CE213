module Datapath(
		out,inA,inB,load,oe,c1,c2,clk
		//,bus1,busR2,busR3,busR4,busR5,busALU1,busALU2
		);
	output [15:0]out;
	
	
	//debugging part
	/*
	output [15:0]bus1;
	output [15:0]busR2;
	output [15:0]busR3;
	output [15:0]busR4;
	output [15:0]busR5;
	output [15:0]busALU1;
	output [15:0]busALU2;
	*/
	
	/*
	@signal:
		load: loading signal for registers
		c1: mode selection for ALU1
		c2: mode selection for ALU2
		oe: output enable for tri-state (use for bus sharing)
	*/
	input [15:0]inA;
	input [15:0]inB;
	input [4:0]load;
	input [11:0]oe;
	input [1:0]c1;
	input [1:0]c2;
	input clk;
	
	wire [15:0]bus1;	//main bus1
	wire [15:0]bus2;	//main bus2
	wire [15:0]bus3;	//main bus3
	wire [15:0]bus4;	//main bus4
	wire [15:0]bus5;	//main bus5
	wire [15:0]bus6;	//main bus6
	wire [15:0]bus7;	//main bus7
	wire [15:0]busR2;	//bus from R2
	wire [15:0]busR3;	//bus from R3
	wire [15:0]busR4;	//bus from R4
	wire [15:0]busR5; //bus from R5
	wire [15:0]busALU1; //bus from ALU1
	wire [15:0]busALU2; //bus from ALU2
	wire [15:0]shiftr1bus;	//bus from ShiftRight1 block
	wire [15:0]shiftr3bus;	//bus from ShiftRight3 block
	
	
	
	Reg_16bit R1(bus1,bus3,load[0],clk);
	Reg_16bit R2(busR2,bus4,load[1],clk);
	Reg_16bit R3(busR3,bus7,load[2],clk);
	Reg_16bit R4(busR4,busALU1,load[3],clk);
	Reg_16bit R5(busR5,shiftr1bus,load[4],clk);
	
	
	AbsMinMax_16bit ALU1(busALU1,bus1,bus2,c1);
	AddSubMax_16bit ALU2(busALU2,bus5,bus6,c2);
	
	ShiftR3_16bit shift3(shiftr3bus,busALU1);
	ShiftR1_16bit shift1(shiftr1bus,busALU1);
	
	Tri_State tri_state0[15:0](bus2,bus1,oe[0]);
	Tri_State tri_state1[15:0](bus2,busR2,oe[1]);
	Tri_State tri_state2[15:0](bus3,inA,oe[2]);
	Tri_State tri_state3[15:0](bus3,busALU1,oe[3]);
	Tri_State tri_state4[15:0](bus4,busALU1,oe[4]);
	Tri_State tri_state5[15:0](bus4,inB,oe[5]);
	Tri_State tri_state6[15:0](bus7,shiftr3bus,oe[6]);
	Tri_State tri_state7[15:0](bus5,busR4,oe[7]);
	Tri_State tri_state8[15:0](bus5,busR5,oe[8]);
	Tri_State tri_state9[15:0](bus6,busR3,oe[9]);
	Tri_State tri_state10[15:0](out,busR3,oe[10]);
	Tri_State tri_state11[15:0](bus7,busALU2,oe[11]);

endmodule
