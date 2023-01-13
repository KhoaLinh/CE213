library verilog;
use verilog.vl_types.all;
entity Dividendwire is
    port(
        \IN\            : in     vl_logic_vector(15 downto 0);
        \OUT\           : out    vl_logic_vector(24 downto 0)
    );
end Dividendwire;
