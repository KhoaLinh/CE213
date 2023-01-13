module RAM_lab5
    #( parameter Address_Width = 7,
       parameter Data_Width = 8,
       parameter Size = 1 << Address_Width
    )
    ( input clock, cs, wr_e, oe,
      input [Address_Width-1:0] addr,
      inout [Data_Width-1:0] data
    );

    reg [Data_Width-1:0] mem[0:Size-1];
    reg [Data_Width-1:0] data_out;

    assign data = (oe && cs && !wr_e) ? data_out : {8{1'bz}};
    
    always @(posedge clock) begin
        if (cs && wr_e)
            mem[addr] <= data;
    end

    always @(posedge clock) begin
        if (cs && ~wr_e)
            data_out <= mem[addr];
    end
    
endmodule
