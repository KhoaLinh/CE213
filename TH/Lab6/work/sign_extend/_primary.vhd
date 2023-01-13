library verilog;
use verilog.vl_types.all;
entity sign_extend is
    port(
        \out\           : out    vl_logic_vector(31 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0)
    );
end sign_extend;
