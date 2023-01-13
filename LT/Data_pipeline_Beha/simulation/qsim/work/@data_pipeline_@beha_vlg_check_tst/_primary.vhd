library verilog;
use verilog.vl_types.all;
entity Data_pipeline_Beha_vlg_check_tst is
    port(
        bus1            : in     vl_logic_vector(15 downto 0);
        busALU1         : in     vl_logic_vector(15 downto 0);
        busALU2         : in     vl_logic_vector(15 downto 0);
        busR2           : in     vl_logic_vector(15 downto 0);
        busR3           : in     vl_logic_vector(15 downto 0);
        busR4           : in     vl_logic_vector(15 downto 0);
        busR5           : in     vl_logic_vector(15 downto 0);
        count           : in     vl_logic_vector(3 downto 0);
        \out\           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end Data_pipeline_Beha_vlg_check_tst;
