library verilog;
use verilog.vl_types.all;
entity ROM_cau1 is
    port(
        dataOut         : out    vl_logic_vector(7 downto 0);
        addr            : in     vl_logic_vector(3 downto 0);
        cs              : in     vl_logic;
        rd              : in     vl_logic;
        clk             : in     vl_logic
    );
end ROM_cau1;
