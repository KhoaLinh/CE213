library verilog;
use verilog.vl_types.all;
entity NextStageLogic_vlg_sample_tst is
    port(
        CurrentState    : in     vl_logic_vector(3 downto 0);
        Flag            : in     vl_logic;
        Ready           : in     vl_logic;
        Start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end NextStageLogic_vlg_sample_tst;
