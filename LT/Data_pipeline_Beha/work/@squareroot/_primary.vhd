library verilog;
use verilog.vl_types.all;
entity Squareroot is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        count           : out    vl_logic_vector(3 downto 0);
        start           : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        inA             : in     vl_logic_vector(15 downto 0);
        inB             : in     vl_logic_vector(15 downto 0)
    );
end Squareroot;
