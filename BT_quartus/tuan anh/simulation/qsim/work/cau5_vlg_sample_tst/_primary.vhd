library verilog;
use verilog.vl_types.all;
entity cau5_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        x               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cau5_vlg_sample_tst;
