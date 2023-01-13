library verilog;
use verilog.vl_types.all;
entity Counter is
    port(
        \out\           : out    vl_logic_vector(3 downto 0);
        start           : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic
    );
end Counter;
