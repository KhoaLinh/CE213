library verilog;
use verilog.vl_types.all;
entity counter8bit_parameter is
    port(
        q               : out    vl_logic_vector(7 downto 0);
        en              : in     vl_logic;
        clk             : in     vl_logic;
        clear           : in     vl_logic
    );
end counter8bit_parameter;
