library verilog;
use verilog.vl_types.all;
entity counter_4bit_non_blocking_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        en              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end counter_4bit_non_blocking_vlg_sample_tst;
