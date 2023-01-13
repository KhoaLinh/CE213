library verilog;
use verilog.vl_types.all;
entity GetWait is
    port(
        \in\            : in     vl_logic_vector(23 downto 0);
        \Wait\          : out    vl_logic
    );
end GetWait;
