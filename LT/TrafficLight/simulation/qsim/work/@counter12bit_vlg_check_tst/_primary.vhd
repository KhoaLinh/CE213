library verilog;
use verilog.vl_types.all;
entity Counter12bit_vlg_check_tst is
    port(
        count_next      : in     vl_logic_vector(12 downto 0);
        full            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Counter12bit_vlg_check_tst;
