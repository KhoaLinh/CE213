module showhex(hex7,hex6,hex5,hex4,hex3,hex2,hex1,hex0,in);
    output [6:0]hex7;
    output [6:0]hex6;
    output [6:0]hex5;
    output [6:0]hex4;
    output [6:0]hex3;
    output [6:0]hex2;
    output [6:0]hex1;
    output [6:0]hex0;
    input [3:0]in;
    
    reg [2:0]i7;
    reg [2:0]i6;
    reg [2:0]i5;
    reg [2:0]i4;
    reg [2:0]i3;
    reg [2:0]i2;
    reg [2:0]i1;
    reg [2:0]i0;
    
    decodeBCD HEX7(hex7,i7);
	 decodeBCD HEX6(hex6,i6);
    decodeBCD HEX5(hex5,i5);
    decodeBCD HEX4(hex4,i4);
    decodeBCD HEX3(hex3,i3);
    decodeBCD HEX2(hex2,i2);
    decodeBCD HEX1(hex1,i1);
    decodeBCD HEX0(hex0,i0);
    
    always @(in) begin
        i7 <= in-3;
        i6 <= in-2 ;
        i5 <= in-1;
        i4 <= in;
        i3 <= in+1;
        i2 <= in+2;
        i1 <= in+3;
        i0 <= in+4;
    end
endmodule
    
