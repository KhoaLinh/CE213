library verilog;
use verilog.vl_types.all;
entity REG_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        \IN\            : in     vl_logic;
        LOAD            : in     vl_logic;
        RESET           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end REG_vlg_sample_tst;
