library verilog;
use verilog.vl_types.all;
entity Lab1_CE221 is
    port(
        hex0            : out    vl_logic_vector(6 downto 0);
        \in\            : in     vl_logic_vector(3 downto 0);
        hex1            : out    vl_logic_vector(6 downto 0)
    );
end Lab1_CE221;
