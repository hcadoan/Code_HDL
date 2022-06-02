library verilog;
use verilog.vl_types.all;
entity demux_14 is
    port(
        A               : in     vl_logic;
        E               : in     vl_logic;
        X               : in     vl_logic_vector(1 downto 0);
        I               : out    vl_logic_vector(3 downto 0)
    );
end demux_14;
