library verilog;
use verilog.vl_types.all;
entity traffic_light_vlg_check_tst is
    port(
        light_farm      : in     vl_logic_vector(2 downto 0);
        light_highway   : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end traffic_light_vlg_check_tst;
