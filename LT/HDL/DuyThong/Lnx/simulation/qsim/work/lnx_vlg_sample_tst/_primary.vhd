library verilog;
use verilog.vl_types.all;
entity lnx_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        \IN\            : in     vl_logic_vector(15 downto 0);
        RESETstage      : in     vl_logic;
        START           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lnx_vlg_sample_tst;
