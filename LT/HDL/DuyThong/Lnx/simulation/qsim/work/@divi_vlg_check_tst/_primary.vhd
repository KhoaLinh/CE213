library verilog;
use verilog.vl_types.all;
entity Divi_vlg_check_tst is
    port(
        Quotient        : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end Divi_vlg_check_tst;
