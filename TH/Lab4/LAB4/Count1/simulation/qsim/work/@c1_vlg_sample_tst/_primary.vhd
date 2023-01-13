library verilog;
use verilog.vl_types.all;
entity C1_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        W               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end C1_vlg_sample_tst;
