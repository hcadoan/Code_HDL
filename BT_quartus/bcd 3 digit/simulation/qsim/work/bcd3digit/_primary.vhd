library verilog;
use verilog.vl_types.all;
entity bcd3digit is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        bcd2            : out    vl_logic_vector(3 downto 0);
        bcd1            : out    vl_logic_vector(3 downto 0);
        bcd0            : out    vl_logic_vector(3 downto 0)
    );
end bcd3digit;
