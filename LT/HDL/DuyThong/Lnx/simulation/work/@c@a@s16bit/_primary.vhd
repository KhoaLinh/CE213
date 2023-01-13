library verilog;
use verilog.vl_types.all;
entity CAS16bit is
    port(
        control         : in     vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        cin             : in     vl_logic;
        result          : out    vl_logic_vector(15 downto 0);
        cout            : out    vl_logic
    );
end CAS16bit;
