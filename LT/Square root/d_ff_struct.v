module d_ff_struct(q,d,clk);
input d,clk;
wire qbar;
wire qnot; 
output q; 
not_gate not1(dbar,d); 
nand_gate nand1(x,clk,d); 
nand_gate nand2(y,clk,dbar); 
nand_gate nand3(qnot,qbar,y); 
nand_gate nand4(qbar,qnot,x);
not_gate notq(q,qnot); 
endmodule
