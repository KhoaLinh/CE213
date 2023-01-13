library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        inA             : in     vl_logic_vector(15 downto 0);
        inB             : in     vl_logic_vector(15 downto 0);
        load            : in     vl_logic_vector(4 downto 0);
        oe              : in     vl_logic_vector(11 downto 0);
        c1              : in     vl_logic_vector(1 downto 0);
        c2              : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic
    );
end Datapath;
