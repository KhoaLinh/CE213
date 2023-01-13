library verilog;
use verilog.vl_types.all;
entity ROM is
    generic(
        Width           : integer := 16;
        Depth           : integer := 1024
    );
    port(
        clk             : in     vl_logic;
        rdAddr          : in     vl_logic_vector;
        rdData          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Width : constant is 1;
    attribute mti_svvh_generic_type of Depth : constant is 1;
end ROM;
