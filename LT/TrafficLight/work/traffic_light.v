

module traffic_light(start,reset,clk, c,
							HG, HY, HR, FG, FY, FR) ;
output HG, HY, HR, FG, FY, FR;
input start, reset,clk,c;
wire full, c;
wire [1:0] state;
wire [12:0] count_next;
wire [12:0] load_number;
wire mode, delay;
parameter long = 12'h00A, short = 12'h005;

FSM FSM(full,c,clk,reset,state);
Counter12bit counter(load_number, mode, clk, count_next, full);
getSignal gS(state,HG, HY, HR, FG, FY, FR) ;
getMode gM(state, full, c, mode, delay);

assign load_number = (delay)? short: long;
endmodule

