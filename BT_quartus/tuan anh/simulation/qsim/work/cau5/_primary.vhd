library verilog;
use verilog.vl_types.all;
entity cau5 is
    port(
        x               : in     vl_logic;
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        ht              : out    vl_logic_vector(2 downto 0)
    );
end cau5;
