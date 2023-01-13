library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        code            : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic
    );
end datapath;
