library verilog;
use verilog.vl_types.all;
entity COUNTER is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        ENABLE          : in     vl_logic;
        count_now       : in     vl_logic_vector(15 downto 0);
        count_next      : out    vl_logic_vector(15 downto 0)
    );
end COUNTER;
