module twoDigitBCD(seg0,seg1,in);
	output [6:0]seg0,seg1;
	input [7:0]in;
	
	reg [3:0]num0,num1;
	
	bcd_decoder bcd0(seg0,num0);
	bcd_decoder bcd1(seg1,num0);
	
	always @(in) begin
		if(in < 7'd9) begin
			num0 = in;
			num1 = 4'b0000;
		end
		else begin
			num0 = in % 10;
			num1 = in / 10;
		end
	end
endmodule
