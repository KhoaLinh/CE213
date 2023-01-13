library verilog;
use verilog.vl_types.all;
entity REG16bit_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        LOAD            : in     vl_logic;
        RESET           : in     vl_logic;
        reg_now         : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end REG16bit_vlg_sample_tst;
