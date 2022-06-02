library verilog;
use verilog.vl_types.all;
entity cau4 is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        DATA            : in     vl_logic;
        Y1              : out    vl_logic;
        Y2              : out    vl_logic;
        c               : out    vl_logic_vector(3 downto 0)
    );
end cau4;
