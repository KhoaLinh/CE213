library verilog;
use verilog.vl_types.all;
entity Counter12bit is
    port(
        load_number     : in     vl_logic_vector(12 downto 0);
        mode            : in     vl_logic;
        clk             : in     vl_logic;
        count_next      : out    vl_logic_vector(12 downto 0);
        full            : out    vl_logic
    );
end Counter12bit;
