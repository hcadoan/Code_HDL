library verilog;
use verilog.vl_types.all;
entity fsm1011 is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        x               : in     vl_logic;
        y               : out    vl_logic
    );
end fsm1011;
