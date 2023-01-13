library verilog;
use verilog.vl_types.all;
entity MUL is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        LOAD            : in     vl_logic;
        \Wait\          : out    vl_logic;
        Ready           : out    vl_logic;
        result          : out    vl_logic_vector(31 downto 0)
    );
end MUL;
