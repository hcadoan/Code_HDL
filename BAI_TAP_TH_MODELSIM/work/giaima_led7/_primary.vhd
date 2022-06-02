library verilog;
use verilog.vl_types.all;
entity giaima_led7 is
    port(
        M               : in     vl_logic_vector(2 downto 0);
        HEX0            : out    vl_logic_vector(7 downto 0)
    );
end giaima_led7;
