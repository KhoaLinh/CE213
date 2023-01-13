library verilog;
use verilog.vl_types.all;
entity Controller_vlg_sample_tst is
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Controller_vlg_sample_tst;
