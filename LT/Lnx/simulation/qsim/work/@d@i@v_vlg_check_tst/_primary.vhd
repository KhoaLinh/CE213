library verilog;
use verilog.vl_types.all;
entity DIV_vlg_check_tst is
    port(
        Quotient        : in     vl_logic_vector(8 downto 0);
        sampler_rx      : in     vl_logic
    );
end DIV_vlg_check_tst;
