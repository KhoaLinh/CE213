library verilog;
use verilog.vl_types.all;
entity getMode_vlg_check_tst is
    port(
        mode            : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end getMode_vlg_check_tst;
