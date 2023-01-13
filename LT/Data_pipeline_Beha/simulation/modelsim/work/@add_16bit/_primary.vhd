library verilog;
use verilog.vl_types.all;
entity Add_16bit is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        carry           : out    vl_logic;
        inA             : in     vl_logic_vector(15 downto 0);
        inB             : in     vl_logic_vector(15 downto 0)
    );
end Add_16bit;
