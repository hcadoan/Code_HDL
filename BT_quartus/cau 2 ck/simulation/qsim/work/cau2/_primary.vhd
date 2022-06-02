library verilog;
use verilog.vl_types.all;
entity cau2 is
    port(
        LT              : in     vl_logic;
        RBI             : in     vl_logic;
        BI_RBO          : in     vl_logic;
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic
    );
end cau2;
