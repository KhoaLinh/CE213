library verilog;
use verilog.vl_types.all;
entity AndRow is
    port(
        \IN\            : in     vl_logic_vector(31 downto 0);
        Bbit            : in     vl_logic;
        \OUT\           : out    vl_logic_vector(31 downto 0)
    );
end AndRow;
