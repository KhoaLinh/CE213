library verilog;
use verilog.vl_types.all;
entity REG_RS1 is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        LOAD            : in     vl_logic;
        \IN\            : in     vl_logic;
        Qnext           : out    vl_logic
    );
end REG_RS1;
