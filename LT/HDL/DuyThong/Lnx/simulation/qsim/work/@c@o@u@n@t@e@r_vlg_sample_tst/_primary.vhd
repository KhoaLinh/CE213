library verilog;
use verilog.vl_types.all;
entity COUNTER_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        ENABLE          : in     vl_logic;
        RESET           : in     vl_logic;
        count_now       : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end COUNTER_vlg_sample_tst;
