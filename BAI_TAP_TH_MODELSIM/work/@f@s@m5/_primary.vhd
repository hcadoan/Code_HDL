library verilog;
use verilog.vl_types.all;
entity FSM5 is
    generic(
        tat             : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        H               : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        E               : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        L               : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        \L_\            : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        O               : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1)
    );
    port(
        ck              : in     vl_logic;
        rs              : in     vl_logic;
        y               : out    vl_logic_vector(7 downto 0);
        c               : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of tat : constant is 1;
    attribute mti_svvh_generic_type of H : constant is 1;
    attribute mti_svvh_generic_type of E : constant is 1;
    attribute mti_svvh_generic_type of L : constant is 1;
    attribute mti_svvh_generic_type of \L_\ : constant is 1;
    attribute mti_svvh_generic_type of O : constant is 1;
end FSM5;
