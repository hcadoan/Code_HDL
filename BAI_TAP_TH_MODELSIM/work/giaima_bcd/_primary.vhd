library verilog;
use verilog.vl_types.all;
entity giaima_bcd is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        y               : out    vl_logic_vector(7 downto 0)
    );
end giaima_bcd;
