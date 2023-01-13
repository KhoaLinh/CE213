library verilog;
use verilog.vl_types.all;
entity Registers is
    port(
        RD1             : out    vl_logic_vector(31 downto 0);
        RD2             : out    vl_logic_vector(31 downto 0);
        RR1             : in     vl_logic_vector(4 downto 0);
        RR2             : in     vl_logic_vector(4 downto 0);
        WR              : in     vl_logic_vector(4 downto 0);
        WD              : in     vl_logic_vector(31 downto 0);
        reg_write       : in     vl_logic;
        clk             : in     vl_logic
    );
end Registers;
