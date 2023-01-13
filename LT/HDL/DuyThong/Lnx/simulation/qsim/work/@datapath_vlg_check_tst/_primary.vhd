library verilog;
use verilog.vl_types.all;
entity Datapath_vlg_check_tst is
    port(
        FLAG            : in     vl_logic;
        \OUT\           : in     vl_logic_vector(15 downto 0);
        READY           : in     vl_logic;
        busDiv0         : in     vl_logic_vector(15 downto 0);
        busDiv1         : in     vl_logic_vector(15 downto 0);
        busMUL0         : in     vl_logic_vector(15 downto 0);
        busMUL1         : in     vl_logic_vector(15 downto 0);
        busThuong       : in     vl_logic_vector(15 downto 0);
        busTich         : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end Datapath_vlg_check_tst;
