library verilog;
use verilog.vl_types.all;
entity demux14_4bit is
    port(
        I               : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic_vector(1 downto 0);
        A               : out    vl_logic_vector(3 downto 0);
        B               : out    vl_logic_vector(3 downto 0);
        C               : out    vl_logic_vector(3 downto 0);
        D               : out    vl_logic_vector(3 downto 0)
    );
end demux14_4bit;
