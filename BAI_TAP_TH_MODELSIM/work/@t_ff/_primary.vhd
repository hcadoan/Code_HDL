library verilog;
use verilog.vl_types.all;
entity T_ff is
    port(
        ck              : in     vl_logic;
        t               : in     vl_logic;
        rs              : in     vl_logic;
        q               : out    vl_logic
    );
end T_ff;
