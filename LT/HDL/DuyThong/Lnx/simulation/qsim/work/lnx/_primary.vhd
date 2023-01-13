library verilog;
use verilog.vl_types.all;
entity lnx is
    port(
        \OUT\           : out    vl_logic_vector(15 downto 0);
        \IN\            : in     vl_logic_vector(15 downto 0);
        CLK             : in     vl_logic;
        RESETstage      : in     vl_logic;
        START           : in     vl_logic;
        ENABLE          : out    vl_logic;
        VALID           : out    vl_logic;
        READY           : out    vl_logic;
        FLAG            : out    vl_logic;
        RESET           : out    vl_logic;
        busMUL0         : out    vl_logic_vector(15 downto 0);
        busMUL1         : out    vl_logic_vector(15 downto 0);
        busDiv0         : out    vl_logic_vector(15 downto 0);
        busDiv1         : out    vl_logic_vector(15 downto 0);
        busTich         : out    vl_logic_vector(15 downto 0);
        busThuong       : out    vl_logic_vector(15 downto 0)
    );
end lnx;
