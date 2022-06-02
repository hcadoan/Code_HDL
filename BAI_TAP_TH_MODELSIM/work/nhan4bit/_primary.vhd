library verilog;
use verilog.vl_types.all;
entity nhan4bit is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        p               : out    vl_logic_vector(7 downto 0)
    );
end nhan4bit;
