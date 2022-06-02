library verilog;
use verilog.vl_types.all;
entity ss4bit is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        bang            : out    vl_logic;
        lon             : out    vl_logic;
        be              : out    vl_logic
    );
end ss4bit;
