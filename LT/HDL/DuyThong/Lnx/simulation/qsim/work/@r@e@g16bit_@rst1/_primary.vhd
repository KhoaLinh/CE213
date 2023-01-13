library verilog;
use verilog.vl_types.all;
entity REG16bit_Rst1 is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        LOAD            : in     vl_logic;
        \IN\            : in     vl_logic_vector(15 downto 0);
        Qnext           : out    vl_logic_vector(15 downto 0)
    );
end REG16bit_Rst1;
