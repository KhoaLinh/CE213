library verilog;
use verilog.vl_types.all;
entity DIV_vlg_sample_tst is
    port(
        Dividend        : in     vl_logic_vector(24 downto 0);
        Divisor         : in     vl_logic_vector(16 downto 0);
        sampler_tx      : out    vl_logic
    );
end DIV_vlg_sample_tst;
