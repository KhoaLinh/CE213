library verilog;
use verilog.vl_types.all;
entity traffic_light_vlg_sample_tst is
    port(
        c               : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end traffic_light_vlg_sample_tst;
