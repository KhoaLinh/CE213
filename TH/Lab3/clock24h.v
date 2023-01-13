module clock24h(hex7,
                hex6,
                hex5,
                hex4,
                hex3,
                hex2,
                error,
                set,
                sethours,
                setmins,
                setsecs,
                load,
                CLOCK_50);
    output [6:0]hex7,hex6,hex5,hex4,hex3,hex2;
    output reg error;
    input [7:0]set;
    input sethours,setmins,setsecs,load,CLOCK_50;
    
    reg [3:0]hours,mins,secs;
    reg stop;
    
    twodigitBCDcounter BCD_h(hex6,hex7,hours);
    twodigitBCDcounter BCD_m(hex4,hex5,mins);
    twodigitBCDcounter BCD_s(hex3,hex2,secs);
    
    clock1s clock(clk,CLOCK_50);
    
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
                            if (load & !error) begin
                                if (sethours)
                                    hours = set;
                                else if (setmins)
                                    mins = set;
                                else if (setsecs)
                                    secs = set;
                                    end
                                    end
                                
                                always @(*) begin
                                    if (!stop) begin
                                        if (secs > 60 && mins > 60 && hours > 24)
                                            error = 1;
                                        else
                                            error = 0;
                                    end
                                    else begin
                                        if (sethours && !setmins && !setsecs) begin
                                            if (set > 23)
                                                error = 1;
                                            else
                                                error = 0;
                                        end
                                            if (!sethours && setmins && !setsecs) begin
                                                if (set > 59)
                                                    error = 1;
                                                else
                                                    error = 0;
                                            end
                                                if (!sethours && !setmins && setsecs) begin
                                                    if (set > 59)
                                                        error = 1;
                                                    else
                                                        error = 0;
                                                end
                                    end
                                end
                                
                                always @(posedge sethours or posedge setmins or posedge setsecs) begin
                                    if (sethours || setmins || setsecs)
                                        stop = 1;
                                    else
                                        stop = 0;
                                end
                                endmodule