module REG_RS1(CLK, RESET, LOAD, IN, Qnext);
    input CLK, RESET, LOAD, IN;
    output Qnext;
    wire Q, zero;

    assign zero = 1'b0;
    assign Q = (LOAD) ? IN : Qnext;
    REGISTER reg1(Q, zero, RESET, CLK, Qnext);
endmodule
