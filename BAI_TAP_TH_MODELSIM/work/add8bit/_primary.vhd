library verilog;
use verilog.vl_types.all;
entity add8bit is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector(8 downto 0)
    );
end add8bit;
