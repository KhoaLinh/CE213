library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        sel             : in     vl_logic;
        y               : out    vl_logic
    );
end mux;
