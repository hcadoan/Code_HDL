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

-- DATE "11/22/2021 22:03:35"

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

ENTITY 	FSM_cau1 IS
    PORT (
	ck : IN std_logic;
	rs : IN std_logic;
	s : IN std_logic;
	y1 : OUT std_logic;
	y2 : OUT std_logic;
	c : OUT std_logic_vector(2 DOWNTO 0)
	);
END FSM_cau1;

-- Design Ports Information
-- y1	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c[1]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rs	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF FSM_cau1 IS
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
SIGNAL ww_s : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_c : std_logic_vector(2 DOWNTO 0);
SIGNAL \rs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideNor0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~combout\ : std_logic;
SIGNAL \s~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \rs~combout\ : std_logic;
SIGNAL \rs~clkctrl_outclk\ : std_logic;
SIGNAL \c[2]~reg0_regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \c[1]~reg0_regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \c[0]~reg0_regout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideNor0~0clkctrl_outclk\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \y1$latch~combout\ : std_logic;
SIGNAL \y2$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ck~combout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rs <= rs;
ww_s <= s;
y1 <= ww_y1;
y2 <= ww_y2;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rs~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rs~combout\);

\WideNor0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideNor0~0_combout\);
\ALT_INV_ck~combout\ <= NOT \ck~combout\;

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s~I\ : cycloneii_io
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
	padio => ww_s,
	combout => \s~combout\);

-- Location: LCCOMB_X30_Y35_N28
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\s~combout\ & ((\c[0]~reg0_regout\ & (!\c[2]~reg0_regout\ & \c[1]~reg0_regout\)) # (!\c[0]~reg0_regout\ & ((!\c[1]~reg0_regout\))))) # (!\s~combout\ & ((\c[2]~reg0_regout\ $ (\c[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[0]~reg0_regout\,
	datab => \s~combout\,
	datac => \c[2]~reg0_regout\,
	datad => \c[1]~reg0_regout\,
	combout => \Mux0~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCFF_X30_Y35_N29
\c[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ck~combout\,
	datain => \Mux0~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c[2]~reg0_regout\);

-- Location: LCCOMB_X30_Y35_N22
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\c[0]~reg0_regout\ & (!\c[1]~reg0_regout\ & ((\s~combout\) # (\c[2]~reg0_regout\)))) # (!\c[0]~reg0_regout\ & (\s~combout\ & (\c[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[0]~reg0_regout\,
	datab => \s~combout\,
	datac => \c[1]~reg0_regout\,
	datad => \c[2]~reg0_regout\,
	combout => \Mux1~0_combout\);

-- Location: LCFF_X30_Y35_N23
\c[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ck~combout\,
	datain => \Mux1~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c[1]~reg0_regout\);

-- Location: LCCOMB_X30_Y35_N30
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\s~combout\ & (\c[1]~reg0_regout\ & (!\c[0]~reg0_regout\ & !\c[2]~reg0_regout\))) # (!\s~combout\ & (((!\c[2]~reg0_regout\) # (!\c[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\,
	datab => \c[1]~reg0_regout\,
	datac => \c[0]~reg0_regout\,
	datad => \c[2]~reg0_regout\,
	combout => \Mux2~0_combout\);

-- Location: LCFF_X30_Y35_N31
\c[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ck~combout\,
	datain => \Mux2~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c[0]~reg0_regout\);

-- Location: LCCOMB_X30_Y35_N24
\WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (\c[1]~reg0_regout\ & (\c[0]~reg0_regout\ $ (\c[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[1]~reg0_regout\,
	datac => \c[0]~reg0_regout\,
	datad => \c[2]~reg0_regout\,
	combout => \WideNor0~0_combout\);

-- Location: CLKCTRL_G11
\WideNor0~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideNor0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideNor0~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y35_N26
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\c[1]~reg0_regout\ & (!\c[0]~reg0_regout\ & \c[2]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[1]~reg0_regout\,
	datac => \c[0]~reg0_regout\,
	datad => \c[2]~reg0_regout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y35_N20
\y1$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \y1$latch~combout\ = (GLOBAL(\WideNor0~0clkctrl_outclk\) & ((!\Equal1~0_combout\))) # (!GLOBAL(\WideNor0~0clkctrl_outclk\) & (\y1$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y1$latch~combout\,
	datac => \WideNor0~0clkctrl_outclk\,
	datad => \Equal1~0_combout\,
	combout => \y1$latch~combout\);

-- Location: LCCOMB_X30_Y35_N18
\y2$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \y2$latch~combout\ = (GLOBAL(\WideNor0~0clkctrl_outclk\) & ((\Equal1~0_combout\))) # (!GLOBAL(\WideNor0~0clkctrl_outclk\) & (\y2$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y2$latch~combout\,
	datac => \WideNor0~0clkctrl_outclk\,
	datad => \Equal1~0_combout\,
	combout => \y2$latch~combout\);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y1~I\ : cycloneii_io
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
	datain => \y1$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y1);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2~I\ : cycloneii_io
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
	datain => \y2$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


