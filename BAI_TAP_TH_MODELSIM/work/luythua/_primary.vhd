library verilog;
use verilog.vl_types.all;
entity luythua is
    port(
        a               : in     vl_logic_vector(2 downto 0);
        y               : out    vl_logic_vector(5 downto 0)
    );
end luythua;
