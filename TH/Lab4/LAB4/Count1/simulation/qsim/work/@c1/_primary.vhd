library verilog;
use verilog.vl_types.all;
entity C1 is
    port(
        W               : in     vl_logic;
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        Z               : out    vl_logic
    );
end C1;
