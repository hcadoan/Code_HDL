library verilog;
use verilog.vl_types.all;
entity FSM9 is
    generic(
        blue            : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0);
        red             : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi1);
        S0              : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi1, Hi0);
        S1              : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi1, Hi1);
        S2              : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi0, Hi0);
        S3              : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi0, Hi1);
        S4              : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi1, Hi0);
        S5              : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi1, Hi1);
        S6              : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi0, Hi0);
        S7              : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi0, Hi1);
        S8              : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi1, Hi0);
        S9              : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi1, Hi1);
        S10             : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi0, Hi0);
        S11             : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi0, Hi1);
        S12             : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi1, Hi0);
        S13             : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi1, Hi1);
        S14             : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi0, Hi0);
        S15             : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi0, Hi1);
        S16             : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi1, Hi0)
    );
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        stop            : in     vl_logic;
        x               : out    vl_logic;
        d               : out    vl_logic;
        v               : out    vl_logic;
        HEX             : out    vl_logic_vector(7 downto 0);
        c               : out    vl_logic_vector(4 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of blue : constant is 1;
    attribute mti_svvh_generic_type of red : constant is 1;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
    attribute mti_svvh_generic_type of S6 : constant is 1;
    attribute mti_svvh_generic_type of S7 : constant is 1;
    attribute mti_svvh_generic_type of S8 : constant is 1;
    attribute mti_svvh_generic_type of S9 : constant is 1;
    attribute mti_svvh_generic_type of S10 : constant is 1;
    attribute mti_svvh_generic_type of S11 : constant is 1;
    attribute mti_svvh_generic_type of S12 : constant is 1;
    attribute mti_svvh_generic_type of S13 : constant is 1;
    attribute mti_svvh_generic_type of S14 : constant is 1;
    attribute mti_svvh_generic_type of S15 : constant is 1;
    attribute mti_svvh_generic_type of S16 : constant is 1;
end FSM9;
