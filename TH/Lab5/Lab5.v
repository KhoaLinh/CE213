// create module counter 4 bit with clock, Reset_n, enable, up_down
module Lab5(q_out,clk, Reset_n, enable, up_down);
    input clk, Reset_n, enable, up_down;
    output [3:0] q_out;
    reg [3:0] q_out;
    always @(posedge clk or negedge Reset_n)
    begin
        if (~Reset_n)
            q_out <= 4'b0000;
        else if (enable)
            if (up_down == 1)
                q_out <= q_out + 1;
            else if (up_down ==0)
                q_out <= q_out - 1;
    end
endmodule
