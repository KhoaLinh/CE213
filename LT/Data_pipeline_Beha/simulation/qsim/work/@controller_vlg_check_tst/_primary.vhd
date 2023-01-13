library verilog;
use verilog.vl_types.all;
entity Controller_vlg_check_tst is
    port(
        c1              : in     vl_logic_vector(1 downto 0);
        c2              : in     vl_logic_vector(1 downto 0);
        count           : in     vl_logic_vector(3 downto 0);
        load            : in     vl_logic_vector(4 downto 0);
        oe              : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end Controller_vlg_check_tst;
