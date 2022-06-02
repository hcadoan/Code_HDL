library verilog;
use verilog.vl_types.all;
entity baitap3 is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        led1            : out    vl_logic_vector(7 downto 0);
        led2            : out    vl_logic_vector(7 downto 0)
    );
end baitap3;
