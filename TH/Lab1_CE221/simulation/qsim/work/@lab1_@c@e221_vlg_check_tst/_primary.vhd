library verilog;
use verilog.vl_types.all;
entity Lab1_CE221_vlg_check_tst is
    port(
        hex0            : in     vl_logic_vector(6 downto 0);
        hex1            : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end Lab1_CE221_vlg_check_tst;
