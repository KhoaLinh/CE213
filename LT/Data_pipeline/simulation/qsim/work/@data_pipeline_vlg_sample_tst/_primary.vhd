library verilog;
use verilog.vl_types.all;
entity Data_pipeline_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end Data_pipeline_vlg_sample_tst;
