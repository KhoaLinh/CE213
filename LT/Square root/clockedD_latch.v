module clockedD_latch(Q, D, clk);

//Port declarations
wire Qbar;
output Q;
input D, clk;
wire X, Y, clkbar, Dbar;
// Gate declarations
not a1(clkbar, clk); 
not a2(Dbar, D); 
or r1(X, Dbar, clkbar);
or r2(Y, D, clkbar);
nand n1(Q, X, Qbar);
nand n2(Qbar, Y , Q);
endmodule