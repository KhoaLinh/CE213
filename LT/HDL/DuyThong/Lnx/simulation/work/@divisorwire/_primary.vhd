library verilog;
use verilog.vl_types.all;
entity Divisorwire is
    port(
        \IN\            : in     vl_logic_vector(15 downto 0);
        \OUT\           : out    vl_logic_vector(16 downto 0)
    );
end Divisorwire;
