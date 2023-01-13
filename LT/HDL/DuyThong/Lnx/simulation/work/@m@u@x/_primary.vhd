library verilog;
use verilog.vl_types.all;
entity MUX is
    port(
        IN0             : in     vl_logic_vector(15 downto 0);
        IN1             : in     vl_logic_vector(15 downto 0);
        \OUT\           : out    vl_logic_vector(15 downto 0);
        SEL             : in     vl_logic
    );
end MUX;
