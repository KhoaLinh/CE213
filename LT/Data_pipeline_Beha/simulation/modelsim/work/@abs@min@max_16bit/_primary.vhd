library verilog;
use verilog.vl_types.all;
entity AbsMinMax_16bit is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        inA             : in     vl_logic_vector(15 downto 0);
        inB             : in     vl_logic_vector(15 downto 0);
        c               : in     vl_logic_vector(1 downto 0)
    );
end AbsMinMax_16bit;
