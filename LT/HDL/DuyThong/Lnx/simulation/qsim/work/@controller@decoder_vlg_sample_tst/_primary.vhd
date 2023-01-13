library verilog;
use verilog.vl_types.all;
entity ControllerDecoder_vlg_sample_tst is
    port(
        CurrentState    : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end ControllerDecoder_vlg_sample_tst;
