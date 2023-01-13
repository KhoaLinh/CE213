library verilog;
use verilog.vl_types.all;
entity getSignal_vlg_sample_tst is
    port(
        state           : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end getSignal_vlg_sample_tst;
