library verilog;
use verilog.vl_types.all;
entity d_ff_struct is
    port(
        q               : out    vl_logic;
        d               : in     vl_logic;
        clk             : in     vl_logic
    );
end d_ff_struct;
