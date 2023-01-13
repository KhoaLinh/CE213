library verilog;
use verilog.vl_types.all;
entity MUL_vlg_check_tst is
    port(
        P               : in     vl_logic_vector(15 downto 0);
        Ready           : in     vl_logic;
        \Wait\          : in     vl_logic;
        result          : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end MUL_vlg_check_tst;
