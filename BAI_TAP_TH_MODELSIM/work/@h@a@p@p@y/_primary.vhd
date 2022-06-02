library verilog;
use verilog.vl_types.all;
entity HAPPY is
    port(
        SW              : in     vl_logic_vector(3 downto 0);
        HEX0            : out    vl_logic_vector(7 downto 0);
        HEX1            : out    vl_logic_vector(7 downto 0);
        HEX2            : out    vl_logic_vector(7 downto 0);
        HEX3            : out    vl_logic_vector(7 downto 0);
        HEX4            : out    vl_logic_vector(7 downto 0)
    );
end HAPPY;
