library verilog;
use verilog.vl_types.all;
entity IC82C19 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        STB             : in     vl_logic;
        E               : in     vl_logic_vector(15 downto 0);
        W               : out    vl_logic
    );
end IC82C19;
