library verilog;
use verilog.vl_types.all;
entity clock_1s is
    port(
        clk             : out    vl_logic;
        CLOCK_50        : in     vl_logic
    );
end clock_1s;
