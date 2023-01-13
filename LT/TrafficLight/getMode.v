module getMode (state, full, c,clk, mode_reg, delay_reg);
input [1:0] state;
input full,c,clk;
output	mode_reg,delay_reg;
reg mode_reg, delay_reg, mode,delay;

always@(posedge clk) begin
	mode_reg = mode;
	delay_reg = delay;
end
always@(state,full,c) begin
case ({state,full,c})
	4'b0010,
	4'b0110,
	4'b0111,
	4'b1110,
	4'b1111: begin	 
		mode = 	1'b0;
		delay = 	1'b0;
	end
	4'b0011,
	4'b1010,
	4'b1011: begin
		mode = 	1'b0;
		delay = 	1'b1;
	end
	default: begin 
		mode = 	1'b1;
		delay = 	1'b0;
	end
	endcase
	end
endmodule
	