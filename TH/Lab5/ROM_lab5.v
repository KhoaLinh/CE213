module ROM_lab5
    #( parameter Address_Width = 7,
       parameter Data_Width = 8,
       parameter Size = 1 << Address_Width
    )
    ( input clock, cs, rd_en,
      input [Address_Width-1:0] addr,
      output [Data_Width-1:0] data_out
    );

    reg [Data_Width-1:0] mem[0:Size-1];
    reg [Data_Width-1:0] data;

    assign data_out = ( cs && rd_en) ? data : 'hz;

    always @(posedge clock) begin
        if (cs && rd_en)
            data = mem[addr];
    end

endmodule


