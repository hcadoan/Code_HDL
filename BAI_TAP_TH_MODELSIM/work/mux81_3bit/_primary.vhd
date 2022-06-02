library verilog;
use verilog.vl_types.all;
entity mux81_3bit is
    port(
        S               : in     vl_logic_vector(2 downto 0);
        A               : in     vl_logic_vector(2 downto 0);
        B               : in     vl_logic_vector(2 downto 0);
        C               : in     vl_logic_vector(2 downto 0);
        D               : in     vl_logic_vector(2 downto 0);
        E               : in     vl_logic_vector(2 downto 0);
        F               : in     vl_logic_vector(2 downto 0);
        G               : in     vl_logic_vector(2 downto 0);
        H               : in     vl_logic_vector(2 downto 0);
        M               : out    vl_logic_vector(2 downto 0)
    );
end mux81_3bit;
