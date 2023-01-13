library verilog;
use verilog.vl_types.all;
entity bcd_counter is
    port(
        q               : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end bcd_counter;
