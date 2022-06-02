library verilog;
use verilog.vl_types.all;
entity cau5_vlg_check_tst is
    port(
        ht              : in     vl_logic_vector(2 downto 0);
        y1              : in     vl_logic;
        y2              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end cau5_vlg_check_tst;
