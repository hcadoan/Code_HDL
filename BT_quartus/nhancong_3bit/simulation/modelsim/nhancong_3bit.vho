-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/22/2021 21:20:23"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	nhancong_3bit IS
    PORT (
	A : IN std_logic_vector(2 DOWNTO 0);
	B : IN std_logic_vector(2 DOWNTO 0);
	C : IN std_logic_vector(2 DOWNTO 0);
	P : OUT std_logic_vector(6 DOWNTO 0)
	);
END nhancong_3bit;

-- Design Ports Information
-- P[0]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[1]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[2]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[3]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[4]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[5]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[6]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[2]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[1]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF nhancong_3bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_P : std_logic_vector(6 DOWNTO 0);
SIGNAL \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \u1|u3|s~combout\ : std_logic;
SIGNAL \u1|u7|co~0_combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \u3|u1|s~0_combout\ : std_logic;
SIGNAL \u1|u1|s~0_combout\ : std_logic;
SIGNAL \u3|u2|s~combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \u3|u2|co~4_combout\ : std_logic;
SIGNAL \u3|u2|co~9_combout\ : std_logic;
SIGNAL \u1|u2|s~4_combout\ : std_logic;
SIGNAL \u1|u2|s~5_combout\ : std_logic;
SIGNAL \u1|n6~combout\ : std_logic;
SIGNAL \u3|u3|s~combout\ : std_logic;
SIGNAL \u1|u5|co~0_combout\ : std_logic;
SIGNAL \u1|u2|co~3_combout\ : std_logic;
SIGNAL \u1|u2|co~9_combout\ : std_logic;
SIGNAL \u1|u6|s~0_combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \u3|u1|co~0_combout\ : std_logic;
SIGNAL \u1|u5|s~0_combout\ : std_logic;
SIGNAL \u3|u3|co~0_combout\ : std_logic;
SIGNAL \u3|u4|s~combout\ : std_logic;
SIGNAL \u3|u4|co~0_combout\ : std_logic;
SIGNAL \u1|u7|s~0_combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \u1|n7~combout\ : std_logic;
SIGNAL \u1|u6|co~0_combout\ : std_logic;
SIGNAL \u3|u5|s~combout\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \u1|u7|co~1_combout\ : std_logic;
SIGNAL \u3|u5|co~0_combout\ : std_logic;
SIGNAL \u3|u6|s~0_combout\ : std_logic;
SIGNAL \u3|u6|co~0_combout\ : std_logic;
SIGNAL \C~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X62_Y33_N8
\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\u2|Mult0|mult_core|decoder_node[1][0]~combout\ & \u2|Mult0|mult_core|decoder_node[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mult0|mult_core|decoder_node[1][0]~combout\,
	datab => \u2|Mult0|mult_core|decoder_node[0][1]~combout\,
	datad => VCC,
	cout => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X62_Y33_N10
\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\C~combout\(1) & ((\u2|Mult0|mult_core|decoder_node[0][2]~combout\ & (\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ & VCC)) # 
-- (!\u2|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)))) # (!\C~combout\(1) & ((\u2|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (!\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)) # (!\u2|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (GND)))))
-- \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\C~combout\(1) & (!\u2|Mult0|mult_core|decoder_node[0][2]~combout\ & !\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)) # (!\C~combout\(1) & 
-- ((!\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (!\u2|Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(1),
	datab => \u2|Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	combout => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X62_Y33_N12
\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\u2|Mult0|mult_core|decoder_node[1][2]~combout\ & (\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # (!\u2|Mult0|mult_core|decoder_node[1][2]~combout\ & 
-- (!\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\u2|Mult0|mult_core|decoder_node[1][2]~combout\ & !\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X62_Y33_N14
\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X64_Y33_N24
\u1|u3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u3|s~combout\ = \u1|u2|co~9_combout\ $ (((\A~combout\(2) & \B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|co~9_combout\,
	datac => \A~combout\(2),
	datad => \B~combout\(1),
	combout => \u1|u3|s~combout\);

-- Location: LCCOMB_X63_Y33_N6
\u1|u7|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u7|co~0_combout\ = (\u1|u2|co~9_combout\ & \B~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u2|co~9_combout\,
	datad => \B~combout\(1),
	combout => \u1|u7|co~0_combout\);

-- Location: LCCOMB_X62_Y33_N0
\u2|Mult0|mult_core|decoder_node[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|decoder_node[0][2]~combout\ = (\C~combout\(0) & \C~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(0),
	datad => \C~combout\(2),
	combout => \u2|Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X62_Y33_N2
\u2|Mult0|mult_core|decoder_node[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|decoder_node[0][1]~combout\ = (\C~combout\(0) & \C~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(0),
	datad => \C~combout\(1),
	combout => \u2|Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X62_Y33_N4
\u2|Mult0|mult_core|decoder_node[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|decoder_node[1][2]~combout\ = (\C~combout\(1) & \C~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(1),
	datad => \C~combout\(2),
	combout => \u2|Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X62_Y33_N16
\u2|Mult0|mult_core|decoder_node[1][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|decoder_node[1][0]~combout\ = (\C~combout\(0) & \C~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(0),
	datad => \C~combout\(1),
	combout => \u2|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(1),
	combout => \C~combout\(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(0),
	combout => \C~combout\(0));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X64_Y33_N16
\u3|u1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u1|s~0_combout\ = \C~combout\(0) $ (((\A~combout\(0) & \B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \C~combout\(0),
	datad => \B~combout\(0),
	combout => \u3|u1|s~0_combout\);

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X64_Y33_N10
\u1|u1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u1|s~0_combout\ = (\B~combout\(1) & (\A~combout\(0) $ (((\B~combout\(0) & \A~combout\(1)))))) # (!\B~combout\(1) & (\B~combout\(0) & ((\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	combout => \u1|u1|s~0_combout\);

-- Location: LCCOMB_X64_Y33_N4
\u3|u2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u2|s~combout\ = \u1|u1|s~0_combout\ $ (((\A~combout\(0) & (\B~combout\(0) & \C~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datac => \C~combout\(0),
	datad => \u1|u1|s~0_combout\,
	combout => \u3|u2|s~combout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_C(2),
	combout => \C~combout\(2));

-- Location: LCCOMB_X62_Y33_N30
\u2|Mult0|mult_core|decoder_node[2][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|decoder_node[2][0]~combout\ = (\C~combout\(0) & \C~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(0),
	datad => \C~combout\(2),
	combout => \u2|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X62_Y33_N18
\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\u2|Mult0|mult_core|decoder_node[2][0]~combout\ $ (VCC))) # 
-- (!\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\u2|Mult0|mult_core|decoder_node[2][0]~combout\ & VCC))
-- \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & \u2|Mult0|mult_core|decoder_node[2][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \u2|Mult0|mult_core|decoder_node[2][0]~combout\,
	datad => VCC,
	combout => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X63_Y33_N14
\u3|u2|co~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u2|co~4_combout\ = \B~combout\(1) $ (\A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datad => \A~combout\(1),
	combout => \u3|u2|co~4_combout\);

-- Location: LCCOMB_X64_Y33_N26
\u3|u2|co~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u2|co~9_combout\ = (\A~combout\(0) & (\B~combout\(0) & (\C~combout\(0) & \u3|u2|co~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datac => \C~combout\(0),
	datad => \u3|u2|co~4_combout\,
	combout => \u3|u2|co~9_combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X64_Y33_N20
\u1|u2|s~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u2|s~4_combout\ = \A~combout\(2) $ (((\B~combout\(1) & (!\A~combout\(0) & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(2),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	combout => \u1|u2|s~4_combout\);

-- Location: LCCOMB_X64_Y33_N14
\u1|u2|s~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u2|s~5_combout\ = (\B~combout\(0) & (((\u1|u2|s~4_combout\)))) # (!\B~combout\(0) & (\B~combout\(1) & ((\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \u1|u2|s~4_combout\,
	datad => \A~combout\(1),
	combout => \u1|u2|s~5_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X64_Y33_N6
\u1|n6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n6~combout\ = (\B~combout\(2) & \A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \A~combout\(0),
	combout => \u1|n6~combout\);

-- Location: LCCOMB_X64_Y33_N8
\u3|u3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u3|s~combout\ = \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (\u3|u2|co~9_combout\ $ (\u1|u2|s~5_combout\ $ (\u1|n6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \u3|u2|co~9_combout\,
	datac => \u1|u2|s~5_combout\,
	datad => \u1|n6~combout\,
	combout => \u3|u3|s~combout\);

-- Location: LCCOMB_X64_Y33_N2
\u1|u5|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u5|co~0_combout\ = (\A~combout\(0) & (\u1|u2|s~5_combout\ & \B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \u1|u2|s~5_combout\,
	datac => \B~combout\(2),
	combout => \u1|u5|co~0_combout\);

-- Location: LCCOMB_X64_Y33_N22
\u1|u2|co~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u2|co~3_combout\ = (\A~combout\(2)) # (\A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \A~combout\(0),
	combout => \u1|u2|co~3_combout\);

-- Location: LCCOMB_X64_Y33_N0
\u1|u2|co~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u2|co~9_combout\ = (\B~combout\(1) & (\B~combout\(0) & (\u1|u2|co~3_combout\ & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \u1|u2|co~3_combout\,
	datad => \A~combout\(1),
	combout => \u1|u2|co~9_combout\);

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X63_Y33_N26
\u1|u6|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u6|s~0_combout\ = \u1|n7~combout\ $ (\u1|u2|co~9_combout\ $ (((\A~combout\(2) & \B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|n7~combout\,
	datab => \u1|u2|co~9_combout\,
	datac => \A~combout\(2),
	datad => \B~combout\(1),
	combout => \u1|u6|s~0_combout\);

-- Location: LCCOMB_X62_Y33_N26
\u2|Mult0|mult_core|decoder_node[2][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|decoder_node[2][1]~combout\ = (\C~combout\(1) & \C~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(1),
	datad => \C~combout\(2),
	combout => \u2|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X62_Y33_N20
\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\u2|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- (\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\u2|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\u2|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\u2|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- ((\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\u2|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- !\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((!\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\u2|Mult0|mult_core|decoder_node[2][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \u2|Mult0|mult_core|decoder_node[2][1]~combout\,
	datad => VCC,
	cin => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X64_Y33_N28
\u3|u1|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u1|co~0_combout\ = (\A~combout\(0) & (\C~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \C~combout\(0),
	datad => \B~combout\(0),
	combout => \u3|u1|co~0_combout\);

-- Location: LCCOMB_X64_Y33_N12
\u1|u5|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u5|s~0_combout\ = \u1|u2|s~5_combout\ $ (((\A~combout\(0) & \B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \u1|u2|s~5_combout\,
	datac => \B~combout\(2),
	combout => \u1|u5|s~0_combout\);

-- Location: LCCOMB_X64_Y33_N30
\u3|u3|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u3|co~0_combout\ = (\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((\u1|u5|s~0_combout\) # ((\u1|u1|s~0_combout\ & \u3|u1|co~0_combout\)))) # 
-- (!\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & (\u1|u1|s~0_combout\ & (\u3|u1|co~0_combout\ & \u1|u5|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|s~0_combout\,
	datab => \u3|u1|co~0_combout\,
	datac => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => \u1|u5|s~0_combout\,
	combout => \u3|u3|co~0_combout\);

-- Location: LCCOMB_X63_Y33_N4
\u3|u4|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u4|s~combout\ = \u1|u5|co~0_combout\ $ (\u1|u6|s~0_combout\ $ (\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ $ (\u3|u3|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u5|co~0_combout\,
	datab => \u1|u6|s~0_combout\,
	datac => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \u3|u3|co~0_combout\,
	combout => \u3|u4|s~combout\);

-- Location: LCCOMB_X63_Y33_N8
\u3|u4|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u4|co~0_combout\ = (\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\u3|u3|co~0_combout\) # (\u1|u5|co~0_combout\ $ (\u1|u6|s~0_combout\)))) # 
-- (!\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (\u3|u3|co~0_combout\ & (\u1|u5|co~0_combout\ $ (\u1|u6|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u5|co~0_combout\,
	datab => \u1|u6|s~0_combout\,
	datac => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \u3|u3|co~0_combout\,
	combout => \u3|u4|co~0_combout\);

-- Location: LCCOMB_X63_Y33_N30
\u1|u7|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u7|s~0_combout\ = (\A~combout\(2) & (\B~combout\(2) $ (((\u1|u2|co~9_combout\ & \B~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datac => \u1|u2|co~9_combout\,
	datad => \B~combout\(1),
	combout => \u1|u7|s~0_combout\);

-- Location: LCCOMB_X62_Y33_N22
\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (\C~combout\(2) $ (!\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\C~combout\(2)) # (!\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # 
-- (!\u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\C~combout\(2) & !\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \C~combout\(2),
	datad => VCC,
	cin => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X63_Y33_N0
\u1|n7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n7~combout\ = (\B~combout\(2) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datad => \A~combout\(1),
	combout => \u1|n7~combout\);

-- Location: LCCOMB_X64_Y33_N18
\u1|u6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u6|co~0_combout\ = (\u1|u3|s~combout\ & ((\u1|n7~combout\) # ((\u1|u2|s~5_combout\ & \u1|n6~combout\)))) # (!\u1|u3|s~combout\ & (\u1|n7~combout\ & (\u1|u2|s~5_combout\ & \u1|n6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|s~combout\,
	datab => \u1|n7~combout\,
	datac => \u1|u2|s~5_combout\,
	datad => \u1|n6~combout\,
	combout => \u1|u6|co~0_combout\);

-- Location: LCCOMB_X63_Y33_N2
\u3|u5|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u5|s~combout\ = \u3|u4|co~0_combout\ $ (\u1|u7|s~0_combout\ $ (\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (\u1|u6|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|co~0_combout\,
	datab => \u1|u7|s~0_combout\,
	datac => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \u1|u6|co~0_combout\,
	combout => \u3|u5|s~combout\);

-- Location: LCCOMB_X62_Y33_N24
\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X63_Y33_N24
\u1|u7|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u7|co~1_combout\ = (\A~combout\(2) & ((\u1|u7|co~0_combout\ & ((\u1|u6|co~0_combout\) # (\B~combout\(2)))) # (!\u1|u7|co~0_combout\ & (\u1|u6|co~0_combout\ & \B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|co~0_combout\,
	datab => \u1|u6|co~0_combout\,
	datac => \A~combout\(2),
	datad => \B~combout\(2),
	combout => \u1|u7|co~1_combout\);

-- Location: LCCOMB_X63_Y33_N28
\u3|u5|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u5|co~0_combout\ = (\u3|u4|co~0_combout\ & ((\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\) # (\u1|u7|s~0_combout\ $ (\u1|u6|co~0_combout\)))) # (!\u3|u4|co~0_combout\ & 
-- (\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (\u1|u7|s~0_combout\ $ (\u1|u6|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|co~0_combout\,
	datab => \u1|u7|s~0_combout\,
	datac => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \u1|u6|co~0_combout\,
	combout => \u3|u5|co~0_combout\);

-- Location: LCCOMB_X63_Y33_N18
\u3|u6|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u6|s~0_combout\ = \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ $ (\u1|u7|co~1_combout\ $ (\u3|u5|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \u1|u7|co~1_combout\,
	datad => \u3|u5|co~0_combout\,
	combout => \u3|u6|s~0_combout\);

-- Location: LCCOMB_X63_Y33_N12
\u3|u6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u6|co~0_combout\ = (\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & ((\u1|u7|co~1_combout\) # (\u3|u5|co~0_combout\))) # (!\u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- (\u1|u7|co~1_combout\ & \u3|u5|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \u1|u7|co~1_combout\,
	datad => \u3|u5|co~0_combout\,
	combout => \u3|u6|co~0_combout\);

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u3|u1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(0));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u3|u2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(1));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u3|u3|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(2));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u3|u4|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(3));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u3|u5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(4));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u3|u6|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(5));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u3|u6|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(6));
END structure;


