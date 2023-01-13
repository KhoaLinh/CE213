library verilog;
use verilog.vl_types.all;
entity Squareroot_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        inA             : in     vl_logic_vector(15 downto 0);
        inB             : in     vl_logic_vector(15 downto 0);
        reset           : in     vl_logic;
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Squareroot_vlg_sample_tst;
