library verilog;
use verilog.vl_types.all;
entity cau5 is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        A               : out    vl_logic_vector(7 downto 0);
        B               : out    vl_logic_vector(7 downto 0);
        C               : out    vl_logic_vector(7 downto 0);
        D               : out    vl_logic_vector(7 downto 0);
        E               : out    vl_logic_vector(7 downto 0)
    );
end cau5;
