library verilog;
use verilog.vl_types.all;
entity fsm1011_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        x               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fsm1011_vlg_sample_tst;
