library verilog;
use verilog.vl_types.all;
entity Controller_Decoder_vlg_check_tst is
    port(
        OE              : in     vl_logic_vector(11 downto 0);
        Op1             : in     vl_logic_vector(1 downto 0);
        Op2             : in     vl_logic_vector(1 downto 0);
        R1              : in     vl_logic;
        R2              : in     vl_logic;
        R3              : in     vl_logic;
        R4              : in     vl_logic;
        R5              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Controller_Decoder_vlg_check_tst;
