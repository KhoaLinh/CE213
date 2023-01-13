library verilog;
use verilog.vl_types.all;
entity CAS is
    port(
        control         : in     vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        cin             : in     vl_logic;
        sum             : out    vl_logic;
        cout            : out    vl_logic
    );
end CAS;
