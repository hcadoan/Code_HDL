library verilog;
use verilog.vl_types.all;
entity cau5_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        C               : in     vl_logic_vector(7 downto 0);
        D               : in     vl_logic_vector(7 downto 0);
        E               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end cau5_vlg_check_tst;
