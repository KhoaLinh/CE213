library verilog;
use verilog.vl_types.all;
entity Divi_vlg_sample_tst is
    port(
        Dividend        : in     vl_logic_vector(15 downto 0);
        Divisor         : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end Divi_vlg_sample_tst;
