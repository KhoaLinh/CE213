module control_unit(RegDst,
                    MemRead,
                    MemWrite,
                    MemToReg,
                    ALUOp,
                    ALUSrc,
                    ALUControl,
                    RegWrite,
                    Opcode);
    output reg RegDst,MemRead,MemWrite,MemToReg,ALUSrc,RegWrite;
    output reg [1:0] ALUOp;
    output reg [3:0] ALUControl;
    input [5:0] Opcode;
    
    always @(Opcode) begin
        case (Opcode)
            6'b000_001: begin
                ALUOp      = 2'b10;
                ALUControl = 4'b0101;
                ALUSrc     = 1'b0;
                RegDst     = 1'b1;
                MemToReg   = 1'b1;
                RegWrite   = 1'b1;
                MemRead    = 1'b0;
                MemWrite   = 1'b0;
            end
            6'b000_010: begin   //store word
                ALUOp      = 2'b00;
                ALUControl = 4'b0101;
                ALUSrc     = 1'b1;
                RegDst     = 1'b0; //X 
                MemToReg   = 1'b0;
                RegWrite   = 1'b0;
                MemRead    = 1'b0;
                MemWrite   = 1'b1;
            end
            6'b000_100: begin   //load word
                ALUOp      = 2'b00;
                ALUControl = 4'b0101;
                ALUSrc     = 1'b1;
                RegDst     = 1'b0;
                MemToReg   = 1'b0;
                RegWrite   = 1'b1;
                MemRead    = 1'b1;
                MemWrite   = 1'b0;
            end
            default: begin
                ALUOp      = 2'bzz;
                ALUControl = 4'bzzzz;
                ALUSrc     = 1'bz;
                RegDst     = 1'bz;
                MemToReg   = 1'bz;
                RegWrite   = 1'bz;
                MemRead    = 1'bz;
                MemWrite   = 1'bz;
            end
        endcase
    end
    
endmodule
