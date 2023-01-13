module Multi(A, B, CLK, RESET, LOAD, 
				Wait, Ready, result, P);
input[15:0] A;
input[15:0] B;
input CLK, RESET, LOAD;
output Wait,Ready;
output[31:0] result;
output[15:0]P;

wire WaitAhead;
wire[31:0]  A_tri, A_reg, A_regSR1, 
				temp_tri ,temp_reg,
				CAS0_inB, result;
wire[15:0]  B_tri, B_reg, B_regSL1;
//reg A, regTemp = 32bit; regB =16bit
//B
assign B_tri = (Wait)? B_regSL1: B;									// INPUT or B >> 1						 
REG16bit regB 		(CLK, RESET, LOAD, B_tri, 			B_reg);
assign B_regSL1 ={1'b0,B_reg[14:1]};											
//A
assign A_tri = (Wait)? A_regSR1 : {16'h0000,A};					// INPUT or A << 1
REG32bit regA 		(CLK, RESET, LOAD, A_tri,			A_reg);
assign A_regSR1 = {A_reg[30:0], 1'b0};											// A << 1
AndRow Row0 	(A_reg, B_reg[0], 					CAS0_inB);	// A & B[0]
//Temp
assign temp_tri = (Wait)? result : 32'h00000000;				//0 or n temp
REG32bit regTemp 	(CLK, RESET, LOAD, temp_tri,  	temp_reg);
// ADD
CAS32bit CAS80  (1'b0 , temp_reg, CAS0_inB,1'b0 , result, );
//signal
OR16 getWaitAhead (B_regSL1, WaitAhead);
OR16 getWait (B_reg, Wait);
assign Ready = ~WaitAhead & Wait;
// P
GetP output16bit(result,P);
endmodule