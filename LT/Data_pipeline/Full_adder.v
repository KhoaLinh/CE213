module Full_adder(s, cout, a, b, cin);
	output s,cout;
	input a,b,cin;
	
	 xor (t1, a, b),(s, t1, cin);
    and (t2, t1, cin),
          (t3, a, b);
    or  (cout, t2, t3);

endmodule
