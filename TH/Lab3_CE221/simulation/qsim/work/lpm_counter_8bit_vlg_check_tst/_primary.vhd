library verilog;
use verilog.vl_types.all;
entity lpm_counter_8bit_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end lpm_counter_8bit_vlg_check_tst;
