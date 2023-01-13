library verilog;
use verilog.vl_types.all;
entity ROM_lab5 is
    generic(
        Address_Width   : integer := 7;
        Data_Width      : integer := 8;
        Size            : vl_notype
    );
    port(
        clock           : in     vl_logic;
        cs              : in     vl_logic;
        rd_en           : in     vl_logic;
        addr            : in     vl_logic_vector;
        data_out        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Address_Width : constant is 1;
    attribute mti_svvh_generic_type of Data_Width : constant is 1;
    attribute mti_svvh_generic_type of Size : constant is 3;
end ROM_lab5;
