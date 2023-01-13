library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        result          : out    vl_logic_vector(31 downto 0);
        inA             : in     vl_logic_vector(31 downto 0);
        inB             : in     vl_logic_vector(31 downto 0);
        s               : in     vl_logic_vector(2 downto 0)
    );
end ALU;
