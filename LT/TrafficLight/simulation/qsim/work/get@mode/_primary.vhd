library verilog;
use verilog.vl_types.all;
entity getMode is
    port(
        state           : in     vl_logic_vector(1 downto 0);
        full            : in     vl_logic;
        c               : in     vl_logic;
        mode            : out    vl_logic_vector(1 downto 0)
    );
end getMode;
