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

-- DATE "06/12/2021 22:01:35"

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

ENTITY 	bcd_mod60 IS
    PORT (
	ck : IN std_logic;
	rs : IN std_logic;
	bcd1 : OUT std_logic_vector(3 DOWNTO 0);
	bcd0 : OUT std_logic_vector(3 DOWNTO 0)
	);
END bcd_mod60;

-- Design Ports Information
-- bcd1[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd1[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd1[2]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd1[3]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd0[0]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd0[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd0[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd0[3]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rs	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bcd_mod60 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_bcd1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bcd0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rs~combout\ : std_logic;
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \bcd1~4_combout\ : std_logic;
SIGNAL \bcd0~0_combout\ : std_logic;
SIGNAL \bcd0[0]~reg0_regout\ : std_logic;
SIGNAL \bcd0~1_combout\ : std_logic;
SIGNAL \bcd0[1]~reg0_regout\ : std_logic;
SIGNAL \bcd0~2_combout\ : std_logic;
SIGNAL \bcd0[2]~reg0_regout\ : std_logic;
SIGNAL \bcd1[0]~2_combout\ : std_logic;
SIGNAL \bcd0~3_combout\ : std_logic;
SIGNAL \bcd0[3]~reg0_regout\ : std_logic;
SIGNAL \bcd1[0]~3_combout\ : std_logic;
SIGNAL \bcd1[1]~reg0_regout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \bcd1~6_combout\ : std_logic;
SIGNAL \bcd1[3]~reg0_regout\ : std_logic;
SIGNAL \bcd1[0]~0_combout\ : std_logic;
SIGNAL \bcd1~1_combout\ : std_logic;
SIGNAL \bcd1[0]~reg0_regout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \bcd1~5_combout\ : std_logic;
SIGNAL \bcd1[2]~reg0_regout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rs <= rs;
bcd1 <= ww_bcd1;
bcd0 <= ww_bcd0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rs~I\ : cycloneii_io
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
	padio => ww_rs,
	combout => \rs~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ck~I\ : cycloneii_io
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
	padio => ww_ck,
	combout => \ck~combout\);

-- Location: CLKCTRL_G3
\ck~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y35_N22
\bcd1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1~4_combout\ = (\rs~combout\) # (\bcd1[1]~reg0_regout\ $ (!\bcd1[0]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datac => \bcd1[1]~reg0_regout\,
	datad => \bcd1[0]~reg0_regout\,
	combout => \bcd1~4_combout\);

-- Location: LCCOMB_X16_Y35_N28
\bcd0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd0~0_combout\ = (!\rs~combout\ & !\bcd0[0]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datac => \bcd0[0]~reg0_regout\,
	combout => \bcd0~0_combout\);

-- Location: LCFF_X16_Y35_N29
\bcd0[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd0[0]~reg0_regout\);

-- Location: LCCOMB_X16_Y35_N14
\bcd0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd0~1_combout\ = (!\rs~combout\ & (\bcd0[1]~reg0_regout\ $ (!\bcd0[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datac => \bcd0[1]~reg0_regout\,
	datad => \bcd0[0]~reg0_regout\,
	combout => \bcd0~1_combout\);

-- Location: LCFF_X16_Y35_N15
\bcd0[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd0[1]~reg0_regout\);

-- Location: LCCOMB_X16_Y35_N12
\bcd0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd0~2_combout\ = (!\rs~combout\ & (\bcd0[2]~reg0_regout\ $ (((!\bcd0[0]~reg0_regout\ & !\bcd0[1]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datab => \bcd0[0]~reg0_regout\,
	datac => \bcd0[2]~reg0_regout\,
	datad => \bcd0[1]~reg0_regout\,
	combout => \bcd0~2_combout\);

-- Location: LCFF_X16_Y35_N13
\bcd0[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd0[2]~reg0_regout\);

-- Location: LCCOMB_X16_Y35_N26
\bcd1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1[0]~2_combout\ = (!\bcd0[0]~reg0_regout\ & (!\bcd0[1]~reg0_regout\ & !\bcd0[2]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd0[0]~reg0_regout\,
	datac => \bcd0[1]~reg0_regout\,
	datad => \bcd0[2]~reg0_regout\,
	combout => \bcd1[0]~2_combout\);

-- Location: LCCOMB_X16_Y35_N2
\bcd0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd0~3_combout\ = (!\rs~combout\ & (\bcd0[3]~reg0_regout\ $ (\bcd1[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datac => \bcd0[3]~reg0_regout\,
	datad => \bcd1[0]~2_combout\,
	combout => \bcd0~3_combout\);

-- Location: LCFF_X16_Y35_N3
\bcd0[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd0[3]~reg0_regout\);

-- Location: LCCOMB_X16_Y35_N4
\bcd1[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1[0]~3_combout\ = (\rs~combout\) # ((!\bcd0[3]~reg0_regout\ & \bcd1[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datab => \bcd0[3]~reg0_regout\,
	datad => \bcd1[0]~2_combout\,
	combout => \bcd1[0]~3_combout\);

-- Location: LCFF_X16_Y35_N23
\bcd1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd1~4_combout\,
	ena => \bcd1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd1[1]~reg0_regout\);

-- Location: LCCOMB_X16_Y35_N20
\Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \bcd1[3]~reg0_regout\ $ (((\bcd1[2]~reg0_regout\) # ((\bcd1[1]~reg0_regout\) # (\bcd1[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd1[2]~reg0_regout\,
	datab => \bcd1[1]~reg0_regout\,
	datac => \bcd1[0]~reg0_regout\,
	datad => \bcd1[3]~reg0_regout\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X16_Y35_N10
\bcd1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1~6_combout\ = (!\rs~combout\ & (!\Add1~1_combout\ & \bcd1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datac => \Add1~1_combout\,
	datad => \bcd1[0]~0_combout\,
	combout => \bcd1~6_combout\);

-- Location: LCFF_X16_Y35_N11
\bcd1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd1~6_combout\,
	ena => \bcd1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd1[3]~reg0_regout\);

-- Location: LCCOMB_X16_Y35_N8
\bcd1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1[0]~0_combout\ = (\bcd1[2]~reg0_regout\) # ((\bcd1[1]~reg0_regout\) # ((\bcd1[0]~reg0_regout\) # (\bcd1[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd1[2]~reg0_regout\,
	datab => \bcd1[1]~reg0_regout\,
	datac => \bcd1[0]~reg0_regout\,
	datad => \bcd1[3]~reg0_regout\,
	combout => \bcd1[0]~0_combout\);

-- Location: LCCOMB_X16_Y35_N16
\bcd1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1~1_combout\ = (!\rs~combout\ & (!\bcd1[0]~reg0_regout\ & \bcd1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datac => \bcd1[0]~reg0_regout\,
	datad => \bcd1[0]~0_combout\,
	combout => \bcd1~1_combout\);

-- Location: LCFF_X16_Y35_N17
\bcd1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd1~1_combout\,
	ena => \bcd1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd1[0]~reg0_regout\);

-- Location: LCCOMB_X16_Y35_N30
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \bcd1[2]~reg0_regout\ $ (((\bcd1[0]~reg0_regout\) # (\bcd1[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd1[2]~reg0_regout\,
	datac => \bcd1[0]~reg0_regout\,
	datad => \bcd1[1]~reg0_regout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X16_Y35_N24
\bcd1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1~5_combout\ = (\rs~combout\) # ((!\bcd1[0]~0_combout\) # (!\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datac => \Add1~0_combout\,
	datad => \bcd1[0]~0_combout\,
	combout => \bcd1~5_combout\);

-- Location: LCFF_X16_Y35_N25
\bcd1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd1~5_combout\,
	ena => \bcd1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd1[2]~reg0_regout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd1[0]~I\ : cycloneii_io
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
	datain => \bcd1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd1(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd1[1]~I\ : cycloneii_io
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
	datain => \bcd1[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd1(1));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd1[2]~I\ : cycloneii_io
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
	datain => \bcd1[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd1(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd1[3]~I\ : cycloneii_io
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
	datain => \bcd1[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd1(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd0[0]~I\ : cycloneii_io
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
	datain => \bcd0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd0(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd0[1]~I\ : cycloneii_io
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
	datain => \bcd0[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd0(1));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd0[2]~I\ : cycloneii_io
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
	datain => \bcd0[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd0(2));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd0[3]~I\ : cycloneii_io
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
	datain => \bcd0[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd0(3));
END structure;


