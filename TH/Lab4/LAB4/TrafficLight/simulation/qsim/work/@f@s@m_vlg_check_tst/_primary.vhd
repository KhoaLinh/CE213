library verilog;
use verilog.vl_types.all;
entity FSM_vlg_check_tst is
    port(
        EWG             : in     vl_logic;
        EWR             : in     vl_logic;
        EWY             : in     vl_logic;
        NSG             : in     vl_logic;
        NSR             : in     vl_logic;
        NSY             : in     vl_logic;
        NextState       : in     vl_logic_vector(2 downto 0);
        delaymode       : in     vl_logic;
        zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FSM_vlg_check_tst;
