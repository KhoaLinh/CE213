library verilog;
use verilog.vl_types.all;
entity Multi_vlg_check_tst is
    port(
        P               : in     vl_logic_vector(15 downto 0);
        Ready           : in     vl_logic;
        \Wait\          : in     vl_logic;
        result          : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end Multi_vlg_check_tst;
