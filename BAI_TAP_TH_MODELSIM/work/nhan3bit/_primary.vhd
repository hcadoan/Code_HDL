library verilog;
use verilog.vl_types.all;
entity nhan3bit is
    port(
        a               : in     vl_logic_vector(2 downto 0);
        b               : in     vl_logic_vector(2 downto 0);
        p               : out    vl_logic_vector(5 downto 0)
    );
end nhan3bit;
