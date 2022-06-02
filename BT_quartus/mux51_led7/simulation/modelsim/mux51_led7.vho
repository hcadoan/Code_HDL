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

-- DATE "09/22/2021 19:31:53"

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

ENTITY 	mux51_led7 IS
    PORT (
	SW : IN std_logic_vector(2 DOWNTO 0);
	SW1 : IN std_logic_vector(2 DOWNTO 0);
	SW2 : IN std_logic_vector(2 DOWNTO 0);
	SW3 : IN std_logic_vector(2 DOWNTO 0);
	SW4 : IN std_logic_vector(2 DOWNTO 0);
	SW5 : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0)
	);
END mux51_led7;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[7]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW1[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW4[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW3[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW5[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW2[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW1[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW3[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW4[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW5[0]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW2[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW1[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW3[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW4[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW5[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW2[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mux51_led7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW4 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW5 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_3|Mux3~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|Mux3~0_combout\ : std_logic;
SIGNAL \comb_3|Mux3~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|Mux1~0_combout\ : std_logic;
SIGNAL \comb_3|Mux1~1_combout\ : std_logic;
SIGNAL \comb_3|Mux1~2_combout\ : std_logic;
SIGNAL \comb_3|Mux0~0_combout\ : std_logic;
SIGNAL \comb_3|Mux0~1_combout\ : std_logic;
SIGNAL \comb_3|Mux0~2_combout\ : std_logic;
SIGNAL \comb_3|Mux2~0_combout\ : std_logic;
SIGNAL \comb_3|Mux2~1_combout\ : std_logic;
SIGNAL \comb_3|Mux2~2_combout\ : std_logic;
SIGNAL \comb_4|HEX0~0_combout\ : std_logic;
SIGNAL \comb_4|Decoder2~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr0~0_combout\ : std_logic;
SIGNAL \comb_4|Decoder0~0_combout\ : std_logic;
SIGNAL \comb_3|M\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SW5~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SW4~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SW3~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SW2~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SW1~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \comb_4|ALT_INV_WideOr1~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
ww_SW3 <= SW3;
ww_SW4 <= SW4;
ww_SW5 <= SW5;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\comb_3|Mux3~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \comb_3|Mux3~0_combout\);
\comb_4|ALT_INV_WideOr0~0_combout\ <= NOT \comb_4|WideOr0~0_combout\;
\comb_4|ALT_INV_WideOr1~0_combout\ <= NOT \comb_4|WideOr1~0_combout\;

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW3[1]~I\ : cycloneii_io
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
	padio => ww_SW3(1),
	combout => \SW3~combout\(1));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW1[0]~I\ : cycloneii_io
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
	padio => ww_SW1(0),
	combout => \SW1~combout\(0));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW5[0]~I\ : cycloneii_io
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
	padio => ww_SW5(0),
	combout => \SW5~combout\(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW2[0]~I\ : cycloneii_io
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
	padio => ww_SW2(0),
	combout => \SW2~combout\(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW5[2]~I\ : cycloneii_io
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
	padio => ww_SW5(2),
	combout => \SW5~combout\(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW2[2]~I\ : cycloneii_io
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
	padio => ww_SW2(2),
	combout => \SW2~combout\(2));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X23_Y35_N0
\comb_3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~0_combout\ = ((!\SW~combout\(1) & !\SW~combout\(0))) # (!\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \comb_3|Mux3~0_combout\);

-- Location: CLKCTRL_G9
\comb_3|Mux3~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|Mux3~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|Mux3~0clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW1[1]~I\ : cycloneii_io
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
	padio => ww_SW1(1),
	combout => \SW1~combout\(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW5[1]~I\ : cycloneii_io
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
	padio => ww_SW5(1),
	combout => \SW5~combout\(1));

-- Location: LCCOMB_X23_Y35_N2
\comb_3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~0_combout\ = (\SW~combout\(1) & ((\SW3~combout\(1)) # ((\SW~combout\(0))))) # (!\SW~combout\(1) & (((!\SW~combout\(0) & \SW5~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~combout\(1),
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW5~combout\(1),
	combout => \comb_3|Mux1~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW4[1]~I\ : cycloneii_io
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
	padio => ww_SW4(1),
	combout => \SW4~combout\(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW2[1]~I\ : cycloneii_io
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
	padio => ww_SW2(1),
	combout => \SW2~combout\(1));

-- Location: LCCOMB_X23_Y35_N18
\comb_3|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~1_combout\ = (\SW~combout\(0) & ((\comb_3|Mux1~0_combout\ & ((\SW2~combout\(1)))) # (!\comb_3|Mux1~0_combout\ & (\SW4~combout\(1))))) # (!\SW~combout\(0) & (\comb_3|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \comb_3|Mux1~0_combout\,
	datac => \SW4~combout\(1),
	datad => \SW2~combout\(1),
	combout => \comb_3|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y35_N8
\comb_3|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~2_combout\ = (\SW~combout\(2) & (\SW1~combout\(1))) # (!\SW~combout\(2) & ((\comb_3|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\(1),
	datac => \SW~combout\(2),
	datad => \comb_3|Mux1~1_combout\,
	combout => \comb_3|Mux1~2_combout\);

-- Location: LCCOMB_X23_Y35_N14
\comb_3|M[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|M\(1) = (GLOBAL(\comb_3|Mux3~0clkctrl_outclk\) & ((\comb_3|Mux1~2_combout\))) # (!GLOBAL(\comb_3|Mux3~0clkctrl_outclk\) & (\comb_3|M\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|M\(1),
	datac => \comb_3|Mux3~0clkctrl_outclk\,
	datad => \comb_3|Mux1~2_combout\,
	combout => \comb_3|M\(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW4[0]~I\ : cycloneii_io
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
	padio => ww_SW4(0),
	combout => \SW4~combout\(0));

-- Location: LCCOMB_X23_Y35_N28
\comb_3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~0_combout\ = (\SW~combout\(0) & (((\SW4~combout\(0)) # (\SW~combout\(1))))) # (!\SW~combout\(0) & (\SW5~combout\(0) & ((!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~combout\(0),
	datab => \SW4~combout\(0),
	datac => \SW~combout\(0),
	datad => \SW~combout\(1),
	combout => \comb_3|Mux0~0_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW3[0]~I\ : cycloneii_io
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
	padio => ww_SW3(0),
	combout => \SW3~combout\(0));

-- Location: LCCOMB_X23_Y35_N20
\comb_3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~1_combout\ = (\comb_3|Mux0~0_combout\ & ((\SW2~combout\(0)) # ((!\SW~combout\(1))))) # (!\comb_3|Mux0~0_combout\ & (((\SW3~combout\(0) & \SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~combout\(0),
	datab => \comb_3|Mux0~0_combout\,
	datac => \SW3~combout\(0),
	datad => \SW~combout\(1),
	combout => \comb_3|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y35_N4
\comb_3|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~2_combout\ = (\SW~combout\(2) & (\SW1~combout\(0))) # (!\SW~combout\(2) & ((\comb_3|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~combout\(0),
	datac => \SW~combout\(2),
	datad => \comb_3|Mux0~1_combout\,
	combout => \comb_3|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y35_N12
\comb_3|M[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|M\(0) = (GLOBAL(\comb_3|Mux3~0clkctrl_outclk\) & ((\comb_3|Mux0~2_combout\))) # (!GLOBAL(\comb_3|Mux3~0clkctrl_outclk\) & (\comb_3|M\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|M\(0),
	datac => \comb_3|Mux3~0clkctrl_outclk\,
	datad => \comb_3|Mux0~2_combout\,
	combout => \comb_3|M\(0));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW1[2]~I\ : cycloneii_io
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
	padio => ww_SW1(2),
	combout => \SW1~combout\(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW4[2]~I\ : cycloneii_io
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
	padio => ww_SW4(2),
	combout => \SW4~combout\(2));

-- Location: LCCOMB_X23_Y35_N30
\comb_3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~0_combout\ = (\SW~combout\(0) & (((\SW4~combout\(2)) # (\SW~combout\(1))))) # (!\SW~combout\(0) & (\SW5~combout\(2) & ((!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~combout\(2),
	datab => \SW4~combout\(2),
	datac => \SW~combout\(0),
	datad => \SW~combout\(1),
	combout => \comb_3|Mux2~0_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW3[2]~I\ : cycloneii_io
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
	padio => ww_SW3(2),
	combout => \SW3~combout\(2));

-- Location: LCCOMB_X23_Y35_N24
\comb_3|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~1_combout\ = (\comb_3|Mux2~0_combout\ & ((\SW2~combout\(2)) # ((!\SW~combout\(1))))) # (!\comb_3|Mux2~0_combout\ & (((\SW3~combout\(2) & \SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~combout\(2),
	datab => \comb_3|Mux2~0_combout\,
	datac => \SW3~combout\(2),
	datad => \SW~combout\(1),
	combout => \comb_3|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y35_N26
\comb_3|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~2_combout\ = (\SW~combout\(2) & (\SW1~combout\(2))) # (!\SW~combout\(2) & ((\comb_3|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\(2),
	datac => \SW~combout\(2),
	datad => \comb_3|Mux2~1_combout\,
	combout => \comb_3|Mux2~2_combout\);

-- Location: LCCOMB_X23_Y35_N22
\comb_3|M[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|M\(2) = (GLOBAL(\comb_3|Mux3~0clkctrl_outclk\) & (\comb_3|Mux2~2_combout\)) # (!GLOBAL(\comb_3|Mux3~0clkctrl_outclk\) & ((\comb_3|M\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Mux2~2_combout\,
	datac => \comb_3|Mux3~0clkctrl_outclk\,
	datad => \comb_3|M\(2),
	combout => \comb_3|M\(2));

-- Location: LCCOMB_X19_Y35_N12
\comb_4|HEX0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|HEX0~0_combout\ = (\comb_3|M\(1)) # (\comb_3|M\(0) $ (!\comb_3|M\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|M\(1),
	datac => \comb_3|M\(0),
	datad => \comb_3|M\(2),
	combout => \comb_4|HEX0~0_combout\);

-- Location: LCCOMB_X19_Y35_N10
\comb_4|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|Decoder2~0_combout\ = (\comb_3|M\(1)) # (\comb_3|M\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|M\(1),
	datac => \comb_3|M\(0),
	combout => \comb_4|Decoder2~0_combout\);

-- Location: LCCOMB_X19_Y35_N28
\comb_4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr1~0_combout\ = \comb_3|M\(2) $ (((\comb_3|M\(1)) # (\comb_3|M\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|M\(1),
	datac => \comb_3|M\(0),
	datad => \comb_3|M\(2),
	combout => \comb_4|WideOr1~0_combout\);

-- Location: LCCOMB_X19_Y35_N18
\comb_4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr0~0_combout\ = ((!\comb_3|M\(1) & !\comb_3|M\(0))) # (!\comb_3|M\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|M\(1),
	datac => \comb_3|M\(0),
	datad => \comb_3|M\(2),
	combout => \comb_4|WideOr0~0_combout\);

-- Location: LCCOMB_X19_Y35_N0
\comb_4|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|Decoder0~0_combout\ = (\comb_3|M\(1)) # (\comb_3|M\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|M\(1),
	datad => \comb_3|M\(2),
	combout => \comb_4|Decoder0~0_combout\);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \comb_4|HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \comb_4|Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \comb_4|Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \comb_4|ALT_INV_WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \comb_4|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \comb_4|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \comb_4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[7]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(7));
END structure;


