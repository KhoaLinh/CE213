module hexshow1(hex7,
                hex6,
                hex5,
                hex4,
                hex3,
                hex2,
                hex1,
                hex0,
                CLOCK_50,
                reset);
    output [6:0]hex7,hex6,hex5,hex4,hex3,hex2,hex1,hex0;
    input CLOCK_50,reset;
    
    wire clk;
    wire [3:0]q;
    
    clock_1s(clk,CLOCK_50);
    bcd_counter(q,clk,reset);
    hexshow(hex7,hex6,hex5,hex4,hex3,hex2,hex1,hex0,q);
endmodule
