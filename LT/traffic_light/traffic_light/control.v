module control(G1,
               Y1,
               R1,
               G2,
               Y2,
               R2,
               start,
               reset,
               clk);
    output G1,Y1,R1,G2,Y2,R2;
    input start,reset,clk;
    
    reg [7:0]current_stage;
    
    
    always @(*) begin
        
    end
    
    always @(posedge clk, posedge reset) begin
        if (reset)
            current_stage <= 4'b0000;
        else
            current_stage <= next_stage;
    end
endmodule
