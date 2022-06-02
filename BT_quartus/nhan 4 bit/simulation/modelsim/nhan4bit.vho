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

-- DATE "04/22/2021 09:51:18"

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
SIGNAL \fa2|co~0_combout\ : std_logic;
SIGNAL \p~0_combout\ : std_logic;
SIGNAL \fa1|co~0_combout\ : std_logic;
SIGNAL \fa2|s~0_combout\ : std_logic;
SIGNAL \fa2|s~1_combout\ : std_logic;
SIGNAL \fa5|co~2_combout\ : std_logic;
SIGNAL \fa2|co~1_combout\ : std_logic;
SIGNAL \fa3|s~combout\ : std_logic;
SIGNAL \fa6|s~combout\ : std_logic;
SIGNAL \fa9|co~2_combout\ : std_logic;
SIGNAL \fa6|co~0_combout\ : std_logic;
SIGNAL \fa3|co~0_combout\ : std_logic;
SIGNAL \fa7|s~combout\ : std_logic;
SIGNAL \fa10|s~combout\ : std_logic;
SIGNAL \fa8|co~3_combout\ : std_logic;
SIGNAL \fa10|co~0_combout\ : std_logic;
SIGNAL \fa7|co~0_combout\ : std_logic;
SIGNAL \fa11|s~combout\ : std_logic;
SIGNAL \fa8|co~2_combout\ : std_logic;
SIGNAL \fa11|co~0_combout\ : std_logic;
SIGNAL \fa12|s~0_combout\ : std_logic;
SIGNAL \fa12|co~0_combout\ : std_logic;
SIGNAL x : std_logic_vector(14 DOWNTO 0);
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
\fa2|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa2|co~0_combout\ = (\b~combout\(0) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \fa2|co~0_combout\);

-- Location: LCCOMB_X64_Y29_N6
\x[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- x(4) = (\a~combout\(3) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datac => \b~combout\(0),
	combout => x(4));

-- Location: LCCOMB_X64_Y29_N26
\x[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- x(8) = (\a~combout\(1) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datad => \b~combout\(2),
	combout => x(8));

-- Location: LCCOMB_X64_Y28_N12
\x[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- x(6) = (\b~combout\(1) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datac => \a~combout\(3),
	combout => x(6));

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
\p~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p~0_combout\ = (\a~combout\(0) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \b~combout\(0),
	combout => \p~0_combout\);

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
\fa1|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa1|co~0_combout\ = (\b~combout\(1) & (\a~combout\(0) $ (((\b~combout\(0) & \a~combout\(1)))))) # (!\b~combout\(1) & (((\b~combout\(0) & \a~combout\(1)))))

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
	combout => \fa1|co~0_combout\);

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
\fa2|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa2|s~0_combout\ = (\b~combout\(1) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \fa2|s~0_combout\);

-- Location: LCCOMB_X64_Y29_N0
\fa2|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa2|s~1_combout\ = (\b~combout\(0) & (\a~combout\(2) $ (((!\a~combout\(0) & \fa2|s~0_combout\))))) # (!\b~combout\(0) & (((\fa2|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \a~combout\(2),
	datad => \fa2|s~0_combout\,
	combout => \fa2|s~1_combout\);

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
\fa5|co~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa5|co~2_combout\ = \fa2|s~1_combout\ $ (((\a~combout\(0) & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \fa2|s~1_combout\,
	datad => \b~combout\(2),
	combout => \fa5|co~2_combout\);

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
\fa2|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa2|co~1_combout\ = (\fa2|co~0_combout\ & (\b~combout\(1) & ((\a~combout\(0)) # (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fa2|co~0_combout\,
	datab => \a~combout\(0),
	datac => \a~combout\(2),
	datad => \b~combout\(1),
	combout => \fa2|co~1_combout\);

-- Location: LCCOMB_X64_Y29_N8
\fa3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa3|s~combout\ = x(4) $ (\fa2|co~1_combout\ $ (((\a~combout\(2) & \b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(4),
	datab => \a~combout\(2),
	datac => \fa2|co~1_combout\,
	datad => \b~combout\(1),
	combout => \fa3|s~combout\);

-- Location: LCCOMB_X64_Y29_N28
\x[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- x(7) = (\a~combout\(0) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datad => \b~combout\(2),
	combout => x(7));

-- Location: LCCOMB_X64_Y29_N20
\fa6|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa6|s~combout\ = x(8) $ (\fa3|s~combout\ $ (((\fa2|s~1_combout\ & x(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(8),
	datab => \fa2|s~1_combout\,
	datac => \fa3|s~combout\,
	datad => x(7),
	combout => \fa6|s~combout\);

-- Location: LCCOMB_X64_Y29_N12
\fa9|co~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa9|co~2_combout\ = \fa6|s~combout\ $ (((\a~combout\(0) & \b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(3),
	datac => \fa6|s~combout\,
	combout => \fa9|co~2_combout\);

-- Location: LCCOMB_X64_Y29_N30
\fa6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa6|co~0_combout\ = (x(8) & ((\fa3|s~combout\) # ((\fa2|s~1_combout\ & x(7))))) # (!x(8) & (\fa2|s~1_combout\ & (\fa3|s~combout\ & x(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(8),
	datab => \fa2|s~1_combout\,
	datac => \fa3|s~combout\,
	datad => x(7),
	combout => \fa6|co~0_combout\);

-- Location: LCCOMB_X64_Y29_N16
\fa3|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa3|co~0_combout\ = (x(4) & ((\fa2|co~1_combout\) # ((\a~combout\(2) & \b~combout\(1))))) # (!x(4) & (\a~combout\(2) & (\fa2|co~1_combout\ & \b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(4),
	datab => \a~combout\(2),
	datac => \fa2|co~1_combout\,
	datad => \b~combout\(1),
	combout => \fa3|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N6
\x[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- x(9) = (\a~combout\(2) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => x(9));

-- Location: LCCOMB_X64_Y28_N16
\fa7|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa7|s~combout\ = x(6) $ (\fa6|co~0_combout\ $ (\fa3|co~0_combout\ $ (x(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(6),
	datab => \fa6|co~0_combout\,
	datac => \fa3|co~0_combout\,
	datad => x(9),
	combout => \fa7|s~combout\);

-- Location: LCCOMB_X64_Y28_N24
\x[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- x(11) = (\a~combout\(0) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datad => \b~combout\(3),
	combout => x(11));

-- Location: LCCOMB_X64_Y28_N10
\x[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- x(12) = (\b~combout\(3) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datad => \a~combout\(1),
	combout => x(12));

-- Location: LCCOMB_X64_Y28_N2
\fa10|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa10|s~combout\ = \fa7|s~combout\ $ (x(12) $ (((\fa6|s~combout\ & x(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fa7|s~combout\,
	datab => \fa6|s~combout\,
	datac => x(11),
	datad => x(12),
	combout => \fa10|s~combout\);

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
\fa8|co~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa8|co~3_combout\ = (\a~combout\(3) & (\b~combout\(2) $ (((\fa3|co~0_combout\ & \b~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fa3|co~0_combout\,
	datab => \b~combout\(1),
	datac => \a~combout\(3),
	datad => \b~combout\(2),
	combout => \fa8|co~3_combout\);

-- Location: LCCOMB_X64_Y28_N30
\fa10|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa10|co~0_combout\ = (\fa7|s~combout\ & ((x(12)) # ((\fa6|s~combout\ & x(11))))) # (!\fa7|s~combout\ & (\fa6|s~combout\ & (x(11) & x(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fa7|s~combout\,
	datab => \fa6|s~combout\,
	datac => x(11),
	datad => x(12),
	combout => \fa10|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N20
\x[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- x(13) = (\b~combout\(3) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \a~combout\(2),
	combout => x(13));

-- Location: LCCOMB_X64_Y28_N0
\fa7|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa7|co~0_combout\ = (\fa6|co~0_combout\ & ((x(9)) # (x(6) $ (\fa3|co~0_combout\)))) # (!\fa6|co~0_combout\ & (x(9) & (x(6) $ (\fa3|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(6),
	datab => \fa6|co~0_combout\,
	datac => \fa3|co~0_combout\,
	datad => x(9),
	combout => \fa7|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N26
\fa11|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa11|s~combout\ = \fa8|co~3_combout\ $ (\fa10|co~0_combout\ $ (x(13) $ (\fa7|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fa8|co~3_combout\,
	datab => \fa10|co~0_combout\,
	datac => x(13),
	datad => \fa7|co~0_combout\,
	combout => \fa11|s~combout\);

-- Location: LCCOMB_X64_Y28_N14
\x[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- x(10) = (\a~combout\(3) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(2),
	combout => x(10));

-- Location: LCCOMB_X64_Y28_N8
\fa8|co~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa8|co~2_combout\ = (x(10) & ((\fa7|co~0_combout\) # ((x(6) & \fa3|co~0_combout\)))) # (!x(10) & (x(6) & (\fa3|co~0_combout\ & \fa7|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(6),
	datab => x(10),
	datac => \fa3|co~0_combout\,
	datad => \fa7|co~0_combout\,
	combout => \fa8|co~2_combout\);

-- Location: LCCOMB_X64_Y28_N28
\fa11|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa11|co~0_combout\ = (\fa10|co~0_combout\ & ((x(13)) # (\fa8|co~3_combout\ $ (\fa7|co~0_combout\)))) # (!\fa10|co~0_combout\ & (x(13) & (\fa8|co~3_combout\ $ (\fa7|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fa8|co~3_combout\,
	datab => \fa10|co~0_combout\,
	datac => x(13),
	datad => \fa7|co~0_combout\,
	combout => \fa11|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N18
\fa12|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa12|s~0_combout\ = \fa8|co~2_combout\ $ (\fa11|co~0_combout\ $ (((\b~combout\(3) & \a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \fa8|co~2_combout\,
	datac => \a~combout\(3),
	datad => \fa11|co~0_combout\,
	combout => \fa12|s~0_combout\);

-- Location: LCCOMB_X64_Y28_N4
\fa12|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa12|co~0_combout\ = (\fa8|co~2_combout\ & ((\fa11|co~0_combout\) # ((\b~combout\(3) & \a~combout\(3))))) # (!\fa8|co~2_combout\ & (\b~combout\(3) & (\a~combout\(3) & \fa11|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \fa8|co~2_combout\,
	datac => \a~combout\(3),
	datad => \fa11|co~0_combout\,
	combout => \fa12|co~0_combout\);

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
	datain => \p~0_combout\,
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
	datain => \fa1|co~0_combout\,
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
	datain => \fa5|co~2_combout\,
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
	datain => \fa9|co~2_combout\,
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
	datain => \fa10|s~combout\,
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
	datain => \fa11|s~combout\,
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
	datain => \fa12|s~0_combout\,
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
	datain => \fa12|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(7));
END structure;


