library verilog;
use verilog.vl_types.all;
entity COUNTER_vlg_check_tst is
    port(
        count_next      : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end COUNTER_vlg_check_tst;
