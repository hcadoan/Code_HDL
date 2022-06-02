library verilog;
use verilog.vl_types.all;
entity cau3 is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        S               : in     vl_logic;
        load            : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end cau3;
