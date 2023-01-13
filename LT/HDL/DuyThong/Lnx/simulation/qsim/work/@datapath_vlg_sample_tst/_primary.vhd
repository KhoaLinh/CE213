library verilog;
use verilog.vl_types.all;
entity Datapath_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        ENABLE          : in     vl_logic;
        \IN\            : in     vl_logic_vector(15 downto 0);
        LOAD            : in     vl_logic_vector(6 downto 0);
        MUX             : in     vl_logic_vector(1 downto 0);
        RESET           : in     vl_logic;
        SEL             : in     vl_logic_vector(8 downto 0);
        VALID           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Datapath_vlg_sample_tst;
