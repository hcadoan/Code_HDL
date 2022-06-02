library verilog;
use verilog.vl_types.all;
entity FSM_cau1 is
    generic(
        start           : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        S0              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        S01             : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        S011            : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        S1              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        S10             : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        S100            : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0)
    );
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        s               : in     vl_logic;
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        c               : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of start : constant is 1;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S01 : constant is 1;
    attribute mti_svvh_generic_type of S011 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S10 : constant is 1;
    attribute mti_svvh_generic_type of S100 : constant is 1;
end FSM_cau1;
