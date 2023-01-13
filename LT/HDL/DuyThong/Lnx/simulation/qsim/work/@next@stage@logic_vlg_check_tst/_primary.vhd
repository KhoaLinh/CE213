library verilog;
use verilog.vl_types.all;
entity NextStageLogic_vlg_check_tst is
    port(
        \Next\          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end NextStageLogic_vlg_check_tst;
