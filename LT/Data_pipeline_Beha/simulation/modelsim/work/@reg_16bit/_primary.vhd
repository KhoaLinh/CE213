library verilog;
use verilog.vl_types.all;
entity Reg_16bit is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0);
        load            : in     vl_logic;
        clk             : in     vl_logic
    );
end Reg_16bit;
