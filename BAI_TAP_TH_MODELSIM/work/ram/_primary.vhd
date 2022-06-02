library verilog;
use verilog.vl_types.all;
entity ram is
    port(
        DATA_IN         : in     vl_logic_vector(4 downto 0);
        ADDRESS         : in     vl_logic_vector(7 downto 0);
        CS              : in     vl_logic;
        WE              : in     vl_logic;
        CLK             : in     vl_logic;
        DATA_OUT        : out    vl_logic_vector(4 downto 0)
    );
end ram;
