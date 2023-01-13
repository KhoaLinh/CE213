library verilog;
use verilog.vl_types.all;
entity FSM is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        DONE            : in     vl_logic;
        NSR             : out    vl_logic;
        NSY             : out    vl_logic;
        NSG             : out    vl_logic;
        EWR             : out    vl_logic;
        EWY             : out    vl_logic;
        EWG             : out    vl_logic;
        zero            : out    vl_logic;
        delaymode       : out    vl_logic;
        NextState       : out    vl_logic_vector(2 downto 0)
    );
end FSM;
