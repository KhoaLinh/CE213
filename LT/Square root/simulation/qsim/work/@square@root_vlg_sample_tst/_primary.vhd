library verilog;
use verilog.vl_types.all;
entity SquareRoot_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SquareRoot_vlg_sample_tst;
