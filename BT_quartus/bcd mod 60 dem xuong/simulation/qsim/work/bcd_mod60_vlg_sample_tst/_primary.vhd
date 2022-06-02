library verilog;
use verilog.vl_types.all;
entity bcd_mod60_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end bcd_mod60_vlg_sample_tst;
