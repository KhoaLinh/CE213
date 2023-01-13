module HA(a, b, sum, cout); 
input a, b; 
output sum, cout; 
xor sum1(sum, a, b); 
and carry1(cout, a, b); 
endmodule