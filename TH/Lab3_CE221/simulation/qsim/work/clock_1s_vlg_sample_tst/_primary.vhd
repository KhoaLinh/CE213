library verilog;
use verilog.vl_types.all;
entity clock_1s_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end clock_1s_vlg_sample_tst;
