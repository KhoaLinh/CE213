library verilog;
use verilog.vl_types.all;
entity clockedD_latch_vlg_sample_tst is
    port(
        D               : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end clockedD_latch_vlg_sample_tst;
