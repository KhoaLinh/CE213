library verilog;
use verilog.vl_types.all;
entity Controller_vlg_check_tst is
    port(
        ENABLE          : in     vl_logic;
        LOAD            : in     vl_logic_vector(6 downto 0);
        MUX             : in     vl_logic_vector(1 downto 0);
        RESET           : in     vl_logic;
        SEL             : in     vl_logic_vector(8 downto 0);
        VALID           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Controller_vlg_check_tst;
