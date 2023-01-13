library verilog;
use verilog.vl_types.all;
entity Controller is
    port(
        CLK             : in     vl_logic;
        RESETstage      : in     vl_logic;
        RESET           : out    vl_logic;
        START           : in     vl_logic;
        ENABLE          : out    vl_logic;
        MUX             : out    vl_logic_vector(1 downto 0);
        SEL             : out    vl_logic_vector(8 downto 0);
        LOAD            : out    vl_logic_vector(6 downto 0);
        VALID           : out    vl_logic;
        READY           : in     vl_logic;
        FLAG            : in     vl_logic
    );
end Controller;
