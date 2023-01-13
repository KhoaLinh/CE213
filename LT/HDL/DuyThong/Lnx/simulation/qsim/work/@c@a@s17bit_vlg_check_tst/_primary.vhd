library verilog;
use verilog.vl_types.all;
entity CAS17bit_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        result          : in     vl_logic_vector(16 downto 0);
        sampler_rx      : in     vl_logic
    );
end CAS17bit_vlg_check_tst;
