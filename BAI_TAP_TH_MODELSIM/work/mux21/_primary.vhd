library verilog;
use verilog.vl_types.all;
entity mux21 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        s               : in     vl_logic;
        Y               : out    vl_logic
    );
end mux21;
