library verilog;
use verilog.vl_types.all;
entity AddSubMax_16bit is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        inA             : in     vl_logic_vector(15 downto 0);
        inB             : in     vl_logic_vector(15 downto 0);
        c               : in     vl_logic_vector(1 downto 0)
    );
end AddSubMax_16bit;
