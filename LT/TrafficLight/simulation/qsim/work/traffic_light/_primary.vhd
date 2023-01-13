library verilog;
use verilog.vl_types.all;
entity traffic_light is
    port(
        start           : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        c               : in     vl_logic;
        HG              : out    vl_logic;
        HY              : out    vl_logic;
        HR              : out    vl_logic;
        FG              : out    vl_logic;
        FY              : out    vl_logic;
        FR              : out    vl_logic
    );
end traffic_light;
