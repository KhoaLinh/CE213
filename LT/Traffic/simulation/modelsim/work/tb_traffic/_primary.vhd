library verilog;
use verilog.vl_types.all;
entity tb_traffic is
    generic(
        ENDTIME         : integer := 400000
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ENDTIME : constant is 1;
end tb_traffic;
