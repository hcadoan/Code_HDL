library verilog;
use verilog.vl_types.all;
entity bcd_mod60 is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        bcd1            : out    vl_logic_vector(3 downto 0);
        bcd0            : out    vl_logic_vector(3 downto 0)
    );
end bcd_mod60;
