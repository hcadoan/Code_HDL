library verilog;
use verilog.vl_types.all;
entity FSM7 is
    generic(
        tat             : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        S0              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        S1              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        S2              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        S3              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        S4              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        S5              : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        S6              : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1)
    );
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        HEX3            : out    vl_logic_vector(7 downto 0);
        HEX2            : out    vl_logic_vector(7 downto 0);
        HEX1            : out    vl_logic_vector(7 downto 0);
        HEX0            : out    vl_logic_vector(7 downto 0);
        c               : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of tat : constant is 1;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
    attribute mti_svvh_generic_type of S6 : constant is 1;
end FSM7;
