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

-- DATE "09/18/2021 16:07:46"

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

ENTITY 	IC7485 IS
    PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	AlBin : IN std_logic;
	AnBin : IN std_logic;
	AbBin : IN std_logic;
	AlB : OUT std_logic;
	AnB : OUT std_logic;
	AbB : OUT std_logic
	);
END IC7485;

-- Design Ports Information
-- AlB	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AnB	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AbB	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A3	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B3	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AbBin	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AlBin	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AnBin	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A2	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A1	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B1	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B2	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A0	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B0	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF IC7485 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_AlBin : std_logic;
SIGNAL ww_AnBin : std_logic;
SIGNAL ww_AbBin : std_logic;
SIGNAL ww_AlB : std_logic;
SIGNAL ww_AnB : std_logic;
SIGNAL ww_AbB : std_logic;
SIGNAL \AnB~0_combout\ : std_logic;
SIGNAL \A2~combout\ : std_logic;
SIGNAL \B0~combout\ : std_logic;
SIGNAL \A3~combout\ : std_logic;
SIGNAL \B3~combout\ : std_logic;
SIGNAL \A0~combout\ : std_logic;
SIGNAL \AlB~2_combout\ : std_logic;
SIGNAL \A1~combout\ : std_logic;
SIGNAL \B1~combout\ : std_logic;
SIGNAL \B2~combout\ : std_logic;
SIGNAL \AlB~1_combout\ : std_logic;
SIGNAL \AbBin~combout\ : std_logic;
SIGNAL \AnBin~combout\ : std_logic;
SIGNAL \AlBin~combout\ : std_logic;
SIGNAL \AlB~0_combout\ : std_logic;
SIGNAL \AlB~3_combout\ : std_logic;
SIGNAL \AlB~4_combout\ : std_logic;
SIGNAL \AlB~5_combout\ : std_logic;
SIGNAL \AlB~6_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \AlB~7_combout\ : std_logic;
SIGNAL \AlB~9_combout\ : std_logic;
SIGNAL \AlB~10_combout\ : std_logic;
SIGNAL \AnB~1_combout\ : std_logic;
SIGNAL \AlB~8_combout\ : std_logic;
SIGNAL \AnB~2_combout\ : std_logic;
SIGNAL \AnB~3_combout\ : std_logic;
SIGNAL \AbB~0_combout\ : std_logic;
SIGNAL \AbB~1_combout\ : std_logic;

BEGIN

ww_A0 <= A0;
ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
ww_B0 <= B0;
ww_B1 <= B1;
ww_B2 <= B2;
ww_B3 <= B3;
ww_AlBin <= AlBin;
ww_AnBin <= AnBin;
ww_AbBin <= AbBin;
AlB <= ww_AlB;
AnB <= ww_AnB;
AbB <= ww_AbB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X17_Y35_N14
\AnB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AnB~0_combout\ = (\A2~combout\ & (!\A1~combout\ & (\B1~combout\ & \B2~combout\))) # (!\A2~combout\ & ((\B2~combout\) # ((!\A1~combout\ & \B1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~combout\,
	datab => \A1~combout\,
	datac => \B1~combout\,
	datad => \B2~combout\,
	combout => \AnB~0_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A2~I\ : cycloneii_io
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
	padio => ww_A2,
	combout => \A2~combout\);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B0~I\ : cycloneii_io
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
	padio => ww_B0,
	combout => \B0~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A3~I\ : cycloneii_io
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
	padio => ww_A3,
	combout => \A3~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B3~I\ : cycloneii_io
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
	padio => ww_B3,
	combout => \B3~combout\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A0~I\ : cycloneii_io
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
	padio => ww_A0,
	combout => \A0~combout\);

-- Location: LCCOMB_X18_Y35_N2
\AlB~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~2_combout\ = (\B0~combout\ & ((\A3~combout\ $ (\B3~combout\)) # (!\A0~combout\))) # (!\B0~combout\ & ((\A0~combout\) # (\A3~combout\ $ (\B3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~combout\,
	datab => \A3~combout\,
	datac => \B3~combout\,
	datad => \A0~combout\,
	combout => \AlB~2_combout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A1~I\ : cycloneii_io
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
	padio => ww_A1,
	combout => \A1~combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B1~I\ : cycloneii_io
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
	padio => ww_B1,
	combout => \B1~combout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B2~I\ : cycloneii_io
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
	padio => ww_B2,
	combout => \B2~combout\);

-- Location: LCCOMB_X17_Y35_N16
\AlB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~1_combout\ = (\A2~combout\ & ((\A1~combout\ $ (\B1~combout\)) # (!\B2~combout\))) # (!\A2~combout\ & ((\B2~combout\) # (\A1~combout\ $ (\B1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~combout\,
	datab => \A1~combout\,
	datac => \B1~combout\,
	datad => \B2~combout\,
	combout => \AlB~1_combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AbBin~I\ : cycloneii_io
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
	padio => ww_AbBin,
	combout => \AbBin~combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AnBin~I\ : cycloneii_io
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
	padio => ww_AnBin,
	combout => \AnBin~combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AlBin~I\ : cycloneii_io
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
	padio => ww_AlBin,
	combout => \AlBin~combout\);

-- Location: LCCOMB_X18_Y35_N0
\AlB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~0_combout\ = (!\AbBin~combout\ & (\AnBin~combout\ $ (\AlBin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AbBin~combout\,
	datac => \AnBin~combout\,
	datad => \AlBin~combout\,
	combout => \AlB~0_combout\);

-- Location: LCCOMB_X18_Y35_N28
\AlB~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~3_combout\ = (\AlB~2_combout\) # ((\AlB~1_combout\) # (\AlB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AlB~2_combout\,
	datac => \AlB~1_combout\,
	datad => \AlB~0_combout\,
	combout => \AlB~3_combout\);

-- Location: LCCOMB_X18_Y35_N6
\AlB~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~4_combout\ = (\AlB~3_combout\) # ((\AbBin~combout\) # ((\AlBin~combout\ & \AnBin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlBin~combout\,
	datab => \AlB~3_combout\,
	datac => \AnBin~combout\,
	datad => \AbBin~combout\,
	combout => \AlB~4_combout\);

-- Location: LCCOMB_X17_Y35_N18
\AlB~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~5_combout\ = (\A2~combout\ & (((\A1~combout\ & !\B1~combout\)) # (!\B2~combout\))) # (!\A2~combout\ & (\A1~combout\ & (!\B1~combout\ & !\B2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~combout\,
	datab => \A1~combout\,
	datac => \B1~combout\,
	datad => \B2~combout\,
	combout => \AlB~5_combout\);

-- Location: LCCOMB_X17_Y35_N28
\AlB~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~6_combout\ = (\A2~combout\ & (\B2~combout\ & (\A1~combout\ $ (!\B1~combout\)))) # (!\A2~combout\ & (!\B2~combout\ & (\A1~combout\ $ (!\B1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~combout\,
	datab => \A1~combout\,
	datac => \B1~combout\,
	datad => \B2~combout\,
	combout => \AlB~6_combout\);

-- Location: LCCOMB_X18_Y35_N8
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (!\AbBin~combout\ & (!\AnBin~combout\ & \AlBin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AbBin~combout\,
	datac => \AnBin~combout\,
	datad => \AlBin~combout\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X18_Y35_N18
\AlB~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~7_combout\ = (\AlB~6_combout\ & ((\B0~combout\ & (\always0~0_combout\ & \A0~combout\)) # (!\B0~combout\ & ((\always0~0_combout\) # (\A0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~combout\,
	datab => \AlB~6_combout\,
	datac => \always0~0_combout\,
	datad => \A0~combout\,
	combout => \AlB~7_combout\);

-- Location: LCCOMB_X18_Y35_N30
\AlB~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~9_combout\ = (\AlB~8_combout\ & ((\AlB~5_combout\) # (\AlB~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlB~8_combout\,
	datab => \AlB~5_combout\,
	datad => \AlB~7_combout\,
	combout => \AlB~9_combout\);

-- Location: LCCOMB_X18_Y35_N16
\AlB~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~10_combout\ = ((\AlB~9_combout\) # ((\A3~combout\ & !\B3~combout\))) # (!\AlB~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlB~4_combout\,
	datab => \A3~combout\,
	datac => \B3~combout\,
	datad => \AlB~9_combout\,
	combout => \AlB~10_combout\);

-- Location: LCCOMB_X18_Y35_N26
\AnB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \AnB~1_combout\ = (\AlB~6_combout\ & ((\B0~combout\ & ((!\A0~combout\) # (!\always0~0_combout\))) # (!\B0~combout\ & (!\always0~0_combout\ & !\A0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~combout\,
	datab => \AlB~6_combout\,
	datac => \always0~0_combout\,
	datad => \A0~combout\,
	combout => \AnB~1_combout\);

-- Location: LCCOMB_X18_Y35_N12
\AlB~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \AlB~8_combout\ = (\AlB~3_combout\ & (\A3~combout\ $ (!\B3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~combout\,
	datac => \B3~combout\,
	datad => \AlB~3_combout\,
	combout => \AlB~8_combout\);

-- Location: LCCOMB_X18_Y35_N20
\AnB~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \AnB~2_combout\ = (\AlB~8_combout\ & ((\AnB~0_combout\) # (\AnB~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AnB~0_combout\,
	datab => \AnB~1_combout\,
	datad => \AlB~8_combout\,
	combout => \AnB~2_combout\);

-- Location: LCCOMB_X18_Y35_N22
\AnB~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \AnB~3_combout\ = (\AnB~2_combout\) # (((!\A3~combout\ & \B3~combout\)) # (!\AlB~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AnB~2_combout\,
	datab => \A3~combout\,
	datac => \B3~combout\,
	datad => \AlB~4_combout\,
	combout => \AnB~3_combout\);

-- Location: LCCOMB_X18_Y35_N24
\AbB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AbB~0_combout\ = (\B0~combout\ & (\A0~combout\ & (\A3~combout\ $ (!\B3~combout\)))) # (!\B0~combout\ & (!\A0~combout\ & (\A3~combout\ $ (!\B3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~combout\,
	datab => \A3~combout\,
	datac => \B3~combout\,
	datad => \A0~combout\,
	combout => \AbB~0_combout\);

-- Location: LCCOMB_X18_Y35_N10
\AbB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \AbB~1_combout\ = (\AlB~6_combout\ & (\AbB~0_combout\ & \AbBin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AlB~6_combout\,
	datac => \AbB~0_combout\,
	datad => \AbBin~combout\,
	combout => \AbB~1_combout\);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AlB~I\ : cycloneii_io
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
	datain => \AlB~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AlB);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AnB~I\ : cycloneii_io
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
	datain => \AnB~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AnB);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AbB~I\ : cycloneii_io
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
	datain => \AbB~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AbB);
END structure;


