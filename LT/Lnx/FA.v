module FA (a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    wire c1, c2, c3;
    
    xor xor1(c1, a, b);
    xor xor2(sum, c1, cin);
    and and1(c2, c1, cin);
    and and2(c3, a, b);
    or or1(cout, c2, c3);
    
endmodule