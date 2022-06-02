library verilog;
use verilog.vl_types.all;
entity giaima_np is
    port(
        q               : in     vl_logic_vector(3 downto 0);
        y1              : out    vl_logic_vector(7 downto 0);
        y2              : out    vl_logic_vector(7 downto 0)
    );
end giaima_np;
