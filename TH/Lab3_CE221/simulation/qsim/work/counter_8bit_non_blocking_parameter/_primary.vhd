library verilog;
use verilog.vl_types.all;
entity counter_8bit_non_blocking_parameter is
    port(
        q               : out    vl_logic_vector(7 downto 0);
        en              : in     vl_logic;
        clk             : in     vl_logic;
        clear           : in     vl_logic
    );
end counter_8bit_non_blocking_parameter;
