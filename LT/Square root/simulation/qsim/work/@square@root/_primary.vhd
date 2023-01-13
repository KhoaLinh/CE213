library verilog;
use verilog.vl_types.all;
entity SquareRoot is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        Start           : in     vl_logic;
        Reset           : in     vl_logic;
        Clk             : in     vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0)
    );
end SquareRoot;
