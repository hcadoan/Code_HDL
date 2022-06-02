library verilog;
use verilog.vl_types.all;
entity giaima_8led7 is
    port(
        M               : in     vl_logic_vector(2 downto 0);
        HEX0            : out    vl_logic_vector(7 downto 0);
        HEX1            : out    vl_logic_vector(7 downto 0);
        HEX2            : out    vl_logic_vector(7 downto 0);
        HEX3            : out    vl_logic_vector(7 downto 0);
        HEX4            : out    vl_logic_vector(7 downto 0);
        HEX5            : out    vl_logic_vector(7 downto 0);
        HEX6            : out    vl_logic_vector(7 downto 0);
        HEX7            : out    vl_logic_vector(7 downto 0)
    );
end giaima_8led7;
