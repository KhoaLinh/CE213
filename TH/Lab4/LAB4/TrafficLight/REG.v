module REG(IN, CLR, SET, CLK, Q);
input IN, CLR, SET, CLK;
output Q;
reg Q;

always @ (posedge CLK or posedge CLR or posedge SET)
    if (CLR)
		Q = 1'b0 ;
	else if (SET)
		Q = 1'b1;
    else
		Q = IN;
endmodule
