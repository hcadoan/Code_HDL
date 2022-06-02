library verilog;
use verilog.vl_types.all;
entity RAM2 is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        dataOut         : out    vl_logic_vector(4 downto 0);
        CS              : in     vl_logic;
        WE              : in     vl_logic;
        clk             : in     vl_logic
    );
end RAM2;
