library verilog;
use verilog.vl_types.all;
entity mux81_8led7 is
    port(
        SW              : in     vl_logic_vector(2 downto 0);
        SW1             : in     vl_logic_vector(2 downto 0);
        SW2             : in     vl_logic_vector(2 downto 0);
        SW3             : in     vl_logic_vector(2 downto 0);
        SW4             : in     vl_logic_vector(2 downto 0);
        SW5             : in     vl_logic_vector(2 downto 0);
        SW6             : in     vl_logic_vector(2 downto 0);
        SW7             : in     vl_logic_vector(2 downto 0);
        SW8             : in     vl_logic_vector(2 downto 0);
        HEX0            : out    vl_logic_vector(7 downto 0);
        HEX1            : out    vl_logic_vector(7 downto 0);
        HEX2            : out    vl_logic_vector(7 downto 0);
        HEX3            : out    vl_logic_vector(7 downto 0);
        HEX4            : out    vl_logic_vector(7 downto 0);
        HEX5            : out    vl_logic_vector(7 downto 0);
        HEX6            : out    vl_logic_vector(7 downto 0);
        HEX7            : out    vl_logic_vector(7 downto 0)
    );
end mux81_8led7;
