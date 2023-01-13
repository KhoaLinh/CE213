library verilog;
use verilog.vl_types.all;
entity NextStageLogic is
    port(
        CurrentState    : in     vl_logic_vector(3 downto 0);
        Start           : in     vl_logic;
        Flag            : in     vl_logic;
        Ready           : in     vl_logic;
        \Next\          : out    vl_logic_vector(3 downto 0)
    );
end NextStageLogic;
