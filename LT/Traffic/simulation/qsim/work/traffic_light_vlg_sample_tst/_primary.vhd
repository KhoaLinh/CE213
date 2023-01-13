library verilog;
use verilog.vl_types.all;
entity traffic_light_vlg_sample_tst is
    port(
        C               : in     vl_logic;
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end traffic_light_vlg_sample_tst;
