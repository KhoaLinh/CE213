library verilog;
use verilog.vl_types.all;
entity ROM_lab5_vlg_check_tst is
    port(
        data            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end ROM_lab5_vlg_check_tst;
