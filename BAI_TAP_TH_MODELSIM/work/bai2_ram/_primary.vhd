library verilog;
use verilog.vl_types.all;
entity bai2_ram is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        Cs              : in     vl_logic;
        We              : in     vl_logic;
        CLk             : in     vl_logic;
        dataOUT         : out    vl_logic_vector(4 downto 0)
    );
end bai2_ram;
