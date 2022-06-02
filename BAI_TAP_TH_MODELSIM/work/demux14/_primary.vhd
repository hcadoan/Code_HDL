library verilog;
use verilog.vl_types.all;
entity demux14 is
    port(
        I               : in     vl_logic;
        s               : in     vl_logic_vector(1 downto 0);
        Y               : out    vl_logic_vector(3 downto 0)
    );
end demux14;
