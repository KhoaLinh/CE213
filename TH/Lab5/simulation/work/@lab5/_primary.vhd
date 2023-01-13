library verilog;
use verilog.vl_types.all;
entity Lab5 is
    port(
        q_out           : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        Reset_n         : in     vl_logic;
        enable          : in     vl_logic;
        up_down         : in     vl_logic
    );
end Lab5;
