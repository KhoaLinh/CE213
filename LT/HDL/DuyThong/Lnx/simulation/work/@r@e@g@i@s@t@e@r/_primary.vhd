library verilog;
use verilog.vl_types.all;
entity \REGISTER\ is
    port(
        \IN\            : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        CLK             : in     vl_logic;
        Q               : out    vl_logic
    );
end \REGISTER\;
