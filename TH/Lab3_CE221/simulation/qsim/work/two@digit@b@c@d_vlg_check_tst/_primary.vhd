library verilog;
use verilog.vl_types.all;
entity twoDigitBCD_vlg_check_tst is
    port(
        num0            : in     vl_logic_vector(3 downto 0);
        num1            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end twoDigitBCD_vlg_check_tst;
