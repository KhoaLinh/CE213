library verilog;
use verilog.vl_types.all;
entity Controller is
    port(
        Q               : out    vl_logic_vector(3 downto 0);
        OE              : out    vl_logic_vector(11 downto 0);
        Op1             : out    vl_logic_vector(1 downto 0);
        Op2             : out    vl_logic_vector(1 downto 0);
        R5              : out    vl_logic;
        R4              : out    vl_logic;
        R3              : out    vl_logic;
        R2              : out    vl_logic;
        R1              : out    vl_logic;
        Start           : in     vl_logic;
        Reset           : in     vl_logic;
        Clk             : in     vl_logic
    );
end Controller;
