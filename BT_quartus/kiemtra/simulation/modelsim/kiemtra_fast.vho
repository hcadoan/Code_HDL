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

-- DATE "10/06/2021 10:03:47"

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

ENTITY 	kiemtra IS
    PORT (
	y : OUT std_logic_vector(2 DOWNTO 0);
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	e : IN std_logic
	);
END kiemtra;

-- Design Ports Information
-- y[0]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[1]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[2]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- e	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF kiemtra IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_e : std_logic;
SIGNAL \or2~0_combout\ : std_logic;
SIGNAL \or1~1_combout\ : std_logic;
SIGNAL \or1~3_combout\ : std_logic;
SIGNAL \e~combout\ : std_logic;
SIGNAL \s1|y2~0_combout\ : std_logic;
SIGNAL \s4|y1~0_combout\ : std_logic;
SIGNAL \s4|y1~1_combout\ : std_logic;
SIGNAL \s4|y1~2_combout\ : std_logic;
SIGNAL \or2~1_combout\ : std_logic;
SIGNAL \or2~2_combout\ : std_logic;
SIGNAL \s8|y1~0_combout\ : std_logic;
SIGNAL \or2~3_combout\ : std_logic;
SIGNAL \or2~4_combout\ : std_logic;
SIGNAL \or2~5_combout\ : std_logic;
SIGNAL \or2~6_combout\ : std_logic;
SIGNAL \s8|y1~1_combout\ : std_logic;
SIGNAL \s8|y1~2_combout\ : std_logic;
SIGNAL \or1~4_combout\ : std_logic;
SIGNAL \or1~5_combout\ : std_logic;
SIGNAL \or1~0_combout\ : std_logic;
SIGNAL \or1~2_combout\ : std_logic;
SIGNAL \s1|y0~0_combout\ : std_logic;
SIGNAL \or1~6_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

y <= ww_y;
ww_a <= a;
ww_b <= b;
ww_e <= e;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X64_Y33_N18
\or2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or2~0_combout\ = (\b~combout\(6) & (\a~combout\(6) & (\a~combout\(5) & !\b~combout\(5)))) # (!\b~combout\(6) & ((\a~combout\(6)) # ((\a~combout\(5) & !\b~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \a~combout\(6),
	datac => \a~combout\(5),
	datad => \b~combout\(5),
	combout => \or2~0_combout\);

-- Location: LCCOMB_X64_Y33_N6
\or1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \or1~1_combout\ = (\b~combout\(4) & !\a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \or1~1_combout\);

-- Location: LCCOMB_X64_Y31_N12
\or1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \or1~3_combout\ = (\b~combout\(3) & (((\b~combout\(2) & !\a~combout\(2))) # (!\a~combout\(3)))) # (!\b~combout\(3) & (\b~combout\(2) & (!\a~combout\(2) & !\a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \a~combout\(3),
	combout => \or1~3_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
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
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
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
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
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
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e~I\ : cycloneii_io
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
	padio => ww_e,
	combout => \e~combout\);

-- Location: LCCOMB_X64_Y33_N26
\s1|y2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s1|y2~0_combout\ = (\a~combout\(7) & (!\b~combout\(7) & \e~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \b~combout\(7),
	datac => \e~combout\,
	combout => \s1|y2~0_combout\);

-- Location: LCCOMB_X64_Y33_N0
\s4|y1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s4|y1~0_combout\ = (\e~combout\ & (\a~combout\(7) $ (!\b~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \b~combout\(7),
	datac => \e~combout\,
	combout => \s4|y1~0_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
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
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
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
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
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
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X64_Y33_N4
\s4|y1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s4|y1~1_combout\ = (\b~combout\(6) & (\a~combout\(6) & (\a~combout\(5) $ (!\b~combout\(5))))) # (!\b~combout\(6) & (!\a~combout\(6) & (\a~combout\(5) $ (!\b~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \a~combout\(6),
	datac => \a~combout\(5),
	datad => \b~combout\(5),
	combout => \s4|y1~1_combout\);

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X64_Y33_N22
\s4|y1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s4|y1~2_combout\ = (\s4|y1~0_combout\ & (\s4|y1~1_combout\ & (\b~combout\(4) $ (!\a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \s4|y1~0_combout\,
	datac => \s4|y1~1_combout\,
	datad => \a~combout\(4),
	combout => \s4|y1~2_combout\);

-- Location: LCCOMB_X64_Y33_N30
\or2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \or2~1_combout\ = (!\b~combout\(4) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \or2~1_combout\);

-- Location: LCCOMB_X64_Y33_N8
\or2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \or2~2_combout\ = (\s4|y1~0_combout\ & ((\or2~0_combout\) # ((\or2~1_combout\ & \s4|y1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or2~0_combout\,
	datab => \or2~1_combout\,
	datac => \s4|y1~1_combout\,
	datad => \s4|y1~0_combout\,
	combout => \or2~2_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y31_N2
\s8|y1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s8|y1~0_combout\ = (\b~combout\(3) & (\a~combout\(3) & (\b~combout\(2) $ (!\a~combout\(2))))) # (!\b~combout\(3) & (!\a~combout\(3) & (\b~combout\(2) $ (!\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \a~combout\(3),
	combout => \s8|y1~0_combout\);

-- Location: LCCOMB_X64_Y31_N0
\or2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \or2~3_combout\ = (\b~combout\(3) & (!\b~combout\(2) & (\a~combout\(2) & \a~combout\(3)))) # (!\b~combout\(3) & ((\a~combout\(3)) # ((!\b~combout\(2) & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \a~combout\(3),
	combout => \or2~3_combout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y32_N0
\or2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \or2~4_combout\ = (\b~combout\(1) & (\a~combout\(0) & (!\b~combout\(0) & \a~combout\(1)))) # (!\b~combout\(1) & ((\a~combout\(1)) # ((\a~combout\(0) & !\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \or2~4_combout\);

-- Location: LCCOMB_X64_Y33_N28
\or2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \or2~5_combout\ = (\or2~3_combout\) # ((\s8|y1~0_combout\ & \or2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s8|y1~0_combout\,
	datac => \or2~3_combout\,
	datad => \or2~4_combout\,
	combout => \or2~5_combout\);

-- Location: LCCOMB_X64_Y33_N16
\or2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \or2~6_combout\ = (\s1|y2~0_combout\) # ((\or2~2_combout\) # ((\s4|y1~2_combout\ & \or2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|y2~0_combout\,
	datab => \s4|y1~2_combout\,
	datac => \or2~2_combout\,
	datad => \or2~5_combout\,
	combout => \or2~6_combout\);

-- Location: LCCOMB_X64_Y32_N2
\s8|y1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s8|y1~1_combout\ = (\b~combout\(1) & (\a~combout\(1) & (\a~combout\(0) $ (!\b~combout\(0))))) # (!\b~combout\(1) & (!\a~combout\(1) & (\a~combout\(0) $ (!\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \s8|y1~1_combout\);

-- Location: LCCOMB_X64_Y33_N2
\s8|y1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s8|y1~2_combout\ = (\s8|y1~0_combout\ & (\s8|y1~1_combout\ & \s4|y1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s8|y1~0_combout\,
	datac => \s8|y1~1_combout\,
	datad => \s4|y1~2_combout\,
	combout => \s8|y1~2_combout\);

-- Location: LCCOMB_X64_Y32_N28
\or1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \or1~4_combout\ = (\b~combout\(1) & (((!\a~combout\(0) & \b~combout\(0))) # (!\a~combout\(1)))) # (!\b~combout\(1) & (!\a~combout\(0) & (\b~combout\(0) & !\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \or1~4_combout\);

-- Location: LCCOMB_X64_Y33_N20
\or1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \or1~5_combout\ = (\or1~3_combout\) # ((\s8|y1~0_combout\ & \or1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or1~3_combout\,
	datab => \s8|y1~0_combout\,
	datac => \or1~4_combout\,
	combout => \or1~5_combout\);

-- Location: LCCOMB_X64_Y33_N12
\or1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \or1~0_combout\ = (\b~combout\(6) & (((!\a~combout\(5) & \b~combout\(5))) # (!\a~combout\(6)))) # (!\b~combout\(6) & (!\a~combout\(6) & (!\a~combout\(5) & \b~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \a~combout\(6),
	datac => \a~combout\(5),
	datad => \b~combout\(5),
	combout => \or1~0_combout\);

-- Location: LCCOMB_X64_Y33_N24
\or1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \or1~2_combout\ = (\s4|y1~0_combout\ & ((\or1~0_combout\) # ((\or1~1_combout\ & \s4|y1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or1~1_combout\,
	datab => \s4|y1~0_combout\,
	datac => \s4|y1~1_combout\,
	datad => \or1~0_combout\,
	combout => \or1~2_combout\);

-- Location: LCCOMB_X64_Y33_N10
\s1|y0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s1|y0~0_combout\ = (!\a~combout\(7) & (\b~combout\(7) & \e~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \b~combout\(7),
	datac => \e~combout\,
	combout => \s1|y0~0_combout\);

-- Location: LCCOMB_X64_Y33_N14
\or1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \or1~6_combout\ = (\or1~2_combout\) # ((\s1|y0~0_combout\) # ((\or1~5_combout\ & \s4|y1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or1~5_combout\,
	datab => \s4|y1~2_combout\,
	datac => \or1~2_combout\,
	datad => \s1|y0~0_combout\,
	combout => \or1~6_combout\);

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[0]~I\ : cycloneii_io
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
	datain => \or2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[1]~I\ : cycloneii_io
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
	datain => \s8|y1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[2]~I\ : cycloneii_io
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
	datain => \or1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(2));
END structure;


