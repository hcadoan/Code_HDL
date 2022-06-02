library verilog;
use verilog.vl_types.all;
entity Cong4bit is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        datain          : out    vl_logic_vector(4 downto 0);
        addr            : out    vl_logic_vector(7 downto 0)
    );
end Cong4bit;
