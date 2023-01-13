library verilog;
use verilog.vl_types.all;
entity traffic_light is
    port(
        light_highway   : out    vl_logic_vector(2 downto 0);
        light_farm      : out    vl_logic_vector(2 downto 0);
        C               : in     vl_logic;
        clk             : in     vl_logic;
        rst_n           : in     vl_logic
    );
end traffic_light;
