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

-- DATE "09/29/2021 10:23:34"

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

ENTITY 	ffbt1 IS
    PORT (
	ck : IN std_logic;
	rs : IN std_logic;
	q : OUT std_logic_vector(4 DOWNTO 0)
	);
END ffbt1;

-- Design Ports Information
-- q[0]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[4]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rs	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ffbt1 IS
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
SIGNAL ww_q : std_logic_vector(4 DOWNTO 0);
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \q[0]~5_combout\ : std_logic;
SIGNAL \q[0]~6\ : std_logic;
SIGNAL \q[1]~10\ : std_logic;
SIGNAL \q[2]~12\ : std_logic;
SIGNAL \q[3]~13_combout\ : std_logic;
SIGNAL \q[3]~reg0_regout\ : std_logic;
SIGNAL \q[3]~14\ : std_logic;
SIGNAL \q[4]~15_combout\ : std_logic;
SIGNAL \q[4]~reg0_regout\ : std_logic;
SIGNAL \rs~combout\ : std_logic;
SIGNAL \q[2]~11_combout\ : std_logic;
SIGNAL \q[2]~reg0_regout\ : std_logic;
SIGNAL \q[1]~9_combout\ : std_logic;
SIGNAL \q[1]~reg0_regout\ : std_logic;
SIGNAL \q[0]~7_combout\ : std_logic;
SIGNAL \q[0]~8_combout\ : std_logic;
SIGNAL \q[0]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_ck~clkctrl_outclk\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rs <= rs;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);
\ALT_INV_ck~clkctrl_outclk\ <= NOT \ck~clkctrl_outclk\;

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

-- Location: LCCOMB_X1_Y33_N10
\q[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[0]~5_combout\ = \q[0]~reg0_regout\ $ (VCC)
-- \q[0]~6\ = CARRY(\q[0]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~reg0_regout\,
	datad => VCC,
	combout => \q[0]~5_combout\,
	cout => \q[0]~6\);

-- Location: LCCOMB_X1_Y33_N12
\q[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[1]~9_combout\ = (\q[1]~reg0_regout\ & (!\q[0]~6\)) # (!\q[1]~reg0_regout\ & ((\q[0]~6\) # (GND)))
-- \q[1]~10\ = CARRY((!\q[0]~6\) # (!\q[1]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~reg0_regout\,
	datad => VCC,
	cin => \q[0]~6\,
	combout => \q[1]~9_combout\,
	cout => \q[1]~10\);

-- Location: LCCOMB_X1_Y33_N14
\q[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[2]~11_combout\ = (\q[2]~reg0_regout\ & (\q[1]~10\ $ (GND))) # (!\q[2]~reg0_regout\ & (!\q[1]~10\ & VCC))
-- \q[2]~12\ = CARRY((\q[2]~reg0_regout\ & !\q[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~reg0_regout\,
	datad => VCC,
	cin => \q[1]~10\,
	combout => \q[2]~11_combout\,
	cout => \q[2]~12\);

-- Location: LCCOMB_X1_Y33_N16
\q[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[3]~13_combout\ = (\q[3]~reg0_regout\ & (!\q[2]~12\)) # (!\q[3]~reg0_regout\ & ((\q[2]~12\) # (GND)))
-- \q[3]~14\ = CARRY((!\q[2]~12\) # (!\q[3]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[3]~reg0_regout\,
	datad => VCC,
	cin => \q[2]~12\,
	combout => \q[3]~13_combout\,
	cout => \q[3]~14\);

-- Location: LCFF_X1_Y33_N17
\q[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ck~clkctrl_outclk\,
	datain => \q[3]~13_combout\,
	sclr => \q[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[3]~reg0_regout\);

-- Location: LCCOMB_X1_Y33_N18
\q[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[4]~15_combout\ = \q[3]~14\ $ (!\q[4]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[4]~reg0_regout\,
	cin => \q[3]~14\,
	combout => \q[4]~15_combout\);

-- Location: LCFF_X1_Y33_N19
\q[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ck~clkctrl_outclk\,
	datain => \q[4]~15_combout\,
	sclr => \q[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[4]~reg0_regout\);

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

-- Location: LCFF_X1_Y33_N15
\q[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ck~clkctrl_outclk\,
	datain => \q[2]~11_combout\,
	sclr => \q[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[2]~reg0_regout\);

-- Location: LCFF_X1_Y33_N13
\q[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ck~clkctrl_outclk\,
	datain => \q[1]~9_combout\,
	sclr => \q[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y33_N0
\q[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[0]~7_combout\ = (\q[0]~reg0_regout\) # (((\q[3]~reg0_regout\) # (\q[1]~reg0_regout\)) # (!\q[2]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~reg0_regout\,
	datab => \q[2]~reg0_regout\,
	datac => \q[3]~reg0_regout\,
	datad => \q[1]~reg0_regout\,
	combout => \q[0]~7_combout\);

-- Location: LCCOMB_X1_Y33_N2
\q[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[0]~8_combout\ = (\rs~combout\) # ((\q[4]~reg0_regout\ & !\q[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[4]~reg0_regout\,
	datac => \rs~combout\,
	datad => \q[0]~7_combout\,
	combout => \q[0]~8_combout\);

-- Location: LCFF_X1_Y33_N11
\q[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ck~clkctrl_outclk\,
	datain => \q[0]~5_combout\,
	sclr => \q[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[0]~reg0_regout\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[0]~I\ : cycloneii_io
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
	datain => \q[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(0));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[1]~I\ : cycloneii_io
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
	datain => \q[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(1));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[2]~I\ : cycloneii_io
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
	datain => \q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(2));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[3]~I\ : cycloneii_io
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
	datain => \q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(3));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[4]~I\ : cycloneii_io
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
	datain => \q[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(4));
END structure;


