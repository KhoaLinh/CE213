library verilog;
use verilog.vl_types.all;
entity regX is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        LOAD            : in     vl_logic;
        sign_now        : in     vl_logic;
        data_now        : in     vl_logic_vector(14 downto 0);
        sign_next       : out    vl_logic;
        data_next       : out    vl_logic_vector(14 downto 0)
    );
end regX;
