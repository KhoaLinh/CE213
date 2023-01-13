library verilog;
use verilog.vl_types.all;
entity DIV is
    port(
        Dividend        : in     vl_logic_vector(24 downto 0);
        Divisor         : in     vl_logic_vector(16 downto 0);
        Quotient        : out    vl_logic_vector(8 downto 0)
    );
end DIV;
