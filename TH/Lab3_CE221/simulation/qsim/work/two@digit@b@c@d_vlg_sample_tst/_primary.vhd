library verilog;
use verilog.vl_types.all;
entity twoDigitBCD_vlg_sample_tst is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end twoDigitBCD_vlg_sample_tst;
