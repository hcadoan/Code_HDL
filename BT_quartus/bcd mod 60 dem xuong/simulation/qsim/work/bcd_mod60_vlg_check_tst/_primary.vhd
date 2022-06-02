library verilog;
use verilog.vl_types.all;
entity bcd_mod60_vlg_check_tst is
    port(
        bcd0            : in     vl_logic_vector(3 downto 0);
        bcd1            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end bcd_mod60_vlg_check_tst;
