library verilog;
use verilog.vl_types.all;
entity ss4bit_vlg_check_tst is
    port(
        bang            : in     vl_logic;
        be              : in     vl_logic;
        lon             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ss4bit_vlg_check_tst;
