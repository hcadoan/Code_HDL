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

-- DATE "06/24/2021 16:56:25"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cau3 IS
    PORT (
	ck : IN std_logic;
	rs : IN std_logic;
	load : IN std_logic;
	s : IN std_logic;
	data : IN std_logic_vector(3 DOWNTO 0);
	\out\ : OUT std_logic_vector(3 DOWNTO 0)
	);
END cau3;

-- Design Ports Information
-- out[0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[2]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rs	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cau3 IS
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
SIGNAL ww_load : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s~combout\ : std_logic;
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \load~combout\ : std_logic;
SIGNAL \out~0_combout\ : std_logic;
SIGNAL \out[0]~reg0_regout\ : std_logic;
SIGNAL \rs~combout\ : std_logic;
SIGNAL \out~1_combout\ : std_logic;
SIGNAL \out~2_combout\ : std_logic;
SIGNAL \out[1]~reg0_regout\ : std_logic;
SIGNAL \out~3_combout\ : std_logic;
SIGNAL \out~4_combout\ : std_logic;
SIGNAL \out[2]~reg0_regout\ : std_logic;
SIGNAL \out~6_combout\ : std_logic;
SIGNAL \out~5_combout\ : std_logic;
SIGNAL \out~7_combout\ : std_logic;
SIGNAL \out[3]~reg0_regout\ : std_logic;
SIGNAL \data~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_ck <= ck;
ww_rs <= rs;
ww_load <= load;
ww_s <= s;
ww_data <= data;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
\data[0]~I\ : cycloneii_io
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
	padio => ww_data(0),
	combout => \data~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\load~I\ : cycloneii_io
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
	padio => ww_load,
	combout => \load~combout\);

-- Location: LCCOMB_X28_Y35_N28
\out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~0_combout\ = (!\rs~combout\ & ((\load~combout\ & (\data~combout\(0))) # (!\load~combout\ & ((!\out[0]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~combout\,
	datab => \data~combout\(0),
	datac => \out[0]~reg0_regout\,
	datad => \load~combout\,
	combout => \out~0_combout\);

-- Location: LCFF_X28_Y35_N29
\out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out[0]~reg0_regout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[1]~I\ : cycloneii_io
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
	padio => ww_data(1),
	combout => \data~combout\(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X28_Y35_N0
\out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~1_combout\ = \s~combout\ $ (\out[1]~reg0_regout\ $ (\out[0]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\,
	datab => \out[1]~reg0_regout\,
	datad => \out[0]~reg0_regout\,
	combout => \out~1_combout\);

-- Location: LCCOMB_X28_Y35_N26
\out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~2_combout\ = (!\rs~combout\ & ((\load~combout\ & (\data~combout\(1))) # (!\load~combout\ & ((!\out~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \data~combout\(1),
	datac => \rs~combout\,
	datad => \out~1_combout\,
	combout => \out~2_combout\);

-- Location: LCFF_X28_Y35_N27
\out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out[1]~reg0_regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[2]~I\ : cycloneii_io
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
	padio => ww_data(2),
	combout => \data~combout\(2));

-- Location: LCCOMB_X28_Y35_N30
\out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~3_combout\ = \out[2]~reg0_regout\ $ (((\s~combout\ & (\out[1]~reg0_regout\ & \out[0]~reg0_regout\)) # (!\s~combout\ & (!\out[1]~reg0_regout\ & !\out[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\,
	datab => \out[1]~reg0_regout\,
	datac => \out[2]~reg0_regout\,
	datad => \out[0]~reg0_regout\,
	combout => \out~3_combout\);

-- Location: LCCOMB_X28_Y35_N20
\out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~4_combout\ = (!\rs~combout\ & ((\load~combout\ & (\data~combout\(2))) # (!\load~combout\ & ((\out~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \data~combout\(2),
	datac => \rs~combout\,
	datad => \out~3_combout\,
	combout => \out~4_combout\);

-- Location: LCFF_X28_Y35_N21
\out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out[2]~reg0_regout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[3]~I\ : cycloneii_io
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
	padio => ww_data(3),
	combout => \data~combout\(3));

-- Location: LCCOMB_X28_Y35_N14
\out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~6_combout\ = (\load~combout\ & (\data~combout\(3))) # (!\load~combout\ & ((\out[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datac => \data~combout\(3),
	datad => \out[3]~reg0_regout\,
	combout => \out~6_combout\);

-- Location: LCCOMB_X28_Y35_N12
\out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~5_combout\ = (\s~combout\ & (\out[0]~reg0_regout\ & (\out[2]~reg0_regout\ & \out[1]~reg0_regout\))) # (!\s~combout\ & (!\out[0]~reg0_regout\ & (!\out[2]~reg0_regout\ & !\out[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\,
	datab => \out[0]~reg0_regout\,
	datac => \out[2]~reg0_regout\,
	datad => \out[1]~reg0_regout\,
	combout => \out~5_combout\);

-- Location: LCCOMB_X28_Y35_N22
\out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~7_combout\ = (!\rs~combout\ & (\out~6_combout\ $ (((!\load~combout\ & \out~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~combout\,
	datab => \rs~combout\,
	datac => \out~6_combout\,
	datad => \out~5_combout\,
	combout => \out~7_combout\);

-- Location: LCFF_X28_Y35_N23
\out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out[3]~reg0_regout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[0]~I\ : cycloneii_io
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
	datain => \out[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(0));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[1]~I\ : cycloneii_io
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
	datain => \out[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(1));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[2]~I\ : cycloneii_io
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
	datain => \out[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[3]~I\ : cycloneii_io
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
	datain => \out[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(3));
END structure;


