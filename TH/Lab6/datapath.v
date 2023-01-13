
module datapath (code,
                 clk,
                 ALUScr1, ALUScr2, alu_out, WD);
    input [31:0] code;
    input clk;
    
    wire RegDst,MemRead,MemWrite,MemToReg,ALUSrc,RegWrite;
    wire [1:0] ALUOp;
    wire [3:0] ALUControl;
    wire [4:0] WR;
    //wire [31:0] WD;
    wire [31:0] RD1,RD2;
    wire [31:0] sign_out;
    //wire [31:0] ALUScr1;//ALUScr2;
    //wire [31:0] alu_out;
    wire [31:0] data_out;
    output[31:0] ALUScr1, ALUScr2, WD, alu_out;//xoa
    
    control_unit control(RegDst,MemRead,MemWrite,MemToReg,ALUOp,ALUSrc,ALUControl,RegWrite,code[31:26]);
    Registers register(RD1,RD2,code[25:21],code[20:16],WR,WD,RegWrite,clk);
    sign_extend sign_ext(sign_out,code[15:0]);
    assign ALUScr1 = RD1;
    ALU alu(alu_out,ALUScr1,ALUScr2,ALUControl[2:0]);
    DataMem data(data_out,alu_out[6:0],RD2,MemWrite,MemRead,clk);
    
    mux RegDstmux[4:0](code[20:16],code[15:11],RegDst,WR);
    mux ALUSrcmux[31:0](RD2,sign_out,ALUSrc,ALUScr2);
    mux MemToRegmux[31:0](data_out,alu_out,MemToReg,WD);
    
endmodule
