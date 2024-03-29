module testALU():
    reg [31:0]inA,inB;
    reg [2:0]s;
    wire [31:0]result;
    reg clk;

    ALU ALU1(result,inA,inB,s);
    initial begin
        clk = 0;
        #10
        inA = 32'b00000000000000000000000000000011; 
        inB = 32'b00000000000000000000000000000001; 
        s = 3'b000;

        #10
        inA = 32'b00000000000000000000000000000011;
        inB = 32'b00000000000000000000000000000001;
        s = 3'b001;

        #10
        inA = 32'b00000000000000000000000000000011;
        inB = 32'b00000000000000000000000000000001;
        s = 3'b010;

        #10
        inA = 32'b00000000000000000000000000000011;
        inB = 32'b00000000000000000000000000000001;
        s = 3'b011;

        #10
        inA = 32'b00000000000000000000000000000011;
        inB = 32'b00000000000000000000000000000001;
        s = 3'b100;

        #10
        inA = 32'b00000000000000000000000000000011;
        inB = 32'b00000000000000000000000000000001;
        s = 3'b101;

        #10
        inA = 32'b00000000000000000000000000000011;
        inB = 32'b00000000000000000000000000000001;
        s = 3'b110;

        #10
        inA = 32'b00000000000000000000000000000011;
        inB = 32'b00000000000000000000000000000001;
        s = 3'b111;
        
        forever begin
            #5 clk = ~clk;
        end
        #1000 $finish;
    end

endmodule