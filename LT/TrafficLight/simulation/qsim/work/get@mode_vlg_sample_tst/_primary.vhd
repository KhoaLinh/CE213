library verilog;
use verilog.vl_types.all;
entity getMode_vlg_sample_tst is
    port(
        c               : in     vl_logic;
        full            : in     vl_logic;
        state           : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end getMode_vlg_sample_tst;
