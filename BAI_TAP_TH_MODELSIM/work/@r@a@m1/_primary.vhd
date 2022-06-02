library verilog;
use verilog.vl_types.all;
entity RAM1 is
    port(
        dataIn          : in     vl_logic_vector(7 downto 0);
        dataOut         : out    vl_logic_vector(7 downto 0);
        addr            : in     vl_logic_vector(7 downto 0);
        CS              : in     vl_logic;
        WE              : in     vl_logic;
        clk             : in     vl_logic
    );
end RAM1;
