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

-- DATE "10/27/2021 08:48:23"

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

ENTITY 	nhan4bit IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	p : OUT std_logic_vector(7 DOWNTO 0)
	);
END nhan4bit;

-- Design Ports Information
-- p[0]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[1]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[2]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[3]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[4]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[5]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[6]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[7]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF nhan4bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_p : std_logic_vector(7 DOWNTO 0);
SIGNAL \u2|co~0_combout\ : std_logic;
SIGNAL \n5~combout\ : std_logic;
SIGNAL \n9~combout\ : std_logic;
SIGNAL \n7~combout\ : std_logic;
SIGNAL \n0~combout\ : std_logic;
SIGNAL \u1|s~0_combout\ : std_logic;
SIGNAL \u2|s~0_combout\ : std_logic;
SIGNAL \u2|s~1_combout\ : std_logic;
SIGNAL \u5|s~2_combout\ : std_logic;
SIGNAL \u2|co~1_combout\ : std_logic;
SIGNAL \u3|s~combout\ : std_logic;
SIGNAL \n8~combout\ : std_logic;
SIGNAL \u6|s~combout\ : std_logic;
SIGNAL \u9|s~2_combout\ : std_logic;
SIGNAL \u6|co~0_combout\ : std_logic;
SIGNAL \u3|co~0_combout\ : std_logic;
SIGNAL \n10~combout\ : std_logic;
SIGNAL \u7|s~combout\ : std_logic;
SIGNAL \n12~combout\ : std_logic;
SIGNAL \n13~combout\ : std_logic;
SIGNAL \u10|s~combout\ : std_logic;
SIGNAL \u8|s~2_combout\ : std_logic;
SIGNAL \u10|co~0_combout\ : std_logic;
SIGNAL \n14~combout\ : std_logic;
SIGNAL \u7|co~0_combout\ : std_logic;
SIGNAL \u11|s~combout\ : std_logic;
SIGNAL \n11~combout\ : std_logic;
SIGNAL \u8|co~0_combout\ : std_logic;
SIGNAL \u11|co~0_combout\ : std_logic;
SIGNAL \u12|s~0_combout\ : std_logic;
SIGNAL \u12|co~0_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
p <= ww_p;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X64_Y29_N10
\u2|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|co~0_combout\ = (\b~combout\(0) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \u2|co~0_combout\);

-- Location: LCCOMB_X64_Y29_N6
n5 : cycloneii_lcell_comb
-- Equation(s):
-- \n5~combout\ = (\a~combout\(3) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datac => \b~combout\(0),
	combout => \n5~combout\);

-- Location: LCCOMB_X64_Y29_N26
n9 : cycloneii_lcell_comb
-- Equation(s):
-- \n9~combout\ = (\a~combout\(1) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datad => \b~combout\(2),
	combout => \n9~combout\);

-- Location: LCCOMB_X64_Y28_N12
n7 : cycloneii_lcell_comb
-- Equation(s):
-- \n7~combout\ = (\b~combout\(1) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datac => \a~combout\(3),
	combout => \n7~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X64_Y29_N24
n0 : cycloneii_lcell_comb
-- Equation(s):
-- \n0~combout\ = (\a~combout\(0) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \b~combout\(0),
	combout => \n0~combout\);

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X64_Y29_N2
\u1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|s~0_combout\ = (\b~combout\(1) & (\a~combout\(0) $ (((\b~combout\(0) & \a~combout\(1)))))) # (!\b~combout\(1) & (((\b~combout\(0) & \a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \u1|s~0_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X64_Y29_N22
\u2|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|s~0_combout\ = (\b~combout\(1) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \u2|s~0_combout\);

-- Location: LCCOMB_X64_Y29_N0
\u2|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|s~1_combout\ = (\b~combout\(0) & (\a~combout\(2) $ (((!\a~combout\(0) & \u2|s~0_combout\))))) # (!\b~combout\(0) & (((\u2|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \a~combout\(2),
	datad => \u2|s~0_combout\,
	combout => \u2|s~1_combout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X64_Y29_N18
\u5|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|s~2_combout\ = \u2|s~1_combout\ $ (((\a~combout\(0) & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \u2|s~1_combout\,
	datad => \b~combout\(2),
	combout => \u5|s~2_combout\);

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X64_Y29_N4
\u2|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|co~1_combout\ = (\u2|co~0_combout\ & (\b~combout\(1) & ((\a~combout\(0)) # (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|co~0_combout\,
	datab => \a~combout\(0),
	datac => \a~combout\(2),
	datad => \b~combout\(1),
	combout => \u2|co~1_combout\);

-- Location: LCCOMB_X64_Y29_N8
\u3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|s~combout\ = \n5~combout\ $ (\u2|co~1_combout\ $ (((\a~combout\(2) & \b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5~combout\,
	datab => \a~combout\(2),
	datac => \u2|co~1_combout\,
	datad => \b~combout\(1),
	combout => \u3|s~combout\);

-- Location: LCCOMB_X64_Y29_N28
n8 : cycloneii_lcell_comb
-- Equation(s):
-- \n8~combout\ = (\a~combout\(0) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datad => \b~combout\(2),
	combout => \n8~combout\);

-- Location: LCCOMB_X64_Y29_N20
\u6|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|s~combout\ = \n9~combout\ $ (\u3|s~combout\ $ (((\u2|s~1_combout\ & \n8~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n9~combout\,
	datab => \u2|s~1_combout\,
	datac => \u3|s~combout\,
	datad => \n8~combout\,
	combout => \u6|s~combout\);

-- Location: LCCOMB_X64_Y29_N12
\u9|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|s~2_combout\ = \u6|s~combout\ $ (((\a~combout\(0) & \b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(3),
	datac => \u6|s~combout\,
	combout => \u9|s~2_combout\);

-- Location: LCCOMB_X64_Y29_N30
\u6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|co~0_combout\ = (\n9~combout\ & ((\u3|s~combout\) # ((\u2|s~1_combout\ & \n8~combout\)))) # (!\n9~combout\ & (\u2|s~1_combout\ & (\u3|s~combout\ & \n8~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n9~combout\,
	datab => \u2|s~1_combout\,
	datac => \u3|s~combout\,
	datad => \n8~combout\,
	combout => \u6|co~0_combout\);

-- Location: LCCOMB_X64_Y29_N16
\u3|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|co~0_combout\ = (\n5~combout\ & ((\u2|co~1_combout\) # ((\a~combout\(2) & \b~combout\(1))))) # (!\n5~combout\ & (\a~combout\(2) & (\u2|co~1_combout\ & \b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5~combout\,
	datab => \a~combout\(2),
	datac => \u2|co~1_combout\,
	datad => \b~combout\(1),
	combout => \u3|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N6
n10 : cycloneii_lcell_comb
-- Equation(s):
-- \n10~combout\ = (\a~combout\(2) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \n10~combout\);

-- Location: LCCOMB_X64_Y28_N16
\u7|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|s~combout\ = \n7~combout\ $ (\u6|co~0_combout\ $ (\u3|co~0_combout\ $ (\n10~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7~combout\,
	datab => \u6|co~0_combout\,
	datac => \u3|co~0_combout\,
	datad => \n10~combout\,
	combout => \u7|s~combout\);

-- Location: LCCOMB_X64_Y28_N24
n12 : cycloneii_lcell_comb
-- Equation(s):
-- \n12~combout\ = (\a~combout\(0) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datad => \b~combout\(3),
	combout => \n12~combout\);

-- Location: LCCOMB_X64_Y28_N10
n13 : cycloneii_lcell_comb
-- Equation(s):
-- \n13~combout\ = (\b~combout\(3) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datad => \a~combout\(1),
	combout => \n13~combout\);

-- Location: LCCOMB_X64_Y28_N2
\u10|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|s~combout\ = \u7|s~combout\ $ (\n13~combout\ $ (((\u6|s~combout\ & \n12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|s~combout\,
	datab => \u6|s~combout\,
	datac => \n12~combout\,
	datad => \n13~combout\,
	combout => \u10|s~combout\);

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X64_Y28_N22
\u8|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|s~2_combout\ = (\a~combout\(3) & (\b~combout\(2) $ (((\u3|co~0_combout\ & \b~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|co~0_combout\,
	datab => \b~combout\(1),
	datac => \a~combout\(3),
	datad => \b~combout\(2),
	combout => \u8|s~2_combout\);

-- Location: LCCOMB_X64_Y28_N30
\u10|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u10|co~0_combout\ = (\u7|s~combout\ & ((\n13~combout\) # ((\u6|s~combout\ & \n12~combout\)))) # (!\u7|s~combout\ & (\u6|s~combout\ & (\n12~combout\ & \n13~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|s~combout\,
	datab => \u6|s~combout\,
	datac => \n12~combout\,
	datad => \n13~combout\,
	combout => \u10|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N20
n14 : cycloneii_lcell_comb
-- Equation(s):
-- \n14~combout\ = (\b~combout\(3) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \a~combout\(2),
	combout => \n14~combout\);

-- Location: LCCOMB_X64_Y28_N0
\u7|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|co~0_combout\ = (\u6|co~0_combout\ & ((\n10~combout\) # (\n7~combout\ $ (\u3|co~0_combout\)))) # (!\u6|co~0_combout\ & (\n10~combout\ & (\n7~combout\ $ (\u3|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7~combout\,
	datab => \u6|co~0_combout\,
	datac => \u3|co~0_combout\,
	datad => \n10~combout\,
	combout => \u7|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N26
\u11|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \u11|s~combout\ = \u8|s~2_combout\ $ (\u10|co~0_combout\ $ (\n14~combout\ $ (\u7|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|s~2_combout\,
	datab => \u10|co~0_combout\,
	datac => \n14~combout\,
	datad => \u7|co~0_combout\,
	combout => \u11|s~combout\);

-- Location: LCCOMB_X64_Y28_N14
n11 : cycloneii_lcell_comb
-- Equation(s):
-- \n11~combout\ = (\a~combout\(3) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(2),
	combout => \n11~combout\);

-- Location: LCCOMB_X64_Y28_N8
\u8|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|co~0_combout\ = (\n11~combout\ & ((\u7|co~0_combout\) # ((\n7~combout\ & \u3|co~0_combout\)))) # (!\n11~combout\ & (\n7~combout\ & (\u3|co~0_combout\ & \u7|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7~combout\,
	datab => \n11~combout\,
	datac => \u3|co~0_combout\,
	datad => \u7|co~0_combout\,
	combout => \u8|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N28
\u11|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u11|co~0_combout\ = (\u10|co~0_combout\ & ((\n14~combout\) # (\u8|s~2_combout\ $ (\u7|co~0_combout\)))) # (!\u10|co~0_combout\ & (\n14~combout\ & (\u8|s~2_combout\ $ (\u7|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|s~2_combout\,
	datab => \u10|co~0_combout\,
	datac => \n14~combout\,
	datad => \u7|co~0_combout\,
	combout => \u11|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N18
\u12|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u12|s~0_combout\ = \u8|co~0_combout\ $ (\u11|co~0_combout\ $ (((\b~combout\(3) & \a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \u8|co~0_combout\,
	datac => \a~combout\(3),
	datad => \u11|co~0_combout\,
	combout => \u12|s~0_combout\);

-- Location: LCCOMB_X64_Y28_N4
\u12|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u12|co~0_combout\ = (\u8|co~0_combout\ & ((\u11|co~0_combout\) # ((\b~combout\(3) & \a~combout\(3))))) # (!\u8|co~0_combout\ & (\b~combout\(3) & (\a~combout\(3) & \u11|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \u8|co~0_combout\,
	datac => \a~combout\(3),
	datad => \u11|co~0_combout\,
	combout => \u12|co~0_combout\);

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[0]~I\ : cycloneii_io
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
	datain => \n0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(0));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[1]~I\ : cycloneii_io
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
	datain => \u1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(1));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[2]~I\ : cycloneii_io
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
	datain => \u5|s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(2));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[3]~I\ : cycloneii_io
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
	datain => \u9|s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(3));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[4]~I\ : cycloneii_io
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
	datain => \u10|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(4));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[5]~I\ : cycloneii_io
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
	datain => \u11|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(5));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[6]~I\ : cycloneii_io
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
	datain => \u12|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(6));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[7]~I\ : cycloneii_io
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
	datain => \u12|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(7));
END structure;


