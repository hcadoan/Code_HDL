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

-- DATE "04/26/2021 21:22:18"

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

ENTITY 	fsm1011 IS
    PORT (
	ck : IN std_logic;
	rs : IN std_logic;
	x : IN std_logic;
	y : OUT std_logic
	);
END fsm1011;

-- Design Ports Information
-- y	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- x	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rs	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fsm1011 IS
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
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x~combout\ : std_logic;
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \rs~combout\ : std_logic;
SIGNAL \current_state~12_combout\ : std_logic;
SIGNAL \current_state.start~regout\ : std_logic;
SIGNAL \current_state~11_combout\ : std_logic;
SIGNAL \current_state.s10~regout\ : std_logic;
SIGNAL \current_state~10_combout\ : std_logic;
SIGNAL \current_state.s101~regout\ : std_logic;
SIGNAL \current_state~9_combout\ : std_logic;
SIGNAL \current_state.s1011~regout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rs <= rs;
ww_x <= x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x~I\ : cycloneii_io
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
	padio => ww_x,
	combout => \x~combout\);

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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y35_N18
\current_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state~12_combout\ = (!\rs~combout\ & ((\x~combout\) # ((\current_state.start~regout\ & !\current_state.s10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\,
	datab => \rs~combout\,
	datac => \current_state.start~regout\,
	datad => \current_state.s10~regout\,
	combout => \current_state~12_combout\);

-- Location: LCFF_X30_Y35_N19
\current_state.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \current_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.start~regout\);

-- Location: LCCOMB_X30_Y35_N28
\current_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state~11_combout\ = (!\x~combout\ & (!\rs~combout\ & (!\current_state.s10~regout\ & \current_state.start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\,
	datab => \rs~combout\,
	datac => \current_state.s10~regout\,
	datad => \current_state.start~regout\,
	combout => \current_state~11_combout\);

-- Location: LCFF_X30_Y35_N29
\current_state.s10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \current_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s10~regout\);

-- Location: LCCOMB_X30_Y35_N22
\current_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state~10_combout\ = (\x~combout\ & (!\rs~combout\ & \current_state.s10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\,
	datab => \rs~combout\,
	datad => \current_state.s10~regout\,
	combout => \current_state~10_combout\);

-- Location: LCFF_X30_Y35_N23
\current_state.s101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \current_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s101~regout\);

-- Location: LCCOMB_X30_Y35_N12
\current_state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state~9_combout\ = (\x~combout\ & (!\rs~combout\ & \current_state.s101~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\,
	datab => \rs~combout\,
	datad => \current_state.s101~regout\,
	combout => \current_state~9_combout\);

-- Location: LCFF_X30_Y35_N13
\current_state.s1011\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \current_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s1011~regout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y~I\ : cycloneii_io
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
	datain => \current_state.s1011~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y);
END structure;


