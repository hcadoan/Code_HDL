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

-- DATE "10/27/2021 09:29:35"

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

ENTITY 	nhan_cong IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : IN std_logic_vector(3 DOWNTO 0);
	D : IN std_logic_vector(3 DOWNTO 0);
	P : OUT std_logic_vector(8 DOWNTO 0)
	);
END nhan_cong;

-- Design Ports Information
-- P[0]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[1]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[2]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[4]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[5]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[6]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[7]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[8]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D[0]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D[1]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[2]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D[2]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[3]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D[3]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF nhan_cong IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_P : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|u2|s~0_combout\ : std_logic;
SIGNAL \u1|u3|s~combout\ : std_logic;
SIGNAL \u1|n10~combout\ : std_logic;
SIGNAL \u2|u6|co~0_combout\ : std_logic;
SIGNAL \u2|n13~combout\ : std_logic;
SIGNAL \u2|u7|co~0_combout\ : std_logic;
SIGNAL \u1|n11~combout\ : std_logic;
SIGNAL \u1|u8|co~0_combout\ : std_logic;
SIGNAL \u1|u8|s~2_combout\ : std_logic;
SIGNAL \u3|u1|s~0_combout\ : std_logic;
SIGNAL \u2|n0~combout\ : std_logic;
SIGNAL \u1|n0~combout\ : std_logic;
SIGNAL \u2|u1|s~0_combout\ : std_logic;
SIGNAL \u1|u1|s~0_combout\ : std_logic;
SIGNAL \u3|u2|s~0_combout\ : std_logic;
SIGNAL \u2|n8~combout\ : std_logic;
SIGNAL \u3|u2|co~0_combout\ : std_logic;
SIGNAL \u2|u2|s~0_combout\ : std_logic;
SIGNAL \u2|u2|s~1_combout\ : std_logic;
SIGNAL \u1|u2|s~1_combout\ : std_logic;
SIGNAL \u1|u5|s~2_combout\ : std_logic;
SIGNAL \u3|u3|s~combout\ : std_logic;
SIGNAL \u3|u3|co~0_combout\ : std_logic;
SIGNAL \u2|n5~combout\ : std_logic;
SIGNAL \u2|u2|co~0_combout\ : std_logic;
SIGNAL \u2|u2|co~1_combout\ : std_logic;
SIGNAL \u2|u3|s~combout\ : std_logic;
SIGNAL \u2|n9~combout\ : std_logic;
SIGNAL \u2|u6|s~combout\ : std_logic;
SIGNAL \u1|n9~combout\ : std_logic;
SIGNAL \u1|n5~combout\ : std_logic;
SIGNAL \u1|u6|s~0_combout\ : std_logic;
SIGNAL \u1|n8~combout\ : std_logic;
SIGNAL \u1|u6|s~combout\ : std_logic;
SIGNAL \u1|u9|s~0_combout\ : std_logic;
SIGNAL \u2|n12~combout\ : std_logic;
SIGNAL \u3|u4|s~combout\ : std_logic;
SIGNAL \u3|u4|co~0_combout\ : std_logic;
SIGNAL \u2|n7~combout\ : std_logic;
SIGNAL \u2|u10|s~3_combout\ : std_logic;
SIGNAL \u2|u3|co~0_combout\ : std_logic;
SIGNAL \u2|u10|s~2_combout\ : std_logic;
SIGNAL \u2|u9|co~2_combout\ : std_logic;
SIGNAL \u1|n12~combout\ : std_logic;
SIGNAL \u1|n13~combout\ : std_logic;
SIGNAL \u1|u2|co~0_combout\ : std_logic;
SIGNAL \u1|u2|co~1_combout\ : std_logic;
SIGNAL \u1|u3|co~0_combout\ : std_logic;
SIGNAL \u1|n7~combout\ : std_logic;
SIGNAL \u1|u10|s~0_combout\ : std_logic;
SIGNAL \u1|u10|s~combout\ : std_logic;
SIGNAL \u3|u5|s~combout\ : std_logic;
SIGNAL \u2|n10~combout\ : std_logic;
SIGNAL \u2|u7|s~combout\ : std_logic;
SIGNAL \u2|u10|co~0_combout\ : std_logic;
SIGNAL \u3|u5|co~0_combout\ : std_logic;
SIGNAL \u2|u8|s~2_combout\ : std_logic;
SIGNAL \u2|u11|s~0_combout\ : std_logic;
SIGNAL \u1|n14~combout\ : std_logic;
SIGNAL \u1|u6|co~0_combout\ : std_logic;
SIGNAL \u1|u7|co~0_combout\ : std_logic;
SIGNAL \u1|u7|s~combout\ : std_logic;
SIGNAL \u1|u10|co~0_combout\ : std_logic;
SIGNAL \u1|u11|s~combout\ : std_logic;
SIGNAL \u3|u6|s~combout\ : std_logic;
SIGNAL \u2|n11~combout\ : std_logic;
SIGNAL \u2|u8|co~0_combout\ : std_logic;
SIGNAL \u2|u12|s~0_combout\ : std_logic;
SIGNAL \u2|n14~combout\ : std_logic;
SIGNAL \u2|u11|co~0_combout\ : std_logic;
SIGNAL \u3|u6|co~0_combout\ : std_logic;
SIGNAL \u1|u11|co~0_combout\ : std_logic;
SIGNAL \u1|u12|s~0_combout\ : std_logic;
SIGNAL \u3|u7|s~0_combout\ : std_logic;
SIGNAL \u2|u12|co~0_combout\ : std_logic;
SIGNAL \u3|u7|co~0_combout\ : std_logic;
SIGNAL \u1|u12|co~0_combout\ : std_logic;
SIGNAL \u3|u8|s~0_combout\ : std_logic;
SIGNAL \u3|u8|co~0_combout\ : std_logic;
SIGNAL \D~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X62_Y32_N20
\u1|u2|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u2|s~0_combout\ = (\B~combout\(1) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \A~combout\(1),
	combout => \u1|u2|s~0_combout\);

-- Location: LCCOMB_X62_Y32_N12
\u1|u3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u3|s~combout\ = \u1|n5~combout\ $ (\u1|u2|co~1_combout\ $ (((\B~combout\(1) & \A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \u1|n5~combout\,
	datac => \A~combout\(2),
	datad => \u1|u2|co~1_combout\,
	combout => \u1|u3|s~combout\);

-- Location: LCCOMB_X59_Y32_N12
\u1|n10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n10~combout\ = (\B~combout\(2) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \A~combout\(2),
	combout => \u1|n10~combout\);

-- Location: LCCOMB_X51_Y30_N4
\u2|u6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u6|co~0_combout\ = (\u2|u3|s~combout\ & ((\u2|n9~combout\) # ((\u2|u2|s~1_combout\ & \u2|n8~combout\)))) # (!\u2|u3|s~combout\ & (\u2|u2|s~1_combout\ & (\u2|n8~combout\ & \u2|n9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|s~1_combout\,
	datab => \u2|u3|s~combout\,
	datac => \u2|n8~combout\,
	datad => \u2|n9~combout\,
	combout => \u2|u6|co~0_combout\);

-- Location: LCCOMB_X55_Y32_N10
\u2|n13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|n13~combout\ = (\C~combout\(1) & \D~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(1),
	datac => \D~combout\(3),
	combout => \u2|n13~combout\);

-- Location: LCCOMB_X50_Y32_N6
\u2|u7|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u7|co~0_combout\ = (\u2|u6|co~0_combout\ & ((\u2|n10~combout\) # (\u2|n7~combout\ $ (\u2|u3|co~0_combout\)))) # (!\u2|u6|co~0_combout\ & (\u2|n10~combout\ & (\u2|n7~combout\ $ (\u2|u3|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|co~0_combout\,
	datab => \u2|n10~combout\,
	datac => \u2|n7~combout\,
	datad => \u2|u3|co~0_combout\,
	combout => \u2|u7|co~0_combout\);

-- Location: LCCOMB_X59_Y32_N30
\u1|n11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n11~combout\ = (\B~combout\(2) & \A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datad => \A~combout\(3),
	combout => \u1|n11~combout\);

-- Location: LCCOMB_X59_Y32_N24
\u1|u8|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u8|co~0_combout\ = (\u1|n11~combout\ & ((\u1|u7|co~0_combout\) # ((\u1|u3|co~0_combout\ & \u1|n7~combout\)))) # (!\u1|n11~combout\ & (\u1|u3|co~0_combout\ & (\u1|u7|co~0_combout\ & \u1|n7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|co~0_combout\,
	datab => \u1|n11~combout\,
	datac => \u1|u7|co~0_combout\,
	datad => \u1|n7~combout\,
	combout => \u1|u8|co~0_combout\);

-- Location: LCCOMB_X59_Y32_N6
\u1|u8|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u8|s~2_combout\ = (\A~combout\(3) & (\B~combout\(2) $ (((\u1|u3|co~0_combout\ & \B~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|co~0_combout\,
	datab => \B~combout\(2),
	datac => \B~combout\(1),
	datad => \A~combout\(3),
	combout => \u1|u8|s~2_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D[0]~I\ : cycloneii_io
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
	padio => ww_D(0),
	combout => \D~combout\(0));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X55_Y32_N0
\u3|u1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u1|s~0_combout\ = (\A~combout\(0) & (\B~combout\(0) $ (((\D~combout\(0) & \C~combout\(0)))))) # (!\A~combout\(0) & (\D~combout\(0) & ((\C~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \D~combout\(0),
	datac => \B~combout\(0),
	datad => \C~combout\(0),
	combout => \u3|u1|s~0_combout\);

-- Location: LCCOMB_X55_Y32_N12
\u2|n0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|n0~combout\ = (\C~combout\(0) & \D~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(0),
	datac => \D~combout\(0),
	combout => \u2|n0~combout\);

-- Location: LCCOMB_X55_Y32_N2
\u1|n0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n0~combout\ = (\A~combout\(0) & \B~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(0),
	combout => \u1|n0~combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D[1]~I\ : cycloneii_io
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
	padio => ww_D(1),
	combout => \D~combout\(1));

-- Location: LCCOMB_X51_Y30_N8
\u2|u1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u1|s~0_combout\ = (\C~combout\(0) & (\D~combout\(1) $ (((\C~combout\(1) & \D~combout\(0)))))) # (!\C~combout\(0) & (\C~combout\(1) & ((\D~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(0),
	datab => \C~combout\(1),
	datac => \D~combout\(1),
	datad => \D~combout\(0),
	combout => \u2|u1|s~0_combout\);

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X62_Y32_N8
\u1|u1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u1|s~0_combout\ = (\A~combout\(0) & (\B~combout\(1) $ (((\B~combout\(0) & \A~combout\(1)))))) # (!\A~combout\(0) & (\B~combout\(0) & (\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datac => \A~combout\(1),
	datad => \B~combout\(1),
	combout => \u1|u1|s~0_combout\);

-- Location: LCCOMB_X55_Y32_N6
\u3|u2|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u2|s~0_combout\ = \u2|u1|s~0_combout\ $ (\u1|u1|s~0_combout\ $ (((\u2|n0~combout\ & \u1|n0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|n0~combout\,
	datab => \u1|n0~combout\,
	datac => \u2|u1|s~0_combout\,
	datad => \u1|u1|s~0_combout\,
	combout => \u3|u2|s~0_combout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D[2]~I\ : cycloneii_io
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
	padio => ww_D(2),
	combout => \D~combout\(2));

-- Location: LCCOMB_X51_Y30_N14
\u2|n8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|n8~combout\ = (\C~combout\(0) & \D~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(0),
	datad => \D~combout\(2),
	combout => \u2|n8~combout\);

-- Location: LCCOMB_X55_Y32_N8
\u3|u2|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u2|co~0_combout\ = (\u2|u1|s~0_combout\ & ((\u1|u1|s~0_combout\) # ((\u2|n0~combout\ & \u1|n0~combout\)))) # (!\u2|u1|s~0_combout\ & (\u2|n0~combout\ & (\u1|n0~combout\ & \u1|u1|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|n0~combout\,
	datab => \u1|n0~combout\,
	datac => \u2|u1|s~0_combout\,
	datad => \u1|u1|s~0_combout\,
	combout => \u3|u2|co~0_combout\);

-- Location: LCCOMB_X51_Y30_N18
\u2|u2|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u2|s~0_combout\ = (\C~combout\(1) & \D~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(1),
	datac => \D~combout\(1),
	combout => \u2|u2|s~0_combout\);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X51_Y30_N20
\u2|u2|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u2|s~1_combout\ = (\D~combout\(0) & (\C~combout\(2) $ (((!\C~combout\(0) & \u2|u2|s~0_combout\))))) # (!\D~combout\(0) & (((\u2|u2|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(0),
	datab => \u2|u2|s~0_combout\,
	datac => \C~combout\(2),
	datad => \D~combout\(0),
	combout => \u2|u2|s~1_combout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X62_Y32_N30
\u1|u2|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u2|s~1_combout\ = (\B~combout\(0) & (\A~combout\(2) $ (((\u1|u2|s~0_combout\ & !\A~combout\(0)))))) # (!\B~combout\(0) & (\u1|u2|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|s~0_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(0),
	datad => \B~combout\(0),
	combout => \u1|u2|s~1_combout\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X62_Y32_N28
\u1|u5|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u5|s~2_combout\ = \u1|u2|s~1_combout\ $ (((\A~combout\(0) & \B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|s~1_combout\,
	datac => \A~combout\(0),
	datad => \B~combout\(2),
	combout => \u1|u5|s~2_combout\);

-- Location: LCCOMB_X55_Y32_N26
\u3|u3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u3|s~combout\ = \u2|n8~combout\ $ (\u3|u2|co~0_combout\ $ (\u2|u2|s~1_combout\ $ (\u1|u5|s~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|n8~combout\,
	datab => \u3|u2|co~0_combout\,
	datac => \u2|u2|s~1_combout\,
	datad => \u1|u5|s~2_combout\,
	combout => \u3|u3|s~combout\);

-- Location: LCCOMB_X55_Y32_N16
\u3|u3|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u3|co~0_combout\ = (\u3|u2|co~0_combout\ & ((\u1|u5|s~2_combout\) # (\u2|n8~combout\ $ (\u2|u2|s~1_combout\)))) # (!\u3|u2|co~0_combout\ & (\u1|u5|s~2_combout\ & (\u2|n8~combout\ $ (\u2|u2|s~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|n8~combout\,
	datab => \u3|u2|co~0_combout\,
	datac => \u2|u2|s~1_combout\,
	datad => \u1|u5|s~2_combout\,
	combout => \u3|u3|co~0_combout\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[3]~I\ : cycloneii_io
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
	padio => ww_C(3),
	combout => \C~combout\(3));

-- Location: LCCOMB_X51_Y30_N28
\u2|n5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|n5~combout\ = (\C~combout\(3) & \D~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(3),
	datad => \D~combout\(0),
	combout => \u2|n5~combout\);

-- Location: LCCOMB_X51_Y30_N16
\u2|u2|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u2|co~0_combout\ = (\D~combout\(0) & \C~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\(0),
	datac => \C~combout\(1),
	combout => \u2|u2|co~0_combout\);

-- Location: LCCOMB_X51_Y30_N26
\u2|u2|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u2|co~1_combout\ = (\D~combout\(1) & (\u2|u2|co~0_combout\ & ((\C~combout\(0)) # (\C~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(0),
	datab => \D~combout\(1),
	datac => \u2|u2|co~0_combout\,
	datad => \C~combout\(2),
	combout => \u2|u2|co~1_combout\);

-- Location: LCCOMB_X51_Y30_N30
\u2|u3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u3|s~combout\ = \u2|n5~combout\ $ (\u2|u2|co~1_combout\ $ (((\C~combout\(2) & \D~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(2),
	datab => \u2|n5~combout\,
	datac => \D~combout\(1),
	datad => \u2|u2|co~1_combout\,
	combout => \u2|u3|s~combout\);

-- Location: LCCOMB_X51_Y30_N0
\u2|n9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|n9~combout\ = (\D~combout\(2) & \C~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D~combout\(2),
	datac => \C~combout\(1),
	combout => \u2|n9~combout\);

-- Location: LCCOMB_X51_Y30_N10
\u2|u6|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u6|s~combout\ = \u2|u3|s~combout\ $ (\u2|n9~combout\ $ (((\u2|u2|s~1_combout\ & \u2|n8~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|s~1_combout\,
	datab => \u2|u3|s~combout\,
	datac => \u2|n8~combout\,
	datad => \u2|n9~combout\,
	combout => \u2|u6|s~combout\);

-- Location: LCCOMB_X62_Y32_N4
\u1|n9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n9~combout\ = (\B~combout\(2) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \A~combout\(1),
	combout => \u1|n9~combout\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X62_Y32_N22
\u1|n5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n5~combout\ = (\B~combout\(0) & \A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datad => \A~combout\(3),
	combout => \u1|n5~combout\);

-- Location: LCCOMB_X62_Y32_N24
\u1|u6|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u6|s~0_combout\ = \u1|n9~combout\ $ (\u1|n5~combout\ $ (((!\A~combout\(2)) # (!\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \u1|n9~combout\,
	datac => \A~combout\(2),
	datad => \u1|n5~combout\,
	combout => \u1|u6|s~0_combout\);

-- Location: LCCOMB_X62_Y32_N26
\u1|n8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n8~combout\ = (\A~combout\(0) & \B~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(0),
	datad => \B~combout\(2),
	combout => \u1|n8~combout\);

-- Location: LCCOMB_X62_Y32_N10
\u1|u6|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u6|s~combout\ = \u1|u2|co~1_combout\ $ (\u1|u6|s~0_combout\ $ (((!\u1|n8~combout\) # (!\u1|u2|s~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|co~1_combout\,
	datab => \u1|u2|s~1_combout\,
	datac => \u1|u6|s~0_combout\,
	datad => \u1|n8~combout\,
	combout => \u1|u6|s~combout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X55_Y32_N4
\u1|u9|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u9|s~0_combout\ = \u1|u6|s~combout\ $ (((\A~combout\(0) & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \u1|u6|s~combout\,
	datad => \B~combout\(3),
	combout => \u1|u9|s~0_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D[3]~I\ : cycloneii_io
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
	padio => ww_D(3),
	combout => \D~combout\(3));

-- Location: LCCOMB_X55_Y32_N30
\u2|n12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|n12~combout\ = (\C~combout\(0) & \D~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(0),
	datac => \D~combout\(3),
	combout => \u2|n12~combout\);

-- Location: LCCOMB_X55_Y32_N18
\u3|u4|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u4|s~combout\ = \u3|u3|co~0_combout\ $ (\u2|u6|s~combout\ $ (\u1|u9|s~0_combout\ $ (\u2|n12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|co~0_combout\,
	datab => \u2|u6|s~combout\,
	datac => \u1|u9|s~0_combout\,
	datad => \u2|n12~combout\,
	combout => \u3|u4|s~combout\);

-- Location: LCCOMB_X55_Y32_N20
\u3|u4|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u4|co~0_combout\ = (\u3|u3|co~0_combout\ & ((\u1|u9|s~0_combout\) # (\u2|u6|s~combout\ $ (\u2|n12~combout\)))) # (!\u3|u3|co~0_combout\ & (\u1|u9|s~0_combout\ & (\u2|u6|s~combout\ $ (\u2|n12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|co~0_combout\,
	datab => \u2|u6|s~combout\,
	datac => \u1|u9|s~0_combout\,
	datad => \u2|n12~combout\,
	combout => \u3|u4|co~0_combout\);

-- Location: LCCOMB_X50_Y32_N0
\u2|n7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|n7~combout\ = (\C~combout\(3) & \D~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(3),
	datac => \D~combout\(1),
	combout => \u2|n7~combout\);

-- Location: LCCOMB_X51_Y30_N12
\u2|u10|s~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u10|s~3_combout\ = (\C~combout\(2) & (\D~combout\(2) $ (((!\D~combout\(3)) # (!\C~combout\(1)))))) # (!\C~combout\(2) & (((!\D~combout\(3)) # (!\C~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(2),
	datab => \D~combout\(2),
	datac => \C~combout\(1),
	datad => \D~combout\(3),
	combout => \u2|u10|s~3_combout\);

-- Location: LCCOMB_X51_Y30_N6
\u2|u3|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u3|co~0_combout\ = (\u2|n5~combout\ & ((\u2|u2|co~1_combout\) # ((\C~combout\(2) & \D~combout\(1))))) # (!\u2|n5~combout\ & (\C~combout\(2) & (\D~combout\(1) & \u2|u2|co~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(2),
	datab => \u2|n5~combout\,
	datac => \D~combout\(1),
	datad => \u2|u2|co~1_combout\,
	combout => \u2|u3|co~0_combout\);

-- Location: LCCOMB_X50_Y32_N18
\u2|u10|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u10|s~2_combout\ = \u2|u6|co~0_combout\ $ (\u2|n7~combout\ $ (\u2|u10|s~3_combout\ $ (!\u2|u3|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|co~0_combout\,
	datab => \u2|n7~combout\,
	datac => \u2|u10|s~3_combout\,
	datad => \u2|u3|co~0_combout\,
	combout => \u2|u10|s~2_combout\);

-- Location: LCCOMB_X55_Y32_N14
\u2|u9|co~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u9|co~2_combout\ = (\D~combout\(3) & (\C~combout\(0) & \u2|u6|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\(3),
	datab => \C~combout\(0),
	datac => \u2|u6|s~combout\,
	combout => \u2|u9|co~2_combout\);

-- Location: LCCOMB_X59_Y32_N0
\u1|n12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n12~combout\ = (\A~combout\(0) & \B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datad => \B~combout\(3),
	combout => \u1|n12~combout\);

-- Location: LCCOMB_X59_Y32_N26
\u1|n13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n13~combout\ = (\B~combout\(3) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datac => \A~combout\(1),
	combout => \u1|n13~combout\);

-- Location: LCCOMB_X62_Y32_N0
\u1|u2|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u2|co~0_combout\ = (\B~combout\(0) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \A~combout\(1),
	combout => \u1|u2|co~0_combout\);

-- Location: LCCOMB_X62_Y32_N2
\u1|u2|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u2|co~1_combout\ = (\u1|u2|co~0_combout\ & (\B~combout\(1) & ((\A~combout\(0)) # (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \u1|u2|co~0_combout\,
	datac => \A~combout\(2),
	datad => \B~combout\(1),
	combout => \u1|u2|co~1_combout\);

-- Location: LCCOMB_X62_Y32_N18
\u1|u3|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u3|co~0_combout\ = (\u1|n5~combout\ & ((\u1|u2|co~1_combout\) # ((\B~combout\(1) & \A~combout\(2))))) # (!\u1|n5~combout\ & (\B~combout\(1) & (\A~combout\(2) & \u1|u2|co~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \u1|n5~combout\,
	datac => \A~combout\(2),
	datad => \u1|u2|co~1_combout\,
	combout => \u1|u3|co~0_combout\);

-- Location: LCCOMB_X62_Y32_N16
\u1|n7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n7~combout\ = (\B~combout\(1) & \A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datad => \A~combout\(3),
	combout => \u1|n7~combout\);

-- Location: LCCOMB_X59_Y32_N14
\u1|u10|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u10|s~0_combout\ = \u1|n10~combout\ $ (\u1|n13~combout\ $ (\u1|u3|co~0_combout\ $ (!\u1|n7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|n10~combout\,
	datab => \u1|n13~combout\,
	datac => \u1|u3|co~0_combout\,
	datad => \u1|n7~combout\,
	combout => \u1|u10|s~0_combout\);

-- Location: LCCOMB_X59_Y32_N8
\u1|u10|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u10|s~combout\ = \u1|u6|co~0_combout\ $ (\u1|u10|s~0_combout\ $ (((!\u1|u6|s~combout\) # (!\u1|n12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u6|co~0_combout\,
	datab => \u1|n12~combout\,
	datac => \u1|u10|s~0_combout\,
	datad => \u1|u6|s~combout\,
	combout => \u1|u10|s~combout\);

-- Location: LCCOMB_X55_Y32_N22
\u3|u5|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u5|s~combout\ = \u3|u4|co~0_combout\ $ (\u2|u10|s~2_combout\ $ (\u2|u9|co~2_combout\ $ (\u1|u10|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|co~0_combout\,
	datab => \u2|u10|s~2_combout\,
	datac => \u2|u9|co~2_combout\,
	datad => \u1|u10|s~combout\,
	combout => \u3|u5|s~combout\);

-- Location: LCCOMB_X51_Y30_N24
\u2|n10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|n10~combout\ = (\D~combout\(2) & \C~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D~combout\(2),
	datad => \C~combout\(2),
	combout => \u2|n10~combout\);

-- Location: LCCOMB_X50_Y32_N12
\u2|u7|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u7|s~combout\ = \u2|u6|co~0_combout\ $ (\u2|n10~combout\ $ (\u2|n7~combout\ $ (\u2|u3|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|co~0_combout\,
	datab => \u2|n10~combout\,
	datac => \u2|n7~combout\,
	datad => \u2|u3|co~0_combout\,
	combout => \u2|u7|s~combout\);

-- Location: LCCOMB_X55_Y32_N28
\u2|u10|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u10|co~0_combout\ = (\u2|n13~combout\ & ((\u2|u7|s~combout\) # ((\u2|u6|s~combout\ & \u2|n12~combout\)))) # (!\u2|n13~combout\ & (\u2|u6|s~combout\ & (\u2|u7|s~combout\ & \u2|n12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|n13~combout\,
	datab => \u2|u6|s~combout\,
	datac => \u2|u7|s~combout\,
	datad => \u2|n12~combout\,
	combout => \u2|u10|co~0_combout\);

-- Location: LCCOMB_X55_Y32_N24
\u3|u5|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u5|co~0_combout\ = (\u3|u4|co~0_combout\ & ((\u1|u10|s~combout\) # (\u2|u10|s~2_combout\ $ (\u2|u9|co~2_combout\)))) # (!\u3|u4|co~0_combout\ & (\u1|u10|s~combout\ & (\u2|u10|s~2_combout\ $ (\u2|u9|co~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|co~0_combout\,
	datab => \u2|u10|s~2_combout\,
	datac => \u2|u9|co~2_combout\,
	datad => \u1|u10|s~combout\,
	combout => \u3|u5|co~0_combout\);

-- Location: LCCOMB_X51_Y30_N22
\u2|u8|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u8|s~2_combout\ = (\C~combout\(3) & (\D~combout\(2) $ (((\u2|u3|co~0_combout\ & \D~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|co~0_combout\,
	datab => \D~combout\(1),
	datac => \C~combout\(3),
	datad => \D~combout\(2),
	combout => \u2|u8|s~2_combout\);

-- Location: LCCOMB_X50_Y32_N8
\u2|u11|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u11|s~0_combout\ = \u2|u7|co~0_combout\ $ (\u2|u8|s~2_combout\ $ (((\D~combout\(3) & \C~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|co~0_combout\,
	datab => \D~combout\(3),
	datac => \C~combout\(2),
	datad => \u2|u8|s~2_combout\,
	combout => \u2|u11|s~0_combout\);

-- Location: LCCOMB_X59_Y32_N2
\u1|n14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|n14~combout\ = (\B~combout\(3) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datac => \A~combout\(2),
	combout => \u1|n14~combout\);

-- Location: LCCOMB_X62_Y32_N6
\u1|u6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u6|co~0_combout\ = (\u1|u3|s~combout\ & ((\u1|n9~combout\) # ((\u1|u2|s~1_combout\ & \u1|n8~combout\)))) # (!\u1|u3|s~combout\ & (\u1|u2|s~1_combout\ & (\u1|n9~combout\ & \u1|n8~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|s~combout\,
	datab => \u1|u2|s~1_combout\,
	datac => \u1|n9~combout\,
	datad => \u1|n8~combout\,
	combout => \u1|u6|co~0_combout\);

-- Location: LCCOMB_X59_Y32_N16
\u1|u7|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u7|co~0_combout\ = (\u1|n10~combout\ & ((\u1|u6|co~0_combout\) # (\u1|n7~combout\ $ (\u1|u3|co~0_combout\)))) # (!\u1|n10~combout\ & (\u1|u6|co~0_combout\ & (\u1|n7~combout\ $ (\u1|u3|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|n10~combout\,
	datab => \u1|n7~combout\,
	datac => \u1|u3|co~0_combout\,
	datad => \u1|u6|co~0_combout\,
	combout => \u1|u7|co~0_combout\);

-- Location: LCCOMB_X59_Y32_N20
\u1|u7|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u7|s~combout\ = \u1|n10~combout\ $ (\u1|n7~combout\ $ (\u1|u3|co~0_combout\ $ (\u1|u6|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|n10~combout\,
	datab => \u1|n7~combout\,
	datac => \u1|u3|co~0_combout\,
	datad => \u1|u6|co~0_combout\,
	combout => \u1|u7|s~combout\);

-- Location: LCCOMB_X59_Y32_N22
\u1|u10|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u10|co~0_combout\ = (\u1|u7|s~combout\ & ((\u1|n13~combout\) # ((\u1|u6|s~combout\ & \u1|n12~combout\)))) # (!\u1|u7|s~combout\ & (\u1|u6|s~combout\ & (\u1|n12~combout\ & \u1|n13~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u6|s~combout\,
	datab => \u1|n12~combout\,
	datac => \u1|u7|s~combout\,
	datad => \u1|n13~combout\,
	combout => \u1|u10|co~0_combout\);

-- Location: LCCOMB_X59_Y32_N10
\u1|u11|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u11|s~combout\ = \u1|u8|s~2_combout\ $ (\u1|n14~combout\ $ (\u1|u7|co~0_combout\ $ (\u1|u10|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u8|s~2_combout\,
	datab => \u1|n14~combout\,
	datac => \u1|u7|co~0_combout\,
	datad => \u1|u10|co~0_combout\,
	combout => \u1|u11|s~combout\);

-- Location: LCCOMB_X50_Y32_N2
\u3|u6|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u6|s~combout\ = \u2|u10|co~0_combout\ $ (\u3|u5|co~0_combout\ $ (\u2|u11|s~0_combout\ $ (\u1|u11|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u10|co~0_combout\,
	datab => \u3|u5|co~0_combout\,
	datac => \u2|u11|s~0_combout\,
	datad => \u1|u11|s~combout\,
	combout => \u3|u6|s~combout\);

-- Location: LCCOMB_X51_Y30_N2
\u2|n11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|n11~combout\ = (\C~combout\(3) & \D~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(3),
	datad => \D~combout\(2),
	combout => \u2|n11~combout\);

-- Location: LCCOMB_X50_Y32_N16
\u2|u8|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u8|co~0_combout\ = (\u2|u7|co~0_combout\ & ((\u2|n11~combout\) # ((\u2|n7~combout\ & \u2|u3|co~0_combout\)))) # (!\u2|u7|co~0_combout\ & (\u2|n7~combout\ & (\u2|n11~combout\ & \u2|u3|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|co~0_combout\,
	datab => \u2|n7~combout\,
	datac => \u2|n11~combout\,
	datad => \u2|u3|co~0_combout\,
	combout => \u2|u8|co~0_combout\);

-- Location: LCCOMB_X50_Y32_N10
\u2|u12|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u12|s~0_combout\ = \u2|u8|co~0_combout\ $ (((\C~combout\(3) & \D~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(3),
	datab => \D~combout\(3),
	datac => \u2|u8|co~0_combout\,
	combout => \u2|u12|s~0_combout\);

-- Location: LCCOMB_X50_Y32_N28
\u2|n14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|n14~combout\ = (\D~combout\(3) & \C~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D~combout\(3),
	datac => \C~combout\(2),
	combout => \u2|n14~combout\);

-- Location: LCCOMB_X50_Y32_N30
\u2|u11|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u11|co~0_combout\ = (\u2|n14~combout\ & ((\u2|u10|co~0_combout\) # (\u2|u7|co~0_combout\ $ (\u2|u8|s~2_combout\)))) # (!\u2|n14~combout\ & (\u2|u10|co~0_combout\ & (\u2|u7|co~0_combout\ $ (\u2|u8|s~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|co~0_combout\,
	datab => \u2|n14~combout\,
	datac => \u2|u10|co~0_combout\,
	datad => \u2|u8|s~2_combout\,
	combout => \u2|u11|co~0_combout\);

-- Location: LCCOMB_X50_Y32_N4
\u3|u6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u6|co~0_combout\ = (\u3|u5|co~0_combout\ & ((\u1|u11|s~combout\) # (\u2|u10|co~0_combout\ $ (\u2|u11|s~0_combout\)))) # (!\u3|u5|co~0_combout\ & (\u1|u11|s~combout\ & (\u2|u10|co~0_combout\ $ (\u2|u11|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u10|co~0_combout\,
	datab => \u3|u5|co~0_combout\,
	datac => \u2|u11|s~0_combout\,
	datad => \u1|u11|s~combout\,
	combout => \u3|u6|co~0_combout\);

-- Location: LCCOMB_X59_Y32_N4
\u1|u11|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u11|co~0_combout\ = (\u1|n14~combout\ & ((\u1|u10|co~0_combout\) # (\u1|u8|s~2_combout\ $ (\u1|u7|co~0_combout\)))) # (!\u1|n14~combout\ & (\u1|u10|co~0_combout\ & (\u1|u8|s~2_combout\ $ (\u1|u7|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u8|s~2_combout\,
	datab => \u1|n14~combout\,
	datac => \u1|u7|co~0_combout\,
	datad => \u1|u10|co~0_combout\,
	combout => \u1|u11|co~0_combout\);

-- Location: LCCOMB_X59_Y32_N18
\u1|u12|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u12|s~0_combout\ = \u1|u8|co~0_combout\ $ (\u1|u11|co~0_combout\ $ (((\B~combout\(3) & \A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u8|co~0_combout\,
	datab => \B~combout\(3),
	datac => \u1|u11|co~0_combout\,
	datad => \A~combout\(3),
	combout => \u1|u12|s~0_combout\);

-- Location: LCCOMB_X50_Y32_N14
\u3|u7|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u7|s~0_combout\ = \u2|u12|s~0_combout\ $ (\u2|u11|co~0_combout\ $ (\u3|u6|co~0_combout\ $ (\u1|u12|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u12|s~0_combout\,
	datab => \u2|u11|co~0_combout\,
	datac => \u3|u6|co~0_combout\,
	datad => \u1|u12|s~0_combout\,
	combout => \u3|u7|s~0_combout\);

-- Location: LCCOMB_X50_Y32_N26
\u2|u12|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u12|co~0_combout\ = (\u2|u8|co~0_combout\ & ((\u2|u11|co~0_combout\) # ((\C~combout\(3) & \D~combout\(3))))) # (!\u2|u8|co~0_combout\ & (\C~combout\(3) & (\D~combout\(3) & \u2|u11|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(3),
	datab => \D~combout\(3),
	datac => \u2|u8|co~0_combout\,
	datad => \u2|u11|co~0_combout\,
	combout => \u2|u12|co~0_combout\);

-- Location: LCCOMB_X50_Y32_N24
\u3|u7|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u7|co~0_combout\ = (\u3|u6|co~0_combout\ & ((\u1|u12|s~0_combout\) # (\u2|u12|s~0_combout\ $ (\u2|u11|co~0_combout\)))) # (!\u3|u6|co~0_combout\ & (\u1|u12|s~0_combout\ & (\u2|u12|s~0_combout\ $ (\u2|u11|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u12|s~0_combout\,
	datab => \u2|u11|co~0_combout\,
	datac => \u3|u6|co~0_combout\,
	datad => \u1|u12|s~0_combout\,
	combout => \u3|u7|co~0_combout\);

-- Location: LCCOMB_X59_Y32_N28
\u1|u12|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|u12|co~0_combout\ = (\u1|u8|co~0_combout\ & ((\u1|u11|co~0_combout\) # ((\B~combout\(3) & \A~combout\(3))))) # (!\u1|u8|co~0_combout\ & (\B~combout\(3) & (\u1|u11|co~0_combout\ & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u8|co~0_combout\,
	datab => \B~combout\(3),
	datac => \u1|u11|co~0_combout\,
	datad => \A~combout\(3),
	combout => \u1|u12|co~0_combout\);

-- Location: LCCOMB_X50_Y32_N20
\u3|u8|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u8|s~0_combout\ = \u2|u12|co~0_combout\ $ (\u3|u7|co~0_combout\ $ (\u1|u12|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|u12|co~0_combout\,
	datac => \u3|u7|co~0_combout\,
	datad => \u1|u12|co~0_combout\,
	combout => \u3|u8|s~0_combout\);

-- Location: LCCOMB_X50_Y32_N22
\u3|u8|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|u8|co~0_combout\ = (\u2|u12|co~0_combout\ & ((\u3|u7|co~0_combout\) # (\u1|u12|co~0_combout\))) # (!\u2|u12|co~0_combout\ & (\u3|u7|co~0_combout\ & \u1|u12|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|u12|co~0_combout\,
	datac => \u3|u7|co~0_combout\,
	datad => \u1|u12|co~0_combout\,
	combout => \u3|u8|co~0_combout\);

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u3|u2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(1));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u3|u6|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(5));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u3|u7|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(6));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[7]~I\ : cycloneii_io
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
	datain => \u3|u8|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(7));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[8]~I\ : cycloneii_io
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
	datain => \u3|u8|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(8));
END structure;


