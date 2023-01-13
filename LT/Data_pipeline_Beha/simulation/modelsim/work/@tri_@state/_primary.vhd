library verilog;
use verilog.vl_types.all;
entity Tri_State is
    port(
        \out\           : out    vl_logic;
        \in\            : in     vl_logic;
        oe              : in     vl_logic
    );
end Tri_State;
