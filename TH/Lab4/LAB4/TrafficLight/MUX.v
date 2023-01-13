module MUX (SELECT, A , B, OUT);
input SELECT;
input [n-1:0] A,B;
output [n-1:0] OUT;
parameter n = 16;

assign OUT =  (SELECT)? B:A;
endmodule 