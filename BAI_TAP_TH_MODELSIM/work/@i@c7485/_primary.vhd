library verilog;
use verilog.vl_types.all;
entity IC7485 is
    port(
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        B0              : in     vl_logic;
        B1              : in     vl_logic;
        B2              : in     vl_logic;
        B3              : in     vl_logic;
        AlBin           : in     vl_logic;
        AnBin           : in     vl_logic;
        AbBin           : in     vl_logic;
        AlB             : out    vl_logic;
        AnB             : out    vl_logic;
        AbB             : out    vl_logic
    );
end IC7485;
