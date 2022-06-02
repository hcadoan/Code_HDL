library verilog;
use verilog.vl_types.all;
entity bai5_ff is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        q               : out    vl_logic_vector(4 downto 0)
    );
end bai5_ff;
