module HA(a, b, sum, cout);
    input a, b;
    output sum, cout;
    wire c1;
    xor sum1(c1, a, b);
    and carry1(cout, a, b);
endmodule
