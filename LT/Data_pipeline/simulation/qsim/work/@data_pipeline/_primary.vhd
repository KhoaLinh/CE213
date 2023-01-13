library verilog;
use verilog.vl_types.all;
entity Data_pipeline is
    port(
        o               : out    vl_logic_vector(15 downto 0);
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0)
    );
end Data_pipeline;
