module ALU(result,
           inA,
           inB,
           s);
    output [31:0]result;
    input [31:0]inA,inB;
    input [2:0]s;
    wire[31:0]result0,result1,result2,result3,result4,result5,result6,result7;
    
    assign result0 = ~inA;
    assign result1 = inA & inB;
    assign result2 = inA ^ inB;
    assign result3 = inA | inB;
    assign result4 = inA - 1;
    assign result5 = inA + inB;
    assign result6 = inA - inB;
    assign result7 = inA + 1;

    assign result = (s == 3'b000) ? result0 :
                    (s == 3'b001) ? result1 :
                    (s == 3'b010) ? result2 :
                    (s == 3'b011) ? result3 :
                    (s == 3'b100) ? result4 :
                    (s == 3'b101) ? result5 :
                    (s == 3'b110) ? result6 :
                    result7;

    
endmodule
