library verilog;
use verilog.vl_types.all;
entity twoDigitBCD is
    port(
        num0            : out    vl_logic_vector(3 downto 0);
        num1            : out    vl_logic_vector(3 downto 0);
        \in\            : in     vl_logic_vector(7 downto 0)
    );
end twoDigitBCD;
