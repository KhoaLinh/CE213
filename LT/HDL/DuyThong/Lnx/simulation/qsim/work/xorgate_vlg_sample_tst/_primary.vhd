library verilog;
use verilog.vl_types.all;
entity xorgate_vlg_sample_tst is
    port(
        INA             : in     vl_logic_vector(15 downto 0);
        INB             : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end xorgate_vlg_sample_tst;
