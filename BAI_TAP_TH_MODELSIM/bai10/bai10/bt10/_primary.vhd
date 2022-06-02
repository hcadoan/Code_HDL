library verilog;
use verilog.vl_types.all;
entity bt10 is
    port(
        A               : in     vl_logic_vector(4 downto 0);
        y               : out    vl_logic
    );
end bt10;
