library verilog;
use verilog.vl_types.all;
entity FSM_vlg_check_tst is
    port(
        next_state      : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end FSM_vlg_check_tst;
