library verilog;
use verilog.vl_types.all;
entity Data_pipeline_Beha is
    port(
        bus1            : out    vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        start           : in     vl_logic;
        reset           : in     vl_logic;
        inA             : in     vl_logic_vector(15 downto 0);
        inB             : in     vl_logic_vector(15 downto 0);
        busALU1         : out    vl_logic_vector(15 downto 0);
        busALU2         : out    vl_logic_vector(15 downto 0);
        busR2           : out    vl_logic_vector(15 downto 0);
        busR3           : out    vl_logic_vector(15 downto 0);
        busR4           : out    vl_logic_vector(15 downto 0);
        busR5           : out    vl_logic_vector(15 downto 0);
        count           : out    vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end Data_pipeline_Beha;
