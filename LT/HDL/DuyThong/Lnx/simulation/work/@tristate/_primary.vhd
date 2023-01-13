library verilog;
use verilog.vl_types.all;
entity Tristate is
    port(
        \IN\            : in     vl_logic_vector(15 downto 0);
        OE              : in     vl_logic;
        \OUT\           : out    vl_logic_vector(15 downto 0)
    );
end Tristate;
