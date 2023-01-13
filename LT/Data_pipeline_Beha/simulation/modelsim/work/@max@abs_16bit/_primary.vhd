library verilog;
use verilog.vl_types.all;
entity MaxAbs_16bit is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        inA             : in     vl_logic_vector(15 downto 0);
        inB             : in     vl_logic_vector(15 downto 0);
        c               : in     vl_logic
    );
end MaxAbs_16bit;
