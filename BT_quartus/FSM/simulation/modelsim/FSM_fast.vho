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

-- DATE "11/03/2021 09:34:25"

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

ENTITY 	FSM IS
    PORT (
	ck : IN std_logic;
	rs : IN std_logic;
	y : OUT std_logic;
	c : OUT std_logic_vector(2 DOWNTO 0)
	);
END FSM;

-- Design Ports Information
-- y	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c[1]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rs	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF FSM IS
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
SIGNAL ww_y : std_logic;
SIGNAL ww_c : std_logic_vector(2 DOWNTO 0);
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \rs~combout\ : std_logic;
SIGNAL \rs~clkctrl_outclk\ : std_logic;
SIGNAL \c[0]~reg0_regout\ : std_logic;
SIGNAL \n~1_combout\ : std_logic;
SIGNAL \c[2]~reg0_regout\ : std_logic;
SIGNAL \n~0_combout\ : std_logic;
SIGNAL \c[1]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \y$latch~combout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rs <= rs;
y <= ww_y;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);

\rs~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rs~combout\);

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

-- Location: LCCOMB_X1_Y18_N2
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\c[0]~reg0_regout\ & ((!\c[2]~reg0_regout\) # (!\c[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[1]~reg0_regout\,
	datac => \c[0]~reg0_regout\,
	datad => \c[2]~reg0_regout\,
	combout => \WideOr0~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\rs~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rs~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rs~clkctrl_outclk\);

-- Location: LCFF_X1_Y18_N3
\c[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \WideOr0~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y18_N28
\n~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \n~1_combout\ = (\c[1]~reg0_regout\ & (!\c[2]~reg0_regout\ & \c[0]~reg0_regout\)) # (!\c[1]~reg0_regout\ & (\c[2]~reg0_regout\ & !\c[0]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[1]~reg0_regout\,
	datac => \c[2]~reg0_regout\,
	datad => \c[0]~reg0_regout\,
	combout => \n~1_combout\);

-- Location: LCFF_X1_Y18_N29
\c[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~combout\,
	datain => \n~1_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y18_N20
\n~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \n~0_combout\ = (!\c[2]~reg0_regout\ & (\c[0]~reg0_regout\ $ (\c[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[0]~reg0_regout\,
	datab => \c[2]~reg0_regout\,
	datac => \c[1]~reg0_regout\,
	combout => \n~0_combout\);

-- Location: LCFF_X1_Y18_N21
\c[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \n~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y18_N24
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\c[1]~reg0_regout\ & \c[2]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c[1]~reg0_regout\,
	datad => \c[2]~reg0_regout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y18_N26
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\c[0]~reg0_regout\ & (!\c[2]~reg0_regout\)) # (!\c[0]~reg0_regout\ & ((!\c[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[2]~reg0_regout\,
	datac => \c[1]~reg0_regout\,
	datad => \c[0]~reg0_regout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y18_N30
\y$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \y$latch~combout\ = (\Mux0~0_combout\ & (\y$latch~combout\)) # (!\Mux0~0_combout\ & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y$latch~combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \y$latch~combout\);

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \y$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y);

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c[0]~I\ : cycloneii_io
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
	datain => \c[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c(0));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c[1]~I\ : cycloneii_io
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
	datain => \c[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c[2]~I\ : cycloneii_io
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
	datain => \c[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c(2));
END structure;


