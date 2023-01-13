

module traffic_light(start,reset,clk, c,
							HG, HY, HR, FG, FY, FR) ;
output HG, HY, HR, FG, FY, FR;
wire HG_betri, HY_betri, HR_betri, FG_betri, FY_betri, FR_betri;
input start, reset,clk,c;
wire full, c;
wire [1:0] state, state_tri;
wire [12:0] count_next;
wire [12:0] load_number;
wire mode, delay;
parameter long = 12'h00A, short = 12'h005;

FSM FSM(full,c,clk,reset,state);
Counter12bit counter(load_number, mode, clk, count_next, full);
getSignal gS(state_tri,HG_betri, HY_betri, HR_betri, FG_betri, FY_betri, FR_betri) ;
getMode gM(state_tri, full, c,clk, mode, delay);

assign load_number = (delay)? short: long;
assign state_tri = (start)? state: 2'bzz;
assign HG = (start)? HG_betri: 1'bzz;
assign HY = (start)? HY_betri: 1'bzz;
assign HR = (start)? HR_betri: 1'bzz;
assign FG = (start)? FG_betri: 1'bzz;
assign FY = (start)? FY_betri: 1'bzz;
assign FR = (start)? FR_betri: 1'bzz;
endmodule

