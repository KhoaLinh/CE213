module Counter12bit(load_number, mode, clk, count_next, full);
//countdown to 0
input[12:0] load_number;
input mode,  clk;
output[12:0] count_next;
output full;
reg[12:0] count_next, count_next_beforereg;

wire[12:0] count_now;
assign count_now = count_next;

always@ (posedge clk ) begin
		count_next = count_next_beforereg;		
end

always@ (mode) begin
	if (mode == 1'b0) 
		count_next_beforereg = load_number;
	else 
		count_next_beforereg = count_now - 12'h001;
end

assign full = (count_next == 12'h000)? 1'b1: 1'b0;
endmodule
