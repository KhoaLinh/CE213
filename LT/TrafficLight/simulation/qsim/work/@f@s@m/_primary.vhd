library verilog;
use verilog.vl_types.all;
entity FSM is
    port(
        full            : in     vl_logic;
        c               : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        state           : in     vl_logic_vector(1 downto 0);
        next_state      : out    vl_logic_vector(1 downto 0)
    );
end FSM;
