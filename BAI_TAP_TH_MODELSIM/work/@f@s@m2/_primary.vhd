library verilog;
use verilog.vl_types.all;
entity FSM2 is
    generic(
        Start           : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        S0              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        S01             : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        S011            : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        S0110           : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0)
    );
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        \in\            : in     vl_logic;
        y               : out    vl_logic;
        c               : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Start : constant is 1;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S01 : constant is 1;
    attribute mti_svvh_generic_type of S011 : constant is 1;
    attribute mti_svvh_generic_type of S0110 : constant is 1;
end FSM2;
