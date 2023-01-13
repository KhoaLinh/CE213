library verilog;
use verilog.vl_types.all;
entity ControllerDecoder is
    port(
        RESET           : out    vl_logic;
        ENABLE          : out    vl_logic;
        MUX             : out    vl_logic_vector(1 downto 0);
        SEL             : out    vl_logic_vector(8 downto 0);
        LOAD            : out    vl_logic_vector(6 downto 0);
        VALID           : out    vl_logic;
        CurrentState    : in     vl_logic_vector(3 downto 0)
    );
end ControllerDecoder;
