module TL(CLK, RESET, NSR, NSY, NSG, EWR, EWY, EWG);
input CLK, RESET;
output NSR, NSY, NSG, EWR, EWY, EWG;
wire DONE;
wire zero, delaymode;
wire[15:0] count_now, count_next;
wire RESETcounter;
wire[15:0] timedelay;
parameter delay1s = 16'h0003, delay5s = 16'h0017;
// số giây * (số xung / 1s) - 2
FSM FSM (CLK, RESET, DONE,
         NSR, NSY, NSG, EWR, EWY, EWG, zero, delaymode );
//
assign count_now = count_next;
assign RESETcounter = RESET | zero;
Counter16bit Counter(CLK, RESETcounter , count_now, count_next);
//
Compare Compare(count_next, timedelay, DONE);
MUX MUX(delaymode, delay1s , delay5s, timedelay);
endmodule