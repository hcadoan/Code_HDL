library verilog;
use verilog.vl_types.all;
entity mux81 is
    port(
        s               : in     vl_logic_vector(2 downto 0);
        x               : in     vl_logic_vector(7 downto 0);
        y               : out    vl_logic
    );
end mux81;
