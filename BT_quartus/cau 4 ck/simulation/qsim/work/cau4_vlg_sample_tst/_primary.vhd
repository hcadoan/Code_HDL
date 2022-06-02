library verilog;
use verilog.vl_types.all;
entity cau4_vlg_sample_tst is
    port(
        DATA            : in     vl_logic;
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cau4_vlg_sample_tst;
