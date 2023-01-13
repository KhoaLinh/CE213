library verilog;
use verilog.vl_types.all;
entity Squareroot_vlg_check_tst is
    port(
        count           : in     vl_logic_vector(3 downto 0);
        \out\           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end Squareroot_vlg_check_tst;
