library verilog;
use verilog.vl_types.all;
entity Counter12bit_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        load_number     : in     vl_logic_vector(12 downto 0);
        mode            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Counter12bit_vlg_sample_tst;
