library verilog;
use verilog.vl_types.all;
entity nhan4bit_vlg_check_tst is
    port(
        p               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end nhan4bit_vlg_check_tst;
