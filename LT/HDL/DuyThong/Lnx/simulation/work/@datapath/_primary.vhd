library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        \OUT\           : out    vl_logic_vector(15 downto 0);
        FLAG            : out    vl_logic;
        READY           : out    vl_logic;
        CLK             : in     vl_logic;
        \IN\            : in     vl_logic_vector(15 downto 0);
        RESET           : in     vl_logic;
        SEL             : in     vl_logic_vector(8 downto 0);
        MUX             : in     vl_logic_vector(1 downto 0);
        LOAD            : in     vl_logic_vector(6 downto 0);
        ENABLE          : in     vl_logic;
        VALID           : in     vl_logic;
        busMUL0         : out    vl_logic_vector(15 downto 0);
        busMUL1         : out    vl_logic_vector(15 downto 0);
        busDiv0         : out    vl_logic_vector(15 downto 0);
        busDiv1         : out    vl_logic_vector(15 downto 0);
        busTich         : out    vl_logic_vector(15 downto 0);
        busThuong       : out    vl_logic_vector(15 downto 0);
        busFULL         : out    vl_logic_vector(31 downto 0);
        bus14           : out    vl_logic_vector(15 downto 0)
    );
end Datapath;
