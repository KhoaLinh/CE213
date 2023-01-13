library verilog;
use verilog.vl_types.all;
entity CAS_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        sum             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CAS_vlg_check_tst;
