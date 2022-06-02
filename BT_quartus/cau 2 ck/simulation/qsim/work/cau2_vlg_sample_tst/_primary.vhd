library verilog;
use verilog.vl_types.all;
entity cau2_vlg_sample_tst is
    port(
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        BI_RBO          : in     vl_logic;
        LT              : in     vl_logic;
        RBI             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cau2_vlg_sample_tst;
