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

-- DATE "06/23/2021 20:14:26"

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
	A : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	C : OUT std_logic_vector(7 DOWNTO 0);
	D : OUT std_logic_vector(7 DOWNTO 0);
	E : OUT std_logic_vector(7 DOWNTO 0)
	);
END cau5;

-- Design Ports Information
-- A[0]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[1]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[2]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[3]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[4]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[5]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[6]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[7]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[0]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[1]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[2]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[3]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[5]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[6]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[7]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C[0]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C[1]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C[2]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C[3]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C[4]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C[5]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C[6]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C[7]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[0]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[1]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[2]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[3]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[4]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[5]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[6]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[7]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[0]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[2]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[3]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[4]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[5]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[6]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[7]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rs	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_E : std_logic_vector(7 DOWNTO 0);
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \rs~combout\ : std_logic;
SIGNAL \c~24_combout\ : std_logic;
SIGNAL \c.S6~regout\ : std_logic;
SIGNAL \c~22_combout\ : std_logic;
SIGNAL \c.S7~regout\ : std_logic;
SIGNAL \c~30_combout\ : std_logic;
SIGNAL \c.S8~regout\ : std_logic;
SIGNAL \c~31_combout\ : std_logic;
SIGNAL \c.S9~regout\ : std_logic;
SIGNAL \c~28_combout\ : std_logic;
SIGNAL \c.S10~regout\ : std_logic;
SIGNAL \c~29_combout\ : std_logic;
SIGNAL \c.S11~regout\ : std_logic;
SIGNAL \c~27_combout\ : std_logic;
SIGNAL \c.tat~regout\ : std_logic;
SIGNAL \c~19_combout\ : std_logic;
SIGNAL \c.S0~regout\ : std_logic;
SIGNAL \c~20_combout\ : std_logic;
SIGNAL \c.S1~regout\ : std_logic;
SIGNAL \c~25_combout\ : std_logic;
SIGNAL \c.S2~regout\ : std_logic;
SIGNAL \c~26_combout\ : std_logic;
SIGNAL \c.S3~regout\ : std_logic;
SIGNAL \c~23_combout\ : std_logic;
SIGNAL \c.S4~regout\ : std_logic;
SIGNAL \c~21_combout\ : std_logic;
SIGNAL \c.S5~regout\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~5_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr1~4_combout\ : std_logic;
SIGNAL \WideOr13~combout\ : std_logic;
SIGNAL \WideOr12~combout\ : std_logic;
SIGNAL \WideOr11~combout\ : std_logic;
SIGNAL \WideOr10~1_combout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr20~combout\ : std_logic;
SIGNAL \WideOr19~combout\ : std_logic;
SIGNAL \WideOr17~combout\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \WideOr16~combout\ : std_logic;
SIGNAL \WideOr15~combout\ : std_logic;
SIGNAL \WideOr14~combout\ : std_logic;
SIGNAL \WideOr0~3_combout\ : std_logic;
SIGNAL \WideOr27~combout\ : std_logic;
SIGNAL \WideOr26~combout\ : std_logic;
SIGNAL \WideOr25~combout\ : std_logic;
SIGNAL \WideOr24~0_combout\ : std_logic;
SIGNAL \WideOr23~combout\ : std_logic;
SIGNAL \WideOr22~combout\ : std_logic;
SIGNAL \WideOr21~combout\ : std_logic;
SIGNAL \WideOr16~4_combout\ : std_logic;
SIGNAL \WideOr34~combout\ : std_logic;
SIGNAL \WideOr33~combout\ : std_logic;
SIGNAL \WideOr32~combout\ : std_logic;
SIGNAL \WideOr31~combout\ : std_logic;
SIGNAL \WideOr30~combout\ : std_logic;
SIGNAL \WideOr29~4_combout\ : std_logic;
SIGNAL \WideOr28~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr29~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr30~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr23~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr16~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~5_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr28~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr21~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr14~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr18~0_combout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rs <= rs;
A <= ww_A;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);
\ALT_INV_WideOr29~4_combout\ <= NOT \WideOr29~4_combout\;
\ALT_INV_WideOr30~combout\ <= NOT \WideOr30~combout\;
\ALT_INV_WideOr23~combout\ <= NOT \WideOr23~combout\;
\ALT_INV_WideOr16~combout\ <= NOT \WideOr16~combout\;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_WideOr1~5_combout\ <= NOT \WideOr1~5_combout\;
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;
\ALT_INV_WideOr28~combout\ <= NOT \WideOr28~combout\;
\ALT_INV_WideOr21~combout\ <= NOT \WideOr21~combout\;
\ALT_INV_WideOr14~combout\ <= NOT \WideOr14~combout\;
\ALT_INV_WideOr7~combout\ <= NOT \WideOr7~combout\;
\ALT_INV_WideOr9~combout\ <= NOT \WideOr9~combout\;
\ALT_INV_WideOr18~0_combout\ <= NOT \WideOr18~0_combout\;

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

-- Location: LCCOMB_X60_Y35_N2
\c~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~24_combout\ = (!\rs~combout\ & \c.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs~combout\,
	datac => \c.S5~regout\,
	combout => \c~24_combout\);

-- Location: LCFF_X60_Y35_N3
\c.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S6~regout\);

-- Location: LCCOMB_X60_Y35_N6
\c~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~22_combout\ = (!\rs~combout\ & \c.S6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rs~combout\,
	datad => \c.S6~regout\,
	combout => \c~22_combout\);

-- Location: LCFF_X60_Y35_N7
\c.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S7~regout\);

-- Location: LCCOMB_X60_Y35_N12
\c~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~30_combout\ = (!\rs~combout\ & \c.S7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rs~combout\,
	datad => \c.S7~regout\,
	combout => \c~30_combout\);

-- Location: LCFF_X60_Y35_N13
\c.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S8~regout\);

-- Location: LCCOMB_X60_Y35_N18
\c~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~31_combout\ = (!\rs~combout\ & \c.S8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rs~combout\,
	datad => \c.S8~regout\,
	combout => \c~31_combout\);

-- Location: LCFF_X60_Y35_N19
\c.S9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S9~regout\);

-- Location: LCCOMB_X60_Y35_N10
\c~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~28_combout\ = (!\rs~combout\ & \c.S9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rs~combout\,
	datad => \c.S9~regout\,
	combout => \c~28_combout\);

-- Location: LCFF_X60_Y35_N11
\c.S10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S10~regout\);

-- Location: LCCOMB_X60_Y35_N16
\c~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~29_combout\ = (!\rs~combout\ & \c.S10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rs~combout\,
	datad => \c.S10~regout\,
	combout => \c~29_combout\);

-- Location: LCFF_X60_Y35_N17
\c.S11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S11~regout\);

-- Location: LCCOMB_X60_Y35_N24
\c~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~27_combout\ = (!\rs~combout\ & !\c.S11~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs~combout\,
	datac => \c.S11~regout\,
	combout => \c~27_combout\);

-- Location: LCFF_X60_Y35_N25
\c.tat\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.tat~regout\);

-- Location: LCCOMB_X60_Y35_N20
\c~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~19_combout\ = (!\rs~combout\ & !\c.tat~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs~combout\,
	datac => \c.tat~regout\,
	combout => \c~19_combout\);

-- Location: LCFF_X60_Y35_N21
\c.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S0~regout\);

-- Location: LCCOMB_X60_Y35_N22
\c~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~20_combout\ = (!\rs~combout\ & \c.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs~combout\,
	datac => \c.S0~regout\,
	combout => \c~20_combout\);

-- Location: LCFF_X60_Y35_N23
\c.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S1~regout\);

-- Location: LCCOMB_X60_Y35_N0
\c~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~25_combout\ = (!\rs~combout\ & \c.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rs~combout\,
	datad => \c.S1~regout\,
	combout => \c~25_combout\);

-- Location: LCFF_X60_Y35_N1
\c.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S2~regout\);

-- Location: LCCOMB_X60_Y35_N26
\c~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~26_combout\ = (!\rs~combout\ & \c.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rs~combout\,
	datad => \c.S2~regout\,
	combout => \c~26_combout\);

-- Location: LCFF_X60_Y35_N27
\c.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S3~regout\);

-- Location: LCCOMB_X60_Y35_N28
\c~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~23_combout\ = (!\rs~combout\ & \c.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rs~combout\,
	datad => \c.S3~regout\,
	combout => \c~23_combout\);

-- Location: LCFF_X60_Y35_N29
\c.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S4~regout\);

-- Location: LCCOMB_X60_Y35_N8
\c~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \c~21_combout\ = (!\rs~combout\ & \c.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rs~combout\,
	datad => \c.S4~regout\,
	combout => \c~21_combout\);

-- Location: LCFF_X60_Y35_N9
\c.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \c~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c.S5~regout\);

-- Location: LCCOMB_X62_Y35_N6
\WideOr18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (!\c.S4~regout\ & (!\c.S7~regout\ & !\c.S6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c.S4~regout\,
	datac => \c.S7~regout\,
	datad => \c.S6~regout\,
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X62_Y35_N0
WideOr6 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (\c.S5~regout\) # ((\c.S1~regout\) # ((\c.S0~regout\) # (!\WideOr18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S5~regout\,
	datab => \c.S1~regout\,
	datac => \c.S0~regout\,
	datad => \WideOr18~0_combout\,
	combout => \WideOr6~combout\);

-- Location: LCCOMB_X61_Y35_N28
WideOr5 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\c.S0~regout\) # ((\c.S2~regout\) # ((\c.S4~regout\) # (\c.S6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S0~regout\,
	datab => \c.S2~regout\,
	datac => \c.S4~regout\,
	datad => \c.S6~regout\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X61_Y35_N6
WideOr4 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\c.S4~regout\) # ((\c.S5~regout\) # (\c.S2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S4~regout\,
	datab => \c.S5~regout\,
	datac => \c.S2~regout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X61_Y35_N20
WideOr3 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\c.S0~regout\) # ((\c.S1~regout\) # ((\c.S5~regout\) # (\c.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S0~regout\,
	datab => \c.S1~regout\,
	datac => \c.S5~regout\,
	datad => \c.S2~regout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X60_Y35_N30
\WideOr0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (!\c.S11~regout\ & (!\c.S10~regout\ & \c.tat~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S11~regout\,
	datac => \c.S10~regout\,
	datad => \c.tat~regout\,
	combout => \WideOr0~2_combout\);

-- Location: LCCOMB_X59_Y35_N10
WideOr2 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\c.S3~regout\) # ((\c.S9~regout\) # ((\c.S8~regout\) # (!\WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S3~regout\,
	datab => \c.S9~regout\,
	datac => \c.S8~regout\,
	datad => \WideOr0~2_combout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X62_Y35_N22
\WideOr1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~5_combout\ = (!\c.S1~regout\ & (!\c.S5~regout\ & \WideOr18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c.S1~regout\,
	datac => \c.S5~regout\,
	datad => \WideOr18~0_combout\,
	combout => \WideOr1~5_combout\);

-- Location: LCCOMB_X59_Y35_N28
WideOr0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\c.S5~regout\) # ((\c.S9~regout\) # ((\c.S8~regout\) # (!\WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S5~regout\,
	datab => \c.S9~regout\,
	datac => \c.S8~regout\,
	datad => \WideOr0~2_combout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X61_Y35_N14
\WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (!\c.S2~regout\ & !\c.S6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c.S2~regout\,
	datad => \c.S6~regout\,
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X62_Y35_N12
\WideOr1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~4_combout\ = (!\c.S1~regout\ & !\c.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c.S1~regout\,
	datac => \c.S5~regout\,
	combout => \WideOr1~4_combout\);

-- Location: LCCOMB_X62_Y35_N16
WideOr13 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr13~combout\ = (\c.S8~regout\) # (((\c.S7~regout\) # (!\WideOr1~4_combout\)) # (!\WideOr10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S8~regout\,
	datab => \WideOr10~0_combout\,
	datac => \c.S7~regout\,
	datad => \WideOr1~4_combout\,
	combout => \WideOr13~combout\);

-- Location: LCCOMB_X62_Y35_N2
WideOr12 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr12~combout\ = (\c.S3~regout\) # ((\c.S1~regout\) # ((\c.S7~regout\) # (\c.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S3~regout\,
	datab => \c.S1~regout\,
	datac => \c.S7~regout\,
	datad => \c.S5~regout\,
	combout => \WideOr12~combout\);

-- Location: LCCOMB_X62_Y35_N8
WideOr11 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr11~combout\ = (\c.S5~regout\) # ((\c.S3~regout\) # (\c.S6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S5~regout\,
	datac => \c.S3~regout\,
	datad => \c.S6~regout\,
	combout => \WideOr11~combout\);

-- Location: LCCOMB_X61_Y35_N24
\WideOr10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr10~1_combout\ = (\c.S1~regout\) # ((\c.S2~regout\) # ((\c.S3~regout\) # (\c.S6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S1~regout\,
	datab => \c.S2~regout\,
	datac => \c.S3~regout\,
	datad => \c.S6~regout\,
	combout => \WideOr10~1_combout\);

-- Location: LCCOMB_X59_Y35_N22
WideOr9 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = (\c.S0~regout\) # ((\c.S9~regout\) # ((\c.S4~regout\) # (!\WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S0~regout\,
	datab => \c.S9~regout\,
	datac => \c.S4~regout\,
	datad => \WideOr0~2_combout\,
	combout => \WideOr9~combout\);

-- Location: LCCOMB_X62_Y35_N10
WideOr8 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (\c.S5~regout\) # (((\c.S7~regout\) # (\c.S8~regout\)) # (!\WideOr10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S5~regout\,
	datab => \WideOr10~0_combout\,
	datac => \c.S7~regout\,
	datad => \c.S8~regout\,
	combout => \WideOr8~combout\);

-- Location: LCCOMB_X59_Y35_N8
WideOr7 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = (\c.S6~regout\) # ((\c.S9~regout\) # ((\c.S0~regout\) # (!\WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S6~regout\,
	datab => \c.S9~regout\,
	datac => \c.S0~regout\,
	datad => \WideOr0~2_combout\,
	combout => \WideOr7~combout\);

-- Location: LCCOMB_X59_Y35_N2
\WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (!\c.S3~regout\ & !\c.S7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c.S3~regout\,
	datad => \c.S7~regout\,
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X59_Y35_N26
WideOr20 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr20~combout\ = ((\c.S9~regout\) # ((\c.S8~regout\) # (!\WideOr12~0_combout\))) # (!\WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~0_combout\,
	datab => \c.S9~regout\,
	datac => \c.S8~regout\,
	datad => \WideOr12~0_combout\,
	combout => \WideOr20~combout\);

-- Location: LCCOMB_X61_Y35_N22
WideOr19 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr19~combout\ = (\c.S8~regout\) # ((\c.S2~regout\) # ((\c.S4~regout\) # (\c.S6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S8~regout\,
	datab => \c.S2~regout\,
	datac => \c.S4~regout\,
	datad => \c.S6~regout\,
	combout => \WideOr19~combout\);

-- Location: LCCOMB_X61_Y35_N0
WideOr17 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr17~combout\ = (\c.S3~regout\) # ((\c.S2~regout\) # ((\c.S4~regout\) # (\c.S7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S3~regout\,
	datab => \c.S2~regout\,
	datac => \c.S4~regout\,
	datad => \c.S7~regout\,
	combout => \WideOr17~combout\);

-- Location: LCCOMB_X61_Y35_N30
\WideOr14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = (!\c.S0~regout\ & (!\c.S1~regout\ & \c.tat~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S0~regout\,
	datac => \c.S1~regout\,
	datad => \c.tat~regout\,
	combout => \WideOr14~0_combout\);

-- Location: LCCOMB_X61_Y35_N18
WideOr16 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr16~combout\ = (\c.S5~regout\) # ((\c.S11~regout\) # ((\c.S10~regout\) # (!\WideOr14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S5~regout\,
	datab => \c.S11~regout\,
	datac => \WideOr14~0_combout\,
	datad => \c.S10~regout\,
	combout => \WideOr16~combout\);

-- Location: LCCOMB_X59_Y35_N24
WideOr15 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr15~combout\ = (\c.S6~regout\) # ((\c.S9~regout\) # ((\c.S8~regout\) # (!\WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S6~regout\,
	datab => \c.S9~regout\,
	datac => \c.S8~regout\,
	datad => \WideOr12~0_combout\,
	combout => \WideOr15~combout\);

-- Location: LCCOMB_X61_Y35_N12
WideOr14 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr14~combout\ = (\c.S10~regout\) # ((\c.S7~regout\) # ((\c.S11~regout\) # (!\WideOr14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S10~regout\,
	datab => \c.S7~regout\,
	datac => \WideOr14~0_combout\,
	datad => \c.S11~regout\,
	combout => \WideOr14~combout\);

-- Location: LCCOMB_X59_Y35_N4
\WideOr0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~3_combout\ = (!\c.S8~regout\ & !\c.S9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c.S8~regout\,
	datad => \c.S9~regout\,
	combout => \WideOr0~3_combout\);

-- Location: LCCOMB_X59_Y35_N20
WideOr27 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr27~combout\ = (\c.S10~regout\) # ((\c.S4~regout\) # ((!\WideOr12~0_combout\) # (!\WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S10~regout\,
	datab => \c.S4~regout\,
	datac => \WideOr0~3_combout\,
	datad => \WideOr12~0_combout\,
	combout => \WideOr27~combout\);

-- Location: LCCOMB_X59_Y35_N18
WideOr26 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr26~combout\ = (\c.S7~regout\) # ((\c.S5~regout\) # ((\c.S3~regout\) # (\c.S9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S7~regout\,
	datab => \c.S5~regout\,
	datac => \c.S3~regout\,
	datad => \c.S9~regout\,
	combout => \WideOr26~combout\);

-- Location: LCCOMB_X62_Y35_N24
WideOr25 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr25~combout\ = (\c.S5~regout\) # ((\c.S7~regout\) # (\c.S8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S5~regout\,
	datac => \c.S7~regout\,
	datad => \c.S8~regout\,
	combout => \WideOr25~combout\);

-- Location: LCCOMB_X62_Y35_N18
\WideOr24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr24~0_combout\ = (\c.S5~regout\) # ((\c.S4~regout\) # ((\c.S3~regout\) # (\c.S8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S5~regout\,
	datab => \c.S4~regout\,
	datac => \c.S3~regout\,
	datad => \c.S8~regout\,
	combout => \WideOr24~0_combout\);

-- Location: LCCOMB_X61_Y35_N4
WideOr23 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr23~combout\ = (\c.S6~regout\) # ((\c.S2~regout\) # ((\c.S11~regout\) # (!\WideOr14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S6~regout\,
	datab => \c.S2~regout\,
	datac => \WideOr14~0_combout\,
	datad => \c.S11~regout\,
	combout => \WideOr23~combout\);

-- Location: LCCOMB_X59_Y35_N16
WideOr22 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr22~combout\ = (\c.S7~regout\) # ((\c.S4~regout\) # ((\c.S10~regout\) # (!\WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S7~regout\,
	datab => \c.S4~regout\,
	datac => \WideOr0~3_combout\,
	datad => \c.S10~regout\,
	combout => \WideOr22~combout\);

-- Location: LCCOMB_X61_Y35_N10
WideOr21 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr21~combout\ = ((\c.S2~regout\) # ((\c.S8~regout\) # (\c.S11~regout\))) # (!\WideOr14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~0_combout\,
	datab => \c.S2~regout\,
	datac => \c.S8~regout\,
	datad => \c.S11~regout\,
	combout => \WideOr21~combout\);

-- Location: LCCOMB_X60_Y35_N4
\WideOr16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr16~4_combout\ = (!\c.S5~regout\ & (!\c.S11~regout\ & !\c.S10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S5~regout\,
	datac => \c.S11~regout\,
	datad => \c.S10~regout\,
	combout => \WideOr16~4_combout\);

-- Location: LCCOMB_X59_Y35_N6
WideOr34 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr34~combout\ = ((\c.S8~regout\) # ((\c.S4~regout\) # (\c.S9~regout\))) # (!\WideOr16~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr16~4_combout\,
	datab => \c.S8~regout\,
	datac => \c.S4~regout\,
	datad => \c.S9~regout\,
	combout => \WideOr34~combout\);

-- Location: LCCOMB_X61_Y35_N16
WideOr33 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr33~combout\ = (\c.S8~regout\) # ((\c.S4~regout\) # ((\c.S10~regout\) # (\c.S6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S8~regout\,
	datab => \c.S4~regout\,
	datac => \c.S10~regout\,
	datad => \c.S6~regout\,
	combout => \WideOr33~combout\);

-- Location: LCCOMB_X59_Y35_N30
WideOr32 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr32~combout\ = (\c.S9~regout\) # ((\c.S8~regout\) # (\c.S6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c.S9~regout\,
	datac => \c.S8~regout\,
	datad => \c.S6~regout\,
	combout => \WideOr32~combout\);

-- Location: LCCOMB_X59_Y35_N0
WideOr31 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr31~combout\ = (\c.S6~regout\) # ((\c.S4~regout\) # ((\c.S5~regout\) # (\c.S9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S6~regout\,
	datab => \c.S4~regout\,
	datac => \c.S5~regout\,
	datad => \c.S9~regout\,
	combout => \WideOr31~combout\);

-- Location: LCCOMB_X61_Y35_N26
WideOr30 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr30~combout\ = (\c.S3~regout\) # ((\c.S2~regout\) # ((\c.S7~regout\) # (!\WideOr14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S3~regout\,
	datab => \c.S2~regout\,
	datac => \WideOr14~0_combout\,
	datad => \c.S7~regout\,
	combout => \WideOr30~combout\);

-- Location: LCCOMB_X59_Y35_N12
\WideOr29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr29~4_combout\ = (!\c.S9~regout\ & (!\c.S8~regout\ & \WideOr16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c.S9~regout\,
	datac => \c.S8~regout\,
	datad => \WideOr16~4_combout\,
	combout => \WideOr29~4_combout\);

-- Location: LCCOMB_X60_Y35_N14
WideOr28 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr28~combout\ = (\c.S3~regout\) # ((\c.S9~regout\) # ((\c.S2~regout\) # (!\WideOr14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c.S3~regout\,
	datab => \c.S9~regout\,
	datac => \c.S2~regout\,
	datad => \WideOr14~0_combout\,
	combout => \WideOr28~combout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[0]~I\ : cycloneii_io
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
	datain => \WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(0));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[1]~I\ : cycloneii_io
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
	datain => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(1));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[2]~I\ : cycloneii_io
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
	datain => \WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(2));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[3]~I\ : cycloneii_io
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
	datain => \WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(3));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(4));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(5));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(6));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(7));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[0]~I\ : cycloneii_io
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
	datain => \WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(0));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[1]~I\ : cycloneii_io
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
	datain => \WideOr12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(1));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[2]~I\ : cycloneii_io
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
	datain => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(2));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[3]~I\ : cycloneii_io
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
	datain => \WideOr10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(3));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(4));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[5]~I\ : cycloneii_io
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
	datain => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(5));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(6));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(7));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C[0]~I\ : cycloneii_io
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
	datain => \WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(0));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C[1]~I\ : cycloneii_io
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
	datain => \WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(1));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C[2]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(2));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C[3]~I\ : cycloneii_io
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
	datain => \WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(3));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(4));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C[5]~I\ : cycloneii_io
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
	datain => \WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(5));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(6));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(7));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[0]~I\ : cycloneii_io
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
	datain => \WideOr27~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(0));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[1]~I\ : cycloneii_io
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
	datain => \WideOr26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(1));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[2]~I\ : cycloneii_io
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
	datain => \WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(2));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[3]~I\ : cycloneii_io
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
	datain => \WideOr24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(3));

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(4));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[5]~I\ : cycloneii_io
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
	datain => \WideOr22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(5));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(6));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(7));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[0]~I\ : cycloneii_io
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
	datain => \WideOr34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(0));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[1]~I\ : cycloneii_io
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
	datain => \WideOr33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(1));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[2]~I\ : cycloneii_io
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
	datain => \WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(2));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[3]~I\ : cycloneii_io
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
	datain => \WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(3));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(4));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr29~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(5));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(6));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(7));
END structure;


