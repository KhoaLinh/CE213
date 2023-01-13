library verilog;
use verilog.vl_types.all;
entity Controller_Decoder is
    port(
        OE              : out    vl_logic_vector(11 downto 0);
        Op1             : out    vl_logic_vector(1 downto 0);
        Op2             : out    vl_logic_vector(1 downto 0);
        R5              : out    vl_logic;
        R4              : out    vl_logic;
        R3              : out    vl_logic;
        R2              : out    vl_logic;
        R1              : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic
    );
end Controller_Decoder;
