library verilog;
use verilog.vl_types.all;
entity Controller_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        FLAG            : in     vl_logic;
        READY           : in     vl_logic;
        RESETstage      : in     vl_logic;
        START           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Controller_vlg_sample_tst;
