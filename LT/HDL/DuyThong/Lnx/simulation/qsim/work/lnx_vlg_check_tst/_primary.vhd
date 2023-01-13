library verilog;
use verilog.vl_types.all;
entity lnx_vlg_check_tst is
    port(
        ENABLE          : in     vl_logic;
        FLAG            : in     vl_logic;
        \OUT\           : in     vl_logic_vector(15 downto 0);
        READY           : in     vl_logic;
        RESET           : in     vl_logic;
        VALID           : in     vl_logic;
        busDiv0         : in     vl_logic_vector(15 downto 0);
        busDiv1         : in     vl_logic_vector(15 downto 0);
        busMUL0         : in     vl_logic_vector(15 downto 0);
        busMUL1         : in     vl_logic_vector(15 downto 0);
        busThuong       : in     vl_logic_vector(15 downto 0);
        busTich         : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end lnx_vlg_check_tst;
