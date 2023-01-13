module decodeBCD(x,y);
    output  [6:0]x;
    input 	[2:0]y;
    reg 		[6:0]x;
    
    always @(x,y) begin
        case(y)
            3'b000 : x  = 7'b0001001;
            3'b001 : x  = 7'b0000110;
            3'b010 : x  = 7'b1000111;
            3'b011 : x  = 7'b1000111;
            3'b100 : x  = 7'b1000000;
            default : x = 7'b1111111;
        endcase
    end
    
endmodule
