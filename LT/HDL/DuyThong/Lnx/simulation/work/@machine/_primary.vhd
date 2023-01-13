library verilog;
use verilog.vl_types.all;
entity Machine is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        stage_now       : in     vl_logic_vector(3 downto 0);
        stage_next      : out    vl_logic_vector(3 downto 0)
    );
end Machine;
