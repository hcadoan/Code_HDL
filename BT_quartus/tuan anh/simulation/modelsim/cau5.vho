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

-- DATE "06/25/2021 18:10:25"

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

ENTITY 	cau5 IS
    PORT (
	ck : IN std_logic;
	rs : IN std_logic;
	x : IN std_logic;
	y1 : OUT std_logic;
	y2 : OUT std_logic;
	currents : OUT std_logic_vector(3 DOWNTO 0)
	);
END cau5;

-- Design Ports Information
-- y1	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currents[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currents[1]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currents[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currents[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ck	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rs	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cau5 IS
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
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_currents : std_logic_vector(3 DOWNTO 0);
SIGNAL \rs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~combout\ : std_logic;
SIGNAL \x~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \rs~combout\ : std_logic;
SIGNAL \rs~clkctrl_outclk\ : std_logic;
SIGNAL \currents[1]~reg0_regout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \currents[2]~reg0_regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \currents[3]~reg0_regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \currents[0]~reg0_regout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL nexts : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_ck <= ck;
ww_rs <= rs;
ww_x <= x;
y1 <= ww_y1;
y2 <= ww_y2;
currents <= ww_currents;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rs~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rs~combout\);

\Mux2~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Mux2~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y35_N16
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\currents[3]~reg0_regout\ & ((\currents[0]~reg0_regout\ & (\currents[2]~reg0_regout\ & !\currents[1]~reg0_regout\)) # (!\currents[0]~reg0_regout\ & (!\currents[2]~reg0_regout\ & \currents[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currents[0]~reg0_regout\,
	datab => \currents[3]~reg0_regout\,
	datac => \currents[2]~reg0_regout\,
	datad => \currents[1]~reg0_regout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X30_Y35_N0
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\currents[3]~reg0_regout\ & (!\currents[0]~reg0_regout\ & (!\currents[2]~reg0_regout\ & !\currents[1]~reg0_regout\))) # (!\currents[3]~reg0_regout\ & (\currents[0]~reg0_regout\ $ ((\currents[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currents[0]~reg0_regout\,
	datab => \currents[2]~reg0_regout\,
	datac => \currents[3]~reg0_regout\,
	datad => \currents[1]~reg0_regout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X30_Y35_N18
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\x~combout\ & (\Mux1~0_combout\)) # (!\x~combout\ & ((\Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X30_Y35_N6
\nexts[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- nexts(1) = (GLOBAL(\Mux2~0clkctrl_outclk\) & (nexts(1))) # (!GLOBAL(\Mux2~0clkctrl_outclk\) & ((\Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nexts(1),
	datac => \Mux2~0clkctrl_outclk\,
	datad => \Mux1~2_combout\,
	combout => nexts(1));

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

-- Location: LCFF_X30_Y35_N7
\currents[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~combout\,
	datain => nexts(1),
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currents[1]~reg0_regout\);

-- Location: LCCOMB_X30_Y35_N14
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\x~combout\ & (\currents[0]~reg0_regout\ & (\currents[2]~reg0_regout\ $ (\currents[1]~reg0_regout\)))) # (!\x~combout\ & ((\currents[1]~reg0_regout\) # (\currents[0]~reg0_regout\ $ (!\currents[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currents[0]~reg0_regout\,
	datab => \x~combout\,
	datac => \currents[2]~reg0_regout\,
	datad => \currents[1]~reg0_regout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X30_Y35_N26
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\currents[0]~reg0_regout\ & (!\currents[2]~reg0_regout\ & (\currents[3]~reg0_regout\ & !\currents[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currents[0]~reg0_regout\,
	datab => \currents[2]~reg0_regout\,
	datac => \currents[3]~reg0_regout\,
	datad => \currents[1]~reg0_regout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y35_N28
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Equal1~0_combout\) # ((!\currents[3]~reg0_regout\ & \Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currents[3]~reg0_regout\,
	datac => \Mux3~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X30_Y35_N4
\nexts[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- nexts(2) = (GLOBAL(\Mux2~0clkctrl_outclk\) & (nexts(2))) # (!GLOBAL(\Mux2~0clkctrl_outclk\) & ((\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nexts(2),
	datac => \Mux2~0clkctrl_outclk\,
	datad => \Mux3~1_combout\,
	combout => nexts(2));

-- Location: LCFF_X30_Y35_N5
\currents[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~combout\,
	datain => nexts(2),
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currents[2]~reg0_regout\);

-- Location: LCCOMB_X30_Y35_N10
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\currents[0]~reg0_regout\ & (\currents[2]~reg0_regout\ & (!\currents[3]~reg0_regout\ & \currents[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currents[0]~reg0_regout\,
	datab => \currents[2]~reg0_regout\,
	datac => \currents[3]~reg0_regout\,
	datad => \currents[1]~reg0_regout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X30_Y35_N22
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\x~combout\ & \Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X30_Y35_N8
\nexts[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- nexts(3) = (GLOBAL(\Mux2~0clkctrl_outclk\) & (nexts(3))) # (!GLOBAL(\Mux2~0clkctrl_outclk\) & ((\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nexts(3),
	datac => \Mux2~0clkctrl_outclk\,
	datad => \Mux4~1_combout\,
	combout => nexts(3));

-- Location: LCFF_X30_Y35_N9
\currents[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~combout\,
	datain => nexts(3),
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currents[3]~reg0_regout\);

-- Location: LCCOMB_X30_Y35_N24
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\currents[3]~reg0_regout\ & ((\currents[0]~reg0_regout\) # ((\currents[2]~reg0_regout\) # (\currents[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currents[0]~reg0_regout\,
	datab => \currents[3]~reg0_regout\,
	datac => \currents[2]~reg0_regout\,
	datad => \currents[1]~reg0_regout\,
	combout => \Mux2~0_combout\);

-- Location: CLKCTRL_G11
\Mux2~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux2~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y35_N2
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\currents[0]~reg0_regout\ & (\x~combout\ $ (((\currents[2]~reg0_regout\) # (\currents[1]~reg0_regout\))))) # (!\currents[0]~reg0_regout\ & (\currents[2]~reg0_regout\ $ (((!\x~combout\ & !\currents[1]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currents[0]~reg0_regout\,
	datab => \x~combout\,
	datac => \currents[2]~reg0_regout\,
	datad => \currents[1]~reg0_regout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X30_Y35_N30
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\currents[3]~reg0_regout\ & (!\currents[0]~reg0_regout\ & (!\currents[2]~reg0_regout\ & \Mux0~0_combout\))) # (!\currents[3]~reg0_regout\ & ((\Mux0~0_combout\) # ((!\currents[0]~reg0_regout\ & !\currents[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currents[0]~reg0_regout\,
	datab => \currents[3]~reg0_regout\,
	datac => \currents[2]~reg0_regout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X30_Y35_N12
\nexts[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- nexts(0) = (GLOBAL(\Mux2~0clkctrl_outclk\) & (nexts(0))) # (!GLOBAL(\Mux2~0clkctrl_outclk\) & ((\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nexts(0),
	datac => \Mux2~0clkctrl_outclk\,
	datad => \Mux0~1_combout\,
	combout => nexts(0));

-- Location: LCFF_X30_Y35_N13
\currents[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~combout\,
	datain => nexts(0),
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currents[0]~reg0_regout\);

-- Location: LCCOMB_X30_Y35_N20
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\currents[0]~reg0_regout\ & (\currents[2]~reg0_regout\ & (!\currents[1]~reg0_regout\ & !\currents[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currents[0]~reg0_regout\,
	datab => \currents[2]~reg0_regout\,
	datac => \currents[1]~reg0_regout\,
	datad => \currents[3]~reg0_regout\,
	combout => \Equal0~0_combout\);

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
	datain => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y1);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currents[0]~I\ : cycloneii_io
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
	datain => \currents[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currents(0));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currents[1]~I\ : cycloneii_io
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
	datain => \currents[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currents(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currents[2]~I\ : cycloneii_io
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
	datain => \currents[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currents(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currents[3]~I\ : cycloneii_io
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
	datain => \currents[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currents(3));
END structure;


