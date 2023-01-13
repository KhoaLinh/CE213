library verilog;
use verilog.vl_types.all;
entity counter4bit_parameter is
    port(
        q               : out    vl_logic_vector(3 downto 0);
        en              : in     vl_logic;
        clk             : in     vl_logic;
        clear           : in     vl_logic
    );
end counter4bit_parameter;
