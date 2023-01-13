library verilog;
use verilog.vl_types.all;
entity getSignal is
    port(
        state           : in     vl_logic_vector(1 downto 0);
        HG              : out    vl_logic;
        HY              : out    vl_logic;
        HR              : out    vl_logic;
        FG              : out    vl_logic;
        FY              : out    vl_logic;
        FR              : out    vl_logic
    );
end getSignal;
