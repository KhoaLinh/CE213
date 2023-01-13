library verilog;
use verilog.vl_types.all;
entity ROM_lab5 is
    port(
        clock           : in     vl_logic;
        cs              : in     vl_logic;
        rd_en           : in     vl_logic;
        addr            : in     vl_logic_vector(6 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end ROM_lab5;
