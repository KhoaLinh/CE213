module getSignal(state,HG, HY, HR, FG, FY, FR) ;
input[1:0] state;
output HG, HY, HR, FG, FY, FR;
parameter S0= 2'b00, S1=2'b01, S2=2'b10, S3=2'b11, SZ = 2'bzz;


		assign HG = (state == S0) ;
		assign HY = (state == S1) ;
		assign HR = ((state == S2)||(state == S3)) ;
		assign FG = (state == S2) ;
		assign FY = (state == S3) ;
		assign FR = ((state == S0)||(state == S1)) ;

endmodule
