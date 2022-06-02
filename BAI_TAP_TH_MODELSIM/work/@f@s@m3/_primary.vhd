library verilog;
use verilog.vl_types.all;
entity FSM3 is
    generic(
        Start           : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        S0              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        S00             : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        S001            : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        S1              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        S11             : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        S110            : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0)
    );
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        i               : in     vl_logic;
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        c               : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Start : constant is 1;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S00 : constant is 1;
    attribute mti_svvh_generic_type of S001 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S11 : constant is 1;
    attribute mti_svvh_generic_type of S110 : constant is 1;
end FSM3;
