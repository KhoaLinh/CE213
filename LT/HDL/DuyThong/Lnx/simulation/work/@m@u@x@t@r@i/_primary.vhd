library verilog;
use verilog.vl_types.all;
entity MUXTRI is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        CONTROL         : in     vl_logic;
        \OUT\           : out    vl_logic_vector(15 downto 0)
    );
end MUXTRI;
