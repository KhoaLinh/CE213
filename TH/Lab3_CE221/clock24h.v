module clock24h(hex7,
                hex6,
                hex5,
                hex4,
                hex3,
                hex2,
                error,
                set,
                sethours,
                setmin,
                setsec,
                load,
                CLOCK_50);
    output [6:0]hex7,hex6,hex5,hex4,hex3,hex2;
    output reg error;
    input [7:0]set;
    input sethours,setmin,setsec,load,CLOCK_50;
    
    reg [3:0]hours,mins,secs;
    reg [3:0]q;
    reg onemin;
    reg stop;
    
    twoDigitBCD BCD_h(hex6,hex7,hours);
    twoDigitBCD BCD_m(hex4,hex5,mins);
    twoDigitBCD BCD_s(hex3,hex2,secs);
    
    clock_1s (clk,CLOCK_50);
    
    always @(*) begin
        if (hours == 4'bxxxx)
            hours = 4'b0000;
            if (mins == 4'bxxxx)
                mins = 4'b0000;
                if (secs == 4'bxxxx)
                    secs = 4'b0000;
                    end
        
        always @(posedge clk) begin
            if (!stop) begin
                secs = secs + 1;
            end
                if (secs == 60) begin
                    secs = 0;
                    mins = mins + 1;
                end
                    if (mins == 60) begin
                        mins  = 0;
                        hours = hours + 1;
                    end
                        if (hours == 24) begin
                            hours = 4'b0000;
                            mins  = 4'b0000;
                            secs  = 4'b0000;
                        end
        end
        
        always @(*) begin
            if (secs > 60 || mins > 60 || hours > 24)
                error = 1;
            else
                error = 0;
        end
        
        always @(sethours,setmin,setsec,posedge clk) begin
            if (!sethours || !setmin || !setsec) begin
                stop = 1;
            end
            else begin
                stop = 0;
            end
            if (sethours & !error & set < 23)
                hours = set;
            else if (setmin & !error & set < 59)
                mins = set;
            else if (setsec & !error & set < 59)
                secs = set;
                end
            
            endmodule
