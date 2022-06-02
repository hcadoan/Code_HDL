library verilog;
use verilog.vl_types.all;
entity bai2_ff is
    port(
        E               : in     vl_logic;
        CK              : in     vl_logic;
        CLR             : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end bai2_ff;
