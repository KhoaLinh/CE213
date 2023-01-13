library verilog;
use verilog.vl_types.all;
entity DataMem is
    generic(
        Address_Width   : integer := 7;
        Data_Width      : integer := 32;
        Size            : vl_notype
    );
    port(
        read_data       : out    vl_logic_vector;
        address         : in     vl_logic_vector;
        write_data      : in     vl_logic_vector;
        mem_write       : in     vl_logic;
        mem_read        : in     vl_logic;
        clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Address_Width : constant is 1;
    attribute mti_svvh_generic_type of Data_Width : constant is 1;
    attribute mti_svvh_generic_type of Size : constant is 3;
end DataMem;
