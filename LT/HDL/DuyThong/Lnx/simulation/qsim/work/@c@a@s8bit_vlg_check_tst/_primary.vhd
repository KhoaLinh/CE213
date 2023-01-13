library verilog;
use verilog.vl_types.all;
entity CAS8bit_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        result          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end CAS8bit_vlg_check_tst;
