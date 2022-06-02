library verilog;
use verilog.vl_types.all;
entity fa is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        ci              : in     vl_logic;
        s               : out    vl_logic;
        co              : out    vl_logic
    );
end fa;
