library verilog;
use verilog.vl_types.all;
entity TL is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        NSR             : out    vl_logic;
        NSY             : out    vl_logic;
        NSG             : out    vl_logic;
        EWR             : out    vl_logic;
        EWY             : out    vl_logic;
        EWG             : out    vl_logic
    );
end TL;
