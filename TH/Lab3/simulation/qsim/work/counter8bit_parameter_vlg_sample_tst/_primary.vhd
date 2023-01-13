library verilog;
use verilog.vl_types.all;
entity counter8bit_parameter_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        en              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end counter8bit_parameter_vlg_sample_tst;
