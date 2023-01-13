module FSM(full,c,clk,reset,next_state);
input full,c,clk,reset;
output[1:0] next_state;
reg[1:0] n_state, next_state;
parameter S0= 2'b00, S1=2'b01, S2=2'b10, S3=2'b11;

wire[1:0] state;
assign state = next_state;

always@ (posedge clk or posedge reset) begin
	if(reset)	// an asynchronous reset
		next_state = S0 ;
	else
		next_state = n_state ;
end
	
always@ (state or c or full) begin
    case(state)
	 S0:
		if(full&c)
			n_state = S1;
		else 
			n_state = S0;
	 S1:
		if(!full)
			n_state = S1;
		else 
			n_state = S2;
	 S2:
	 	if(!full)
			n_state = S2;
		else 
			n_state = S3;
	 S3:
		if(!full)
			n_state = S3;
		else 
			n_state = S0;
	endcase
end

endmodule
			