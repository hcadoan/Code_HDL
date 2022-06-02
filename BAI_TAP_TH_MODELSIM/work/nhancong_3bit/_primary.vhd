library verilog;
use verilog.vl_types.all;
entity nhancong_3bit is
    port(
        A               : in     vl_logic_vector(2 downto 0);
        B               : in     vl_logic_vector(2 downto 0);
        C               : in     vl_logic_vector(2 downto 0);
        P               : out    vl_logic_vector(6 downto 0)
    );
end nhancong_3bit;
