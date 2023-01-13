library verilog;
use verilog.vl_types.all;
entity lpm_counter_8bit is
    port(
        clock           : in     vl_logic;
        cnt_en          : in     vl_logic;
        sclr            : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end lpm_counter_8bit;
