library verilog;
use verilog.vl_types.all;
entity counter_8bit_non_blocking_parameter_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end counter_8bit_non_blocking_parameter_vlg_check_tst;
