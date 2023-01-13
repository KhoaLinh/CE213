library verilog;
use verilog.vl_types.all;
entity FSM_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DONE            : in     vl_logic;
        RESET           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FSM_vlg_sample_tst;
