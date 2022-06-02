library verilog;
use verilog.vl_types.all;
entity mux51_led7 is
    port(
        SW              : in     vl_logic_vector(2 downto 0);
        SW1             : in     vl_logic_vector(2 downto 0);
        SW2             : in     vl_logic_vector(2 downto 0);
        SW3             : in     vl_logic_vector(2 downto 0);
        SW4             : in     vl_logic_vector(2 downto 0);
        SW5             : in     vl_logic_vector(2 downto 0);
        HEX0            : out    vl_logic_vector(7 downto 0)
    );
end mux51_led7;
