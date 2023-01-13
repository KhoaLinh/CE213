library verilog;
use verilog.vl_types.all;
entity tb_ROM_lab5 is
    generic(
        Address_Width   : integer := 7;
        Data_Width      : integer := 8;
        Size            : vl_notype
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Address_Width : constant is 1;
    attribute mti_svvh_generic_type of Data_Width : constant is 1;
    attribute mti_svvh_generic_type of Size : constant is 3;
end tb_ROM_lab5;
