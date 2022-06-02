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

-- DATE "06/02/2021 21:36:22"

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

ENTITY 	bcd3digit IS
    PORT (
	ck : IN std_logic;
	rs : IN std_logic;
	bcd2 : OUT std_logic_vector(3 DOWNTO 0);
	bcd1 : OUT std_logic_vector(3 DOWNTO 0);
	bcd0 : OUT std_logic_vector(3 DOWNTO 0)
	);
END bcd3digit;

-- Design Ports Information
-- bcd2[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd2[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd2[2]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd2[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd1[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd1[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd1[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd1[3]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd0[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd0[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd0[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd0[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rs	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bcd3digit IS
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
SIGNAL ww_bcd2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bcd1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bcd0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \rs~combout\ : std_logic;
SIGNAL \bcd2~0_combout\ : std_logic;
SIGNAL \bcd1~0_combout\ : std_logic;
SIGNAL \bcd0~0_combout\ : std_logic;
SIGNAL \bcd0[0]~reg0_regout\ : std_logic;
SIGNAL \bcd0~1_combout\ : std_logic;
SIGNAL \bcd0[1]~reg0_regout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \bcd0~2_combout\ : std_logic;
SIGNAL \bcd0[2]~reg0_regout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \bcd0~3_combout\ : std_logic;
SIGNAL \bcd0[3]~reg0_regout\ : std_logic;
SIGNAL \bcd2[0]~2_combout\ : std_logic;
SIGNAL \bcd1[0]~1_combout\ : std_logic;
SIGNAL \bcd1[0]~reg0_regout\ : std_logic;
SIGNAL \bcd1~2_combout\ : std_logic;
SIGNAL \bcd1[1]~reg0_regout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \bcd1~4_combout\ : std_logic;
SIGNAL \bcd1[3]~reg0_regout\ : std_logic;
SIGNAL \bcd2[0]~1_combout\ : std_logic;
SIGNAL \bcd2[0]~3_combout\ : std_logic;
SIGNAL \bcd2[0]~reg0_regout\ : std_logic;
SIGNAL \bcd2~6_combout\ : std_logic;
SIGNAL \bcd2[2]~reg0_regout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \bcd2~7_combout\ : std_logic;
SIGNAL \bcd2[3]~reg0_regout\ : std_logic;
SIGNAL \bcd2[0]~4_combout\ : std_logic;
SIGNAL \bcd2~5_combout\ : std_logic;
SIGNAL \bcd2[1]~reg0_regout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \bcd1~3_combout\ : std_logic;
SIGNAL \bcd1[2]~reg0_regout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rs <= rs;
bcd2 <= ww_bcd2;
bcd1 <= ww_bcd1;
bcd0 <= ww_bcd0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);

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

-- Location: LCCOMB_X28_Y35_N8
\bcd2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd2~0_combout\ = (!\bcd2[0]~reg0_regout\ & !\rs~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd2[0]~reg0_regout\,
	datad => \rs~combout\,
	combout => \bcd2~0_combout\);

-- Location: LCCOMB_X28_Y35_N0
\bcd1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1~0_combout\ = (!\bcd1[0]~reg0_regout\ & !\rs~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd1[0]~reg0_regout\,
	datad => \rs~combout\,
	combout => \bcd1~0_combout\);

-- Location: LCCOMB_X29_Y35_N16
\bcd0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd0~0_combout\ = (!\bcd0[0]~reg0_regout\ & !\rs~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd0[0]~reg0_regout\,
	datad => \rs~combout\,
	combout => \bcd0~0_combout\);

-- Location: LCFF_X29_Y35_N17
\bcd0[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd0[0]~reg0_regout\);

-- Location: LCCOMB_X29_Y35_N22
\bcd0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd0~1_combout\ = (!\bcd2[0]~2_combout\ & (!\rs~combout\ & (\bcd0[0]~reg0_regout\ $ (\bcd0[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd2[0]~2_combout\,
	datab => \bcd0[0]~reg0_regout\,
	datac => \bcd0[1]~reg0_regout\,
	datad => \rs~combout\,
	combout => \bcd0~1_combout\);

-- Location: LCFF_X29_Y35_N23
\bcd0[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd0[1]~reg0_regout\);

-- Location: LCCOMB_X29_Y35_N26
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \bcd0[2]~reg0_regout\ $ (((\bcd0[1]~reg0_regout\ & \bcd0[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd0[1]~reg0_regout\,
	datab => \bcd0[0]~reg0_regout\,
	datad => \bcd0[2]~reg0_regout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X29_Y35_N28
\bcd0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd0~2_combout\ = (!\rs~combout\ & (\Add0~0_combout\ & !\bcd2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs~combout\,
	datac => \Add0~0_combout\,
	datad => \bcd2[0]~2_combout\,
	combout => \bcd0~2_combout\);

-- Location: LCFF_X29_Y35_N29
\bcd0[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd0[2]~reg0_regout\);

-- Location: LCCOMB_X29_Y35_N20
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \bcd0[3]~reg0_regout\ $ (((\bcd0[1]~reg0_regout\ & (\bcd0[2]~reg0_regout\ & \bcd0[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd0[1]~reg0_regout\,
	datab => \bcd0[2]~reg0_regout\,
	datac => \bcd0[0]~reg0_regout\,
	datad => \bcd0[3]~reg0_regout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X29_Y35_N14
\bcd0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd0~3_combout\ = (!\rs~combout\ & (\Add0~1_combout\ & !\bcd2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs~combout\,
	datac => \Add0~1_combout\,
	datad => \bcd2[0]~2_combout\,
	combout => \bcd0~3_combout\);

-- Location: LCFF_X29_Y35_N15
\bcd0[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd0[3]~reg0_regout\);

-- Location: LCCOMB_X29_Y35_N24
\bcd2[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd2[0]~2_combout\ = (\bcd0[0]~reg0_regout\ & (!\bcd0[1]~reg0_regout\ & (\bcd0[3]~reg0_regout\ & !\bcd0[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd0[0]~reg0_regout\,
	datab => \bcd0[1]~reg0_regout\,
	datac => \bcd0[3]~reg0_regout\,
	datad => \bcd0[2]~reg0_regout\,
	combout => \bcd2[0]~2_combout\);

-- Location: LCCOMB_X28_Y35_N12
\bcd1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1[0]~1_combout\ = (\rs~combout\) # (\bcd2[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs~combout\,
	datad => \bcd2[0]~2_combout\,
	combout => \bcd1[0]~1_combout\);

-- Location: LCFF_X28_Y35_N1
\bcd1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd1~0_combout\,
	ena => \bcd1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd1[0]~reg0_regout\);

-- Location: LCCOMB_X28_Y35_N14
\bcd1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1~2_combout\ = (!\bcd2[0]~1_combout\ & (!\rs~combout\ & (\bcd1[0]~reg0_regout\ $ (\bcd1[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd2[0]~1_combout\,
	datab => \bcd1[0]~reg0_regout\,
	datac => \bcd1[1]~reg0_regout\,
	datad => \rs~combout\,
	combout => \bcd1~2_combout\);

-- Location: LCFF_X28_Y35_N15
\bcd1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd1~2_combout\,
	ena => \bcd1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd1[1]~reg0_regout\);

-- Location: LCCOMB_X28_Y35_N4
\Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \bcd1[3]~reg0_regout\ $ (((\bcd1[2]~reg0_regout\ & (\bcd1[1]~reg0_regout\ & \bcd1[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd1[2]~reg0_regout\,
	datab => \bcd1[3]~reg0_regout\,
	datac => \bcd1[1]~reg0_regout\,
	datad => \bcd1[0]~reg0_regout\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X28_Y35_N30
\bcd1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1~4_combout\ = (!\rs~combout\ & (\Add1~1_combout\ & !\bcd2[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datab => \Add1~1_combout\,
	datac => \bcd2[0]~1_combout\,
	combout => \bcd1~4_combout\);

-- Location: LCFF_X28_Y35_N31
\bcd1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd1~4_combout\,
	ena => \bcd1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd1[3]~reg0_regout\);

-- Location: LCCOMB_X28_Y35_N24
\bcd2[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd2[0]~1_combout\ = (!\bcd1[2]~reg0_regout\ & (\bcd1[3]~reg0_regout\ & (!\bcd1[1]~reg0_regout\ & \bcd1[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd1[2]~reg0_regout\,
	datab => \bcd1[3]~reg0_regout\,
	datac => \bcd1[1]~reg0_regout\,
	datad => \bcd1[0]~reg0_regout\,
	combout => \bcd2[0]~1_combout\);

-- Location: LCCOMB_X28_Y35_N22
\bcd2[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd2[0]~3_combout\ = (\rs~combout\) # ((\bcd2[0]~1_combout\ & \bcd2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs~combout\,
	datac => \bcd2[0]~1_combout\,
	datad => \bcd2[0]~2_combout\,
	combout => \bcd2[0]~3_combout\);

-- Location: LCFF_X28_Y35_N9
\bcd2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd2~0_combout\,
	ena => \bcd2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd2[0]~reg0_regout\);

-- Location: LCCOMB_X28_Y35_N20
\bcd2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd2~6_combout\ = (!\rs~combout\ & (\bcd2[2]~reg0_regout\ $ (((\bcd2[1]~reg0_regout\ & \bcd2[0]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd2[1]~reg0_regout\,
	datab => \bcd2[0]~reg0_regout\,
	datac => \bcd2[2]~reg0_regout\,
	datad => \rs~combout\,
	combout => \bcd2~6_combout\);

-- Location: LCFF_X28_Y35_N21
\bcd2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd2~6_combout\,
	ena => \bcd2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd2[2]~reg0_regout\);

-- Location: LCCOMB_X28_Y35_N26
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \bcd2[3]~reg0_regout\ $ (((\bcd2[1]~reg0_regout\ & (\bcd2[0]~reg0_regout\ & \bcd2[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd2[1]~reg0_regout\,
	datab => \bcd2[0]~reg0_regout\,
	datac => \bcd2[2]~reg0_regout\,
	datad => \bcd2[3]~reg0_regout\,
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X28_Y35_N18
\bcd2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd2~7_combout\ = (!\rs~combout\ & (\Add2~0_combout\ & \bcd2[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datab => \Add2~0_combout\,
	datad => \bcd2[0]~4_combout\,
	combout => \bcd2~7_combout\);

-- Location: LCFF_X28_Y35_N19
\bcd2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd2~7_combout\,
	ena => \bcd2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd2[3]~reg0_regout\);

-- Location: LCCOMB_X28_Y35_N28
\bcd2[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd2[0]~4_combout\ = (\bcd2[1]~reg0_regout\) # (((\bcd2[2]~reg0_regout\) # (\bcd2[3]~reg0_regout\)) # (!\bcd2[0]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd2[1]~reg0_regout\,
	datab => \bcd2[0]~reg0_regout\,
	datac => \bcd2[2]~reg0_regout\,
	datad => \bcd2[3]~reg0_regout\,
	combout => \bcd2[0]~4_combout\);

-- Location: LCCOMB_X28_Y35_N6
\bcd2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd2~5_combout\ = (!\rs~combout\ & (\bcd2[0]~4_combout\ & (\bcd2[0]~reg0_regout\ $ (\bcd2[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datab => \bcd2[0]~reg0_regout\,
	datac => \bcd2[1]~reg0_regout\,
	datad => \bcd2[0]~4_combout\,
	combout => \bcd2~5_combout\);

-- Location: LCFF_X28_Y35_N7
\bcd2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd2~5_combout\,
	ena => \bcd2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd2[1]~reg0_regout\);

-- Location: LCCOMB_X28_Y35_N10
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \bcd1[2]~reg0_regout\ $ (((\bcd1[1]~reg0_regout\ & \bcd1[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd1[1]~reg0_regout\,
	datac => \bcd1[2]~reg0_regout\,
	datad => \bcd1[0]~reg0_regout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X28_Y35_N16
\bcd1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcd1~3_combout\ = (!\rs~combout\ & (!\bcd2[0]~1_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs~combout\,
	datac => \bcd2[0]~1_combout\,
	datad => \Add1~0_combout\,
	combout => \bcd1~3_combout\);

-- Location: LCFF_X28_Y35_N17
\bcd1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bcd1~3_combout\,
	ena => \bcd1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcd1[2]~reg0_regout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd2[0]~I\ : cycloneii_io
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
	datain => \bcd2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd2(0));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd2[1]~I\ : cycloneii_io
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
	datain => \bcd2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd2(1));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd2[2]~I\ : cycloneii_io
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
	datain => \bcd2[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd2(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd2[3]~I\ : cycloneii_io
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
	datain => \bcd2[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd2(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


