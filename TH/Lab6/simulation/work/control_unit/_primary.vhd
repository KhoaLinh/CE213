library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        RegDst          : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        MemToReg        : out    vl_logic;
        ALUOp           : out    vl_logic_vector(1 downto 0);
        ALUSrc          : out    vl_logic;
        ALUControl      : out    vl_logic_vector(3 downto 0);
        RegWrite        : out    vl_logic;
        Opcode          : in     vl_logic_vector(5 downto 0)
    );
end control_unit;
