library verilog;
use verilog.vl_types.all;
entity ROM_lab5_vlg_sample_tst is
    port(
        addr            : in     vl_logic_vector(6 downto 0);
        clock           : in     vl_logic;
        cs              : in     vl_logic;
        rd_en           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ROM_lab5_vlg_sample_tst;
