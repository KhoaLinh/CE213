library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        code            : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        ALUScr1         : out    vl_logic_vector(31 downto 0);
        ALUScr2         : out    vl_logic_vector(31 downto 0);
        alu_out         : out    vl_logic_vector(31 downto 0);
        WD              : out    vl_logic_vector(31 downto 0)
    );
end datapath;
