library verilog;
use verilog.vl_types.all;
entity MUXTRI6D is
    port(
        IN0             : in     vl_logic_vector(15 downto 0);
        IN1             : in     vl_logic_vector(15 downto 0);
        IN2             : in     vl_logic_vector(15 downto 0);
        IN3             : in     vl_logic_vector(15 downto 0);
        IN4             : in     vl_logic_vector(15 downto 0);
        IN5             : in     vl_logic_vector(15 downto 0);
        \OUT\           : out    vl_logic_vector(15 downto 0);
        SEL             : in     vl_logic
    );
end MUXTRI6D;
