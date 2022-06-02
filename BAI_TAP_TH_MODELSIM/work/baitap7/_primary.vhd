library verilog;
use verilog.vl_types.all;
entity baitap7 is
    port(
        u               : in     vl_logic;
        v               : in     vl_logic;
        w               : in     vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        s               : in     vl_logic_vector(2 downto 0);
        m               : out    vl_logic
    );
end baitap7;
