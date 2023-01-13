library verilog;
use verilog.vl_types.all;
entity REG_vlg_check_tst is
    port(
        Qnext           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end REG_vlg_check_tst;
