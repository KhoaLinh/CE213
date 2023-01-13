library verilog;
use verilog.vl_types.all;
entity REG32bit is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        LOAD            : in     vl_logic;
        reg_now         : in     vl_logic_vector(31 downto 0);
        reg_next        : out    vl_logic_vector(31 downto 0)
    );
end REG32bit;
