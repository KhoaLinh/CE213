library verilog;
use verilog.vl_types.all;
entity Data_pipeline_Beha is
    port(
        c               : in     vl_logic;
        OE              : in     vl_logic;
        inA             : in     vl_logic_vector(15 downto 0);
        inB             : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end Data_pipeline_Beha;
