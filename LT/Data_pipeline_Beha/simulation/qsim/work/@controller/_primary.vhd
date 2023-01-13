library verilog;
use verilog.vl_types.all;
entity Controller is
    port(
        load            : out    vl_logic_vector(4 downto 0);
        oe              : out    vl_logic_vector(11 downto 0);
        c1              : out    vl_logic_vector(1 downto 0);
        c2              : out    vl_logic_vector(1 downto 0);
        start           : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        count           : out    vl_logic_vector(3 downto 0)
    );
end Controller;
