library verilog;
use verilog.vl_types.all;
entity CounterCheck_vlg_sample_tst is
    port(
        \IN\            : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end CounterCheck_vlg_sample_tst;
