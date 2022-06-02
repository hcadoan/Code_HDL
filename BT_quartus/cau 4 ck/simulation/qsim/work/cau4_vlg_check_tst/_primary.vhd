library verilog;
use verilog.vl_types.all;
entity cau4_vlg_check_tst is
    port(
        Y1              : in     vl_logic;
        Y2              : in     vl_logic;
        c               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end cau4_vlg_check_tst;
