library verilog;
use verilog.vl_types.all;
entity cau3_vlg_sample_tst is
    port(
        S               : in     vl_logic;
        ck              : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        load            : in     vl_logic;
        rs              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cau3_vlg_sample_tst;
