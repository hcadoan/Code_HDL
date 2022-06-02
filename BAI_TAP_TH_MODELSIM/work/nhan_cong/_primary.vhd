library verilog;
use verilog.vl_types.all;
entity nhan_cong is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        C               : in     vl_logic_vector(3 downto 0);
        D               : in     vl_logic_vector(3 downto 0);
        P               : out    vl_logic_vector(8 downto 0)
    );
end nhan_cong;
