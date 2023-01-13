library verilog;
use verilog.vl_types.all;
entity xorgate is
    port(
        \OUT\           : out    vl_logic;
        INA             : in     vl_logic_vector(15 downto 0);
        INB             : in     vl_logic_vector(15 downto 0)
    );
end xorgate;
