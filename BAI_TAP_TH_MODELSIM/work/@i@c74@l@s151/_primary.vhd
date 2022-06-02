library verilog;
use verilog.vl_types.all;
entity IC74LS151 is
    port(
        E               : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0);
        I               : in     vl_logic_vector(7 downto 0);
        Z               : out    vl_logic;
        Y               : out    vl_logic
    );
end IC74LS151;
