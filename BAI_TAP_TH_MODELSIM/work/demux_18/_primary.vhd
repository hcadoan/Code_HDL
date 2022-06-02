library verilog;
use verilog.vl_types.all;
entity demux_18 is
    port(
        D               : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0);
        Y               : out    vl_logic_vector(7 downto 0)
    );
end demux_18;
