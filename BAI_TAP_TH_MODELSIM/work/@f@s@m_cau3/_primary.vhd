library verilog;
use verilog.vl_types.all;
entity FSM_cau3 is
    generic(
        start           : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        S1              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        S10             : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        S101            : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        S1010           : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        S10101          : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        S101011         : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0)
    );
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        s               : in     vl_logic;
        y               : out    vl_logic;
        c               : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of start : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S10 : constant is 1;
    attribute mti_svvh_generic_type of S101 : constant is 1;
    attribute mti_svvh_generic_type of S1010 : constant is 1;
    attribute mti_svvh_generic_type of S10101 : constant is 1;
    attribute mti_svvh_generic_type of S101011 : constant is 1;
end FSM_cau3;
