library verilog;
use verilog.vl_types.all;
entity CounterCheck is
    port(
        \OUT\           : out    vl_logic;
        \IN\            : in     vl_logic_vector(15 downto 0)
    );
end CounterCheck;
