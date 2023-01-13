module BCDDecoder(o,i);
	output [6:0]o;
	input [2:0]i;
	reg [6:0]o;
	
	always @(o,i) begin
		case(i)
			3'b000 : o = 7'b0001001;
			3'b001 : o = 7'b0000110;
			3'b010 : o = 7'b1000111;
			3'b011 : o = 7'b1000111;
			3'b100 : o = 7'b1000000;
			default : o = 7'b1111111;
		endcase
	end
	
endmodule
