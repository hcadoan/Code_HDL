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

-- DATE "11/22/2021 23:20:07"

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

ENTITY 	RAM_cau2 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	dataOut : OUT std_logic_vector(7 DOWNTO 0);
	addr : IN std_logic_vector(3 DOWNTO 0);
	CS : IN std_logic;
	WE : IN std_logic;
	clk : IN std_logic
	);
END RAM_cau2;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[1]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[2]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[3]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[4]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[5]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[6]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addr[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WE	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CS	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF RAM_cau2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CS : std_logic;
SIGNAL ww_WE : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|sram~40_regout\ : std_logic;
SIGNAL \u1|sram~12_regout\ : std_logic;
SIGNAL \u1|sram~60_regout\ : std_logic;
SIGNAL \u1|sram~57_regout\ : std_logic;
SIGNAL \u1|sram~17_regout\ : std_logic;
SIGNAL \u1|sram~61_regout\ : std_logic;
SIGNAL \u1|sram~46_regout\ : std_logic;
SIGNAL \u1|sram~58_regout\ : std_logic;
SIGNAL \u1|sram~54_regout\ : std_logic;
SIGNAL \u1|sram~50_regout\ : std_logic;
SIGNAL \u1|sram~91_combout\ : std_logic;
SIGNAL \u1|sram~62_regout\ : std_logic;
SIGNAL \u1|sram~92_combout\ : std_logic;
SIGNAL \u1|sram~23_regout\ : std_logic;
SIGNAL \u1|sram~31_regout\ : std_logic;
SIGNAL \u1|sram~47_regout\ : std_logic;
SIGNAL \u1|sram~15_regout\ : std_logic;
SIGNAL \u1|sram~101_combout\ : std_logic;
SIGNAL \u1|sram~63_regout\ : std_logic;
SIGNAL \u1|sram~102_combout\ : std_logic;
SIGNAL \u1|sram~108_combout\ : std_logic;
SIGNAL \u1|sram~132_combout\ : std_logic;
SIGNAL \u1|sram~134_combout\ : std_logic;
SIGNAL \u1|sram~135_combout\ : std_logic;
SIGNAL \u1|sram~136_combout\ : std_logic;
SIGNAL \u1|sram~147_combout\ : std_logic;
SIGNAL \u1|sram~151_combout\ : std_logic;
SIGNAL \u1|sram~61feeder_combout\ : std_logic;
SIGNAL \u1|sram~17feeder_combout\ : std_logic;
SIGNAL \u1|sram~57feeder_combout\ : std_logic;
SIGNAL \u1|sram~58feeder_combout\ : std_logic;
SIGNAL \u1|sram~46feeder_combout\ : std_logic;
SIGNAL \u1|sram~63feeder_combout\ : std_logic;
SIGNAL \u1|sram~31feeder_combout\ : std_logic;
SIGNAL \u1|sram~23feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u1|sram~139_combout\ : std_logic;
SIGNAL \WE~combout\ : std_logic;
SIGNAL \u1|sram~110_combout\ : std_logic;
SIGNAL \u1|sram~111_combout\ : std_logic;
SIGNAL \u1|sram~44_regout\ : std_logic;
SIGNAL \u1|sram~138_combout\ : std_logic;
SIGNAL \CS~combout\ : std_logic;
SIGNAL \u1|sram~109_combout\ : std_logic;
SIGNAL \u1|sram~32_regout\ : std_logic;
SIGNAL \u1|sram~137_combout\ : std_logic;
SIGNAL \u1|sram~106_combout\ : std_logic;
SIGNAL \u1|sram~107_combout\ : std_logic;
SIGNAL \u1|sram~36_regout\ : std_logic;
SIGNAL \u1|sram~64_combout\ : std_logic;
SIGNAL \u1|sram~65_combout\ : std_logic;
SIGNAL \u1|sram~148_combout\ : std_logic;
SIGNAL \u1|sram~128_combout\ : std_logic;
SIGNAL \u1|sram~129_combout\ : std_logic;
SIGNAL \u1|sram~52_regout\ : std_logic;
SIGNAL \u1|sram~150_combout\ : std_logic;
SIGNAL \u1|sram~133_combout\ : std_logic;
SIGNAL \u1|sram~48_regout\ : std_logic;
SIGNAL \u1|sram~149_combout\ : std_logic;
SIGNAL \u1|sram~130_combout\ : std_logic;
SIGNAL \u1|sram~131_combout\ : std_logic;
SIGNAL \u1|sram~56_regout\ : std_logic;
SIGNAL \u1|sram~71_combout\ : std_logic;
SIGNAL \u1|sram~72_combout\ : std_logic;
SIGNAL \u1|sram~144_combout\ : std_logic;
SIGNAL \u1|sram~120_combout\ : std_logic;
SIGNAL \u1|sram~121_combout\ : std_logic;
SIGNAL \u1|sram~8_regout\ : std_logic;
SIGNAL \u1|sram~146_combout\ : std_logic;
SIGNAL \u1|sram~124_combout\ : std_logic;
SIGNAL \u1|sram~125_combout\ : std_logic;
SIGNAL \u1|sram~0_regout\ : std_logic;
SIGNAL \u1|sram~145_combout\ : std_logic;
SIGNAL \u1|sram~122_combout\ : std_logic;
SIGNAL \u1|sram~123_combout\ : std_logic;
SIGNAL \u1|sram~4_regout\ : std_logic;
SIGNAL \u1|sram~68_combout\ : std_logic;
SIGNAL \u1|sram~69_combout\ : std_logic;
SIGNAL \u1|sram~143_combout\ : std_logic;
SIGNAL \u1|sram~118_combout\ : std_logic;
SIGNAL \u1|sram~119_combout\ : std_logic;
SIGNAL \u1|sram~28_regout\ : std_logic;
SIGNAL \u1|sram~140_combout\ : std_logic;
SIGNAL \u1|sram~112_combout\ : std_logic;
SIGNAL \u1|sram~113_combout\ : std_logic;
SIGNAL \u1|sram~20_regout\ : std_logic;
SIGNAL \u1|sram~142_combout\ : std_logic;
SIGNAL \u1|sram~116_combout\ : std_logic;
SIGNAL \u1|sram~117_combout\ : std_logic;
SIGNAL \u1|sram~16_regout\ : std_logic;
SIGNAL \u1|sram~141_combout\ : std_logic;
SIGNAL \u1|sram~114_combout\ : std_logic;
SIGNAL \u1|sram~115_combout\ : std_logic;
SIGNAL \u1|sram~24_regout\ : std_logic;
SIGNAL \u1|sram~66_combout\ : std_logic;
SIGNAL \u1|sram~67_combout\ : std_logic;
SIGNAL \u1|sram~70_combout\ : std_logic;
SIGNAL \u1|sram~73_combout\ : std_logic;
SIGNAL \u0|y[1]~0_combout\ : std_logic;
SIGNAL \u1|sram~25feeder_combout\ : std_logic;
SIGNAL \u1|sram~25_regout\ : std_logic;
SIGNAL \u1|sram~9_regout\ : std_logic;
SIGNAL \u1|sram~104_combout\ : std_logic;
SIGNAL \u1|sram~105_combout\ : std_logic;
SIGNAL \u1|sram~41_regout\ : std_logic;
SIGNAL \u1|sram~74_combout\ : std_logic;
SIGNAL \u1|sram~75_combout\ : std_logic;
SIGNAL \u1|sram~45_regout\ : std_logic;
SIGNAL \u1|sram~126_combout\ : std_logic;
SIGNAL \u1|sram~127_combout\ : std_logic;
SIGNAL \u1|sram~13_regout\ : std_logic;
SIGNAL \u1|sram~29feeder_combout\ : std_logic;
SIGNAL \u1|sram~29_regout\ : std_logic;
SIGNAL \u1|sram~81_combout\ : std_logic;
SIGNAL \u1|sram~82_combout\ : std_logic;
SIGNAL \u1|sram~53_regout\ : std_logic;
SIGNAL \u1|sram~37feeder_combout\ : std_logic;
SIGNAL \u1|sram~37_regout\ : std_logic;
SIGNAL \u1|sram~5_regout\ : std_logic;
SIGNAL \u1|sram~21_regout\ : std_logic;
SIGNAL \u1|sram~76_combout\ : std_logic;
SIGNAL \u1|sram~77_combout\ : std_logic;
SIGNAL \u1|sram~49_regout\ : std_logic;
SIGNAL \u1|sram~1_regout\ : std_logic;
SIGNAL \u1|sram~33feeder_combout\ : std_logic;
SIGNAL \u1|sram~33_regout\ : std_logic;
SIGNAL \u1|sram~78_combout\ : std_logic;
SIGNAL \u1|sram~79_combout\ : std_logic;
SIGNAL \u1|sram~80_combout\ : std_logic;
SIGNAL \u1|sram~83_combout\ : std_logic;
SIGNAL \u0|WideOr0~0_combout\ : std_logic;
SIGNAL \u1|sram~30feeder_combout\ : std_logic;
SIGNAL \u1|sram~30_regout\ : std_logic;
SIGNAL \u1|sram~26_regout\ : std_logic;
SIGNAL \u1|sram~18_regout\ : std_logic;
SIGNAL \u1|sram~22feeder_combout\ : std_logic;
SIGNAL \u1|sram~22_regout\ : std_logic;
SIGNAL \u1|sram~84_combout\ : std_logic;
SIGNAL \u1|sram~85_combout\ : std_logic;
SIGNAL \u1|sram~38_regout\ : std_logic;
SIGNAL \u1|sram~34_regout\ : std_logic;
SIGNAL \u1|sram~42_regout\ : std_logic;
SIGNAL \u1|sram~86_combout\ : std_logic;
SIGNAL \u1|sram~87_combout\ : std_logic;
SIGNAL \u1|sram~14_regout\ : std_logic;
SIGNAL \u1|sram~6_regout\ : std_logic;
SIGNAL \u1|sram~2_regout\ : std_logic;
SIGNAL \u1|sram~10_regout\ : std_logic;
SIGNAL \u1|sram~88_combout\ : std_logic;
SIGNAL \u1|sram~89_combout\ : std_logic;
SIGNAL \u1|sram~90_combout\ : std_logic;
SIGNAL \u1|sram~93_combout\ : std_logic;
SIGNAL \u0|Mux0~0_combout\ : std_logic;
SIGNAL \u1|sram~55_regout\ : std_logic;
SIGNAL \u1|sram~7_regout\ : std_logic;
SIGNAL \u1|sram~39feeder_combout\ : std_logic;
SIGNAL \u1|sram~39_regout\ : std_logic;
SIGNAL \u1|sram~94_combout\ : std_logic;
SIGNAL \u1|sram~95_combout\ : std_logic;
SIGNAL \u1|sram~35feeder_combout\ : std_logic;
SIGNAL \u1|sram~35_regout\ : std_logic;
SIGNAL \u1|sram~51_regout\ : std_logic;
SIGNAL \u1|sram~3_regout\ : std_logic;
SIGNAL \u1|sram~19feeder_combout\ : std_logic;
SIGNAL \u1|sram~19_regout\ : std_logic;
SIGNAL \u1|sram~98_combout\ : std_logic;
SIGNAL \u1|sram~99_combout\ : std_logic;
SIGNAL \u1|sram~59_regout\ : std_logic;
SIGNAL \u1|sram~43_regout\ : std_logic;
SIGNAL \u1|sram~11_regout\ : std_logic;
SIGNAL \u1|sram~27_regout\ : std_logic;
SIGNAL \u1|sram~96_combout\ : std_logic;
SIGNAL \u1|sram~97_combout\ : std_logic;
SIGNAL \u1|sram~100_combout\ : std_logic;
SIGNAL \u1|sram~103_combout\ : std_logic;
SIGNAL \u1|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \addr~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_WE~combout\ : std_logic;

BEGIN

ww_a <= a;
dataOut <= ww_dataOut;
ww_addr <= addr;
ww_CS <= CS;
ww_WE <= WE;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_WE~combout\ <= NOT \WE~combout\;

-- Location: LCFF_X59_Y34_N29
\u1|sram~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~136_combout\,
	ena => \u1|sram~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~40_regout\);

-- Location: LCFF_X53_Y35_N17
\u1|sram~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~147_combout\,
	ena => \u1|sram~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~12_regout\);

-- Location: LCFF_X57_Y34_N7
\u1|sram~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~151_combout\,
	ena => \u1|sram~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~60_regout\);

-- Location: LCFF_X58_Y34_N31
\u1|sram~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~57feeder_combout\,
	ena => \u1|sram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~57_regout\);

-- Location: LCFF_X54_Y34_N19
\u1|sram~17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~17feeder_combout\,
	ena => \u1|sram~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~17_regout\);

-- Location: LCFF_X57_Y35_N3
\u1|sram~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~61feeder_combout\,
	ena => \u1|sram~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~61_regout\);

-- Location: LCFF_X61_Y34_N5
\u1|sram~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~46feeder_combout\,
	ena => \u1|sram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~46_regout\);

-- Location: LCFF_X58_Y34_N13
\u1|sram~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~58feeder_combout\,
	ena => \u1|sram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~58_regout\);

-- Location: LCFF_X57_Y34_N31
\u1|sram~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~54_regout\);

-- Location: LCFF_X56_Y34_N21
\u1|sram~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~50_regout\);

-- Location: LCCOMB_X56_Y34_N20
\u1|sram~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~91_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\u1|sram~54_regout\))) # (!\addr~combout\(0) & (\u1|sram~50_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \u1|sram~50_regout\,
	datad => \u1|sram~54_regout\,
	combout => \u1|sram~91_combout\);

-- Location: LCFF_X57_Y34_N25
\u1|sram~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~62_regout\);

-- Location: LCCOMB_X56_Y34_N6
\u1|sram~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~92_combout\ = (\addr~combout\(1) & ((\u1|sram~91_combout\ & (\u1|sram~62_regout\)) # (!\u1|sram~91_combout\ & ((\u1|sram~58_regout\))))) # (!\addr~combout\(1) & (((\u1|sram~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \u1|sram~62_regout\,
	datac => \u1|sram~91_combout\,
	datad => \u1|sram~58_regout\,
	combout => \u1|sram~92_combout\);

-- Location: LCFF_X54_Y34_N1
\u1|sram~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~23feeder_combout\,
	ena => \u1|sram~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~23_regout\);

-- Location: LCFF_X57_Y35_N5
\u1|sram~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~31feeder_combout\,
	ena => \u1|sram~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~31_regout\);

-- Location: LCFF_X56_Y35_N13
\u1|sram~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|Mux0~0_combout\,
	sload => VCC,
	ena => \u1|sram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~47_regout\);

-- Location: LCFF_X56_Y35_N19
\u1|sram~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|Mux0~0_combout\,
	sload => VCC,
	ena => \u1|sram~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~15_regout\);

-- Location: LCCOMB_X56_Y35_N18
\u1|sram~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~101_combout\ = (\addr~combout\(2) & (\addr~combout\(3))) # (!\addr~combout\(2) & ((\addr~combout\(3) & ((\u1|sram~47_regout\))) # (!\addr~combout\(3) & (\u1|sram~15_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(3),
	datac => \u1|sram~15_regout\,
	datad => \u1|sram~47_regout\,
	combout => \u1|sram~101_combout\);

-- Location: LCFF_X57_Y35_N15
\u1|sram~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~63feeder_combout\,
	ena => \u1|sram~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~63_regout\);

-- Location: LCCOMB_X56_Y35_N16
\u1|sram~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~102_combout\ = (\addr~combout\(2) & ((\u1|sram~101_combout\ & ((\u1|sram~63_regout\))) # (!\u1|sram~101_combout\ & (\u1|sram~31_regout\)))) # (!\addr~combout\(2) & (((\u1|sram~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~31_regout\,
	datab => \addr~combout\(2),
	datac => \u1|sram~63_regout\,
	datad => \u1|sram~101_combout\,
	combout => \u1|sram~102_combout\);

-- Location: LCCOMB_X57_Y35_N16
\u1|sram~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~108_combout\ = (!\addr~combout\(2) & (!\addr~combout\(0) & (!\addr~combout\(1) & \addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~108_combout\);

-- Location: LCCOMB_X56_Y34_N16
\u1|sram~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~132_combout\ = (!\addr~combout\(1) & (\addr~combout\(2) & (!\addr~combout\(0) & \addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(2),
	datac => \addr~combout\(0),
	datad => \addr~combout\(3),
	combout => \u1|sram~132_combout\);

-- Location: LCCOMB_X57_Y35_N24
\u1|sram~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~134_combout\ = (\addr~combout\(2) & (\addr~combout\(0) & (\addr~combout\(1) & \addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~134_combout\);

-- Location: LCCOMB_X57_Y35_N22
\u1|sram~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~135_combout\ = (\u1|sram~134_combout\ & (\WE~combout\ & \CS~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~134_combout\,
	datab => \WE~combout\,
	datac => \CS~combout\,
	combout => \u1|sram~135_combout\);

-- Location: LCCOMB_X59_Y34_N28
\u1|sram~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~136_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(0),
	combout => \u1|sram~136_combout\);

-- Location: LCCOMB_X53_Y35_N16
\u1|sram~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~147_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	combout => \u1|sram~147_combout\);

-- Location: LCCOMB_X57_Y34_N6
\u1|sram~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~151_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(0),
	combout => \u1|sram~151_combout\);

-- Location: LCCOMB_X57_Y35_N2
\u1|sram~61feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~61feeder_combout\ = \u0|y[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|y[1]~0_combout\,
	combout => \u1|sram~61feeder_combout\);

-- Location: LCCOMB_X54_Y34_N18
\u1|sram~17feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~17feeder_combout\ = \u0|y[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|y[1]~0_combout\,
	combout => \u1|sram~17feeder_combout\);

-- Location: LCCOMB_X58_Y34_N30
\u1|sram~57feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~57feeder_combout\ = \u0|y[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|y[1]~0_combout\,
	combout => \u1|sram~57feeder_combout\);

-- Location: LCCOMB_X58_Y34_N12
\u1|sram~58feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~58feeder_combout\ = \u0|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|WideOr0~0_combout\,
	combout => \u1|sram~58feeder_combout\);

-- Location: LCCOMB_X61_Y34_N4
\u1|sram~46feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~46feeder_combout\ = \u0|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|WideOr0~0_combout\,
	combout => \u1|sram~46feeder_combout\);

-- Location: LCCOMB_X57_Y35_N14
\u1|sram~63feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~63feeder_combout\ = \u0|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|Mux0~0_combout\,
	combout => \u1|sram~63feeder_combout\);

-- Location: LCCOMB_X57_Y35_N4
\u1|sram~31feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~31feeder_combout\ = \u0|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|Mux0~0_combout\,
	combout => \u1|sram~31feeder_combout\);

-- Location: LCCOMB_X54_Y34_N0
\u1|sram~23feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~23feeder_combout\ = \u0|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|Mux0~0_combout\,
	combout => \u1|sram~23feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[1]~I\ : cycloneii_io
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
	padio => ww_addr(1),
	combout => \addr~combout\(1));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X56_Y35_N4
\u1|sram~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~139_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	combout => \u1|sram~139_combout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WE~I\ : cycloneii_io
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
	padio => ww_WE,
	combout => \WE~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[0]~I\ : cycloneii_io
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
	padio => ww_addr(0),
	combout => \addr~combout\(0));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[3]~I\ : cycloneii_io
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
	padio => ww_addr(3),
	combout => \addr~combout\(3));

-- Location: LCCOMB_X57_Y35_N8
\u1|sram~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~110_combout\ = (!\addr~combout\(2) & (\addr~combout\(0) & (\addr~combout\(1) & \addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~110_combout\);

-- Location: LCCOMB_X57_Y35_N6
\u1|sram~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~111_combout\ = (\CS~combout\ & (\WE~combout\ & \u1|sram~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS~combout\,
	datab => \WE~combout\,
	datac => \u1|sram~110_combout\,
	combout => \u1|sram~111_combout\);

-- Location: LCFF_X56_Y35_N5
\u1|sram~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~139_combout\,
	ena => \u1|sram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~44_regout\);

-- Location: LCCOMB_X60_Y34_N20
\u1|sram~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~138_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(0),
	combout => \u1|sram~138_combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CS~I\ : cycloneii_io
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
	padio => ww_CS,
	combout => \CS~combout\);

-- Location: LCCOMB_X57_Y35_N18
\u1|sram~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~109_combout\ = (\u1|sram~108_combout\ & (\WE~combout\ & \CS~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~108_combout\,
	datab => \WE~combout\,
	datac => \CS~combout\,
	combout => \u1|sram~109_combout\);

-- Location: LCFF_X60_Y34_N31
\u1|sram~32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u1|sram~138_combout\,
	sload => VCC,
	ena => \u1|sram~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~32_regout\);

-- Location: LCCOMB_X60_Y34_N0
\u1|sram~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~137_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(0),
	combout => \u1|sram~137_combout\);

-- Location: LCCOMB_X54_Y34_N8
\u1|sram~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~106_combout\ = (!\addr~combout\(2) & (\addr~combout\(0) & (!\addr~combout\(1) & \addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~106_combout\);

-- Location: LCCOMB_X54_Y34_N26
\u1|sram~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~107_combout\ = (\WE~combout\ & (\CS~combout\ & \u1|sram~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WE~combout\,
	datab => \CS~combout\,
	datac => \u1|sram~106_combout\,
	combout => \u1|sram~107_combout\);

-- Location: LCFF_X60_Y34_N1
\u1|sram~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~137_combout\,
	ena => \u1|sram~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~36_regout\);

-- Location: LCCOMB_X60_Y34_N30
\u1|sram~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~64_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\u1|sram~36_regout\))) # (!\addr~combout\(0) & (\u1|sram~32_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \u1|sram~32_regout\,
	datad => \u1|sram~36_regout\,
	combout => \u1|sram~64_combout\);

-- Location: LCCOMB_X53_Y34_N14
\u1|sram~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~65_combout\ = (\addr~combout\(1) & ((\u1|sram~64_combout\ & ((\u1|sram~44_regout\))) # (!\u1|sram~64_combout\ & (\u1|sram~40_regout\)))) # (!\addr~combout\(1) & (((\u1|sram~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~40_regout\,
	datab => \addr~combout\(1),
	datac => \u1|sram~44_regout\,
	datad => \u1|sram~64_combout\,
	combout => \u1|sram~65_combout\);

-- Location: LCCOMB_X57_Y34_N4
\u1|sram~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~148_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(0),
	combout => \u1|sram~148_combout\);

-- Location: LCCOMB_X57_Y35_N12
\u1|sram~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~128_combout\ = (\addr~combout\(2) & (\addr~combout\(0) & (!\addr~combout\(1) & \addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~128_combout\);

-- Location: LCCOMB_X57_Y35_N30
\u1|sram~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~129_combout\ = (\WE~combout\ & (\CS~combout\ & \u1|sram~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WE~combout\,
	datac => \CS~combout\,
	datad => \u1|sram~128_combout\,
	combout => \u1|sram~129_combout\);

-- Location: LCFF_X57_Y34_N5
\u1|sram~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~148_combout\,
	ena => \u1|sram~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~52_regout\);

-- Location: LCCOMB_X57_Y34_N16
\u1|sram~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~150_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(0),
	combout => \u1|sram~150_combout\);

-- Location: LCCOMB_X56_Y34_N22
\u1|sram~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~133_combout\ = (\u1|sram~132_combout\ & (\WE~combout\ & \CS~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~132_combout\,
	datab => \WE~combout\,
	datad => \CS~combout\,
	combout => \u1|sram~133_combout\);

-- Location: LCFF_X56_Y34_N19
\u1|sram~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u1|sram~150_combout\,
	sload => VCC,
	ena => \u1|sram~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~48_regout\);

-- Location: LCCOMB_X58_Y34_N2
\u1|sram~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~149_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	combout => \u1|sram~149_combout\);

-- Location: LCCOMB_X54_Y34_N12
\u1|sram~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~130_combout\ = (\addr~combout\(2) & (!\addr~combout\(0) & (\addr~combout\(1) & \addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~130_combout\);

-- Location: LCCOMB_X54_Y34_N2
\u1|sram~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~131_combout\ = (\WE~combout\ & (\CS~combout\ & \u1|sram~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WE~combout\,
	datab => \CS~combout\,
	datad => \u1|sram~130_combout\,
	combout => \u1|sram~131_combout\);

-- Location: LCFF_X58_Y34_N3
\u1|sram~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~149_combout\,
	ena => \u1|sram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~56_regout\);

-- Location: LCCOMB_X56_Y34_N18
\u1|sram~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~71_combout\ = (\addr~combout\(1) & ((\addr~combout\(0)) # ((\u1|sram~56_regout\)))) # (!\addr~combout\(1) & (!\addr~combout\(0) & (\u1|sram~48_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \u1|sram~48_regout\,
	datad => \u1|sram~56_regout\,
	combout => \u1|sram~71_combout\);

-- Location: LCCOMB_X53_Y34_N20
\u1|sram~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~72_combout\ = (\addr~combout\(0) & ((\u1|sram~71_combout\ & (\u1|sram~60_regout\)) # (!\u1|sram~71_combout\ & ((\u1|sram~52_regout\))))) # (!\addr~combout\(0) & (((\u1|sram~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~60_regout\,
	datab => \addr~combout\(0),
	datac => \u1|sram~52_regout\,
	datad => \u1|sram~71_combout\,
	combout => \u1|sram~72_combout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[2]~I\ : cycloneii_io
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
	padio => ww_addr(2),
	combout => \addr~combout\(2));

-- Location: LCCOMB_X54_Y34_N16
\u1|sram~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~144_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(0),
	combout => \u1|sram~144_combout\);

-- Location: LCCOMB_X53_Y34_N26
\u1|sram~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~120_combout\ = (!\addr~combout\(2) & (!\addr~combout\(0) & (\addr~combout\(1) & !\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~120_combout\);

-- Location: LCCOMB_X53_Y34_N24
\u1|sram~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~121_combout\ = (\u1|sram~120_combout\ & (\CS~combout\ & \WE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|sram~120_combout\,
	datac => \CS~combout\,
	datad => \WE~combout\,
	combout => \u1|sram~121_combout\);

-- Location: LCFF_X53_Y34_N5
\u1|sram~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u1|sram~144_combout\,
	sload => VCC,
	ena => \u1|sram~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~8_regout\);

-- Location: LCCOMB_X55_Y34_N22
\u1|sram~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~146_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	combout => \u1|sram~146_combout\);

-- Location: LCCOMB_X55_Y34_N6
\u1|sram~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~124_combout\ = (!\addr~combout\(1) & (!\addr~combout\(2) & (!\addr~combout\(0) & !\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(2),
	datac => \addr~combout\(0),
	datad => \addr~combout\(3),
	combout => \u1|sram~124_combout\);

-- Location: LCCOMB_X55_Y34_N4
\u1|sram~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~125_combout\ = (\WE~combout\ & (\CS~combout\ & \u1|sram~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WE~combout\,
	datac => \CS~combout\,
	datad => \u1|sram~124_combout\,
	combout => \u1|sram~125_combout\);

-- Location: LCFF_X55_Y34_N27
\u1|sram~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u1|sram~146_combout\,
	sload => VCC,
	ena => \u1|sram~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~0_regout\);

-- Location: LCCOMB_X55_Y34_N12
\u1|sram~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~145_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	combout => \u1|sram~145_combout\);

-- Location: LCCOMB_X55_Y34_N2
\u1|sram~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~122_combout\ = (!\addr~combout\(1) & (!\addr~combout\(2) & (\addr~combout\(0) & !\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(2),
	datac => \addr~combout\(0),
	datad => \addr~combout\(3),
	combout => \u1|sram~122_combout\);

-- Location: LCCOMB_X55_Y34_N8
\u1|sram~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~123_combout\ = (\WE~combout\ & (\CS~combout\ & \u1|sram~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WE~combout\,
	datac => \CS~combout\,
	datad => \u1|sram~122_combout\,
	combout => \u1|sram~123_combout\);

-- Location: LCFF_X55_Y34_N13
\u1|sram~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~145_combout\,
	ena => \u1|sram~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~4_regout\);

-- Location: LCCOMB_X55_Y34_N26
\u1|sram~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~68_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\u1|sram~4_regout\))) # (!\addr~combout\(0) & (\u1|sram~0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \u1|sram~0_regout\,
	datad => \u1|sram~4_regout\,
	combout => \u1|sram~68_combout\);

-- Location: LCCOMB_X53_Y34_N4
\u1|sram~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~69_combout\ = (\addr~combout\(1) & ((\u1|sram~68_combout\ & (\u1|sram~12_regout\)) # (!\u1|sram~68_combout\ & ((\u1|sram~8_regout\))))) # (!\addr~combout\(1) & (((\u1|sram~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~12_regout\,
	datab => \addr~combout\(1),
	datac => \u1|sram~8_regout\,
	datad => \u1|sram~68_combout\,
	combout => \u1|sram~69_combout\);

-- Location: LCCOMB_X55_Y35_N8
\u1|sram~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~143_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(0),
	combout => \u1|sram~143_combout\);

-- Location: LCCOMB_X57_Y35_N0
\u1|sram~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~118_combout\ = (\addr~combout\(2) & (\addr~combout\(0) & (\addr~combout\(1) & !\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~118_combout\);

-- Location: LCCOMB_X57_Y35_N10
\u1|sram~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~119_combout\ = (\WE~combout\ & (\CS~combout\ & \u1|sram~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WE~combout\,
	datac => \CS~combout\,
	datad => \u1|sram~118_combout\,
	combout => \u1|sram~119_combout\);

-- Location: LCFF_X55_Y35_N9
\u1|sram~28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~143_combout\,
	ena => \u1|sram~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~28_regout\);

-- Location: LCCOMB_X54_Y34_N20
\u1|sram~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~140_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(0),
	combout => \u1|sram~140_combout\);

-- Location: LCCOMB_X54_Y34_N24
\u1|sram~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~112_combout\ = (\addr~combout\(2) & (\addr~combout\(0) & (!\addr~combout\(1) & !\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~112_combout\);

-- Location: LCCOMB_X54_Y34_N10
\u1|sram~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~113_combout\ = (\WE~combout\ & (\CS~combout\ & \u1|sram~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WE~combout\,
	datab => \CS~combout\,
	datac => \u1|sram~112_combout\,
	combout => \u1|sram~113_combout\);

-- Location: LCFF_X54_Y34_N5
\u1|sram~20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u1|sram~140_combout\,
	sload => VCC,
	ena => \u1|sram~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~20_regout\);

-- Location: LCCOMB_X54_Y34_N14
\u1|sram~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~142_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(0),
	combout => \u1|sram~142_combout\);

-- Location: LCCOMB_X54_Y34_N28
\u1|sram~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~116_combout\ = (\addr~combout\(2) & (!\addr~combout\(0) & (!\addr~combout\(1) & !\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~116_combout\);

-- Location: LCCOMB_X54_Y34_N6
\u1|sram~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~117_combout\ = (\WE~combout\ & (\u1|sram~116_combout\ & \CS~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WE~combout\,
	datab => \u1|sram~116_combout\,
	datad => \CS~combout\,
	combout => \u1|sram~117_combout\);

-- Location: LCFF_X54_Y34_N31
\u1|sram~16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u1|sram~142_combout\,
	sload => VCC,
	ena => \u1|sram~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~16_regout\);

-- Location: LCCOMB_X58_Y34_N8
\u1|sram~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~141_combout\ = !\a~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	combout => \u1|sram~141_combout\);

-- Location: LCCOMB_X55_Y34_N10
\u1|sram~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~114_combout\ = (\addr~combout\(1) & (\addr~combout\(2) & (!\addr~combout\(0) & !\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(2),
	datac => \addr~combout\(0),
	datad => \addr~combout\(3),
	combout => \u1|sram~114_combout\);

-- Location: LCCOMB_X55_Y34_N20
\u1|sram~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~115_combout\ = (\WE~combout\ & (\CS~combout\ & \u1|sram~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WE~combout\,
	datac => \CS~combout\,
	datad => \u1|sram~114_combout\,
	combout => \u1|sram~115_combout\);

-- Location: LCFF_X58_Y34_N9
\u1|sram~24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~141_combout\,
	ena => \u1|sram~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~24_regout\);

-- Location: LCCOMB_X54_Y34_N30
\u1|sram~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~66_combout\ = (\addr~combout\(1) & ((\addr~combout\(0)) # ((\u1|sram~24_regout\)))) # (!\addr~combout\(1) & (!\addr~combout\(0) & (\u1|sram~16_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \u1|sram~16_regout\,
	datad => \u1|sram~24_regout\,
	combout => \u1|sram~66_combout\);

-- Location: LCCOMB_X54_Y34_N4
\u1|sram~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~67_combout\ = (\addr~combout\(0) & ((\u1|sram~66_combout\ & (\u1|sram~28_regout\)) # (!\u1|sram~66_combout\ & ((\u1|sram~20_regout\))))) # (!\addr~combout\(0) & (((\u1|sram~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \u1|sram~28_regout\,
	datac => \u1|sram~20_regout\,
	datad => \u1|sram~66_combout\,
	combout => \u1|sram~67_combout\);

-- Location: LCCOMB_X53_Y34_N6
\u1|sram~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~70_combout\ = (\addr~combout\(3) & (\addr~combout\(2))) # (!\addr~combout\(3) & ((\addr~combout\(2) & ((\u1|sram~67_combout\))) # (!\addr~combout\(2) & (\u1|sram~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \u1|sram~69_combout\,
	datad => \u1|sram~67_combout\,
	combout => \u1|sram~70_combout\);

-- Location: LCCOMB_X53_Y34_N28
\u1|sram~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~73_combout\ = (\addr~combout\(3) & ((\u1|sram~70_combout\ & ((\u1|sram~72_combout\))) # (!\u1|sram~70_combout\ & (\u1|sram~65_combout\)))) # (!\addr~combout\(3) & (((\u1|sram~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \u1|sram~65_combout\,
	datac => \u1|sram~72_combout\,
	datad => \u1|sram~70_combout\,
	combout => \u1|sram~73_combout\);

-- Location: LCFF_X53_Y34_N29
\u1|dataOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~73_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|dataOut\(0));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X56_Y35_N10
\u0|y[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|y[1]~0_combout\ = \a~combout\(1) $ (!\a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datac => \a~combout\(0),
	combout => \u0|y[1]~0_combout\);

-- Location: LCCOMB_X58_Y34_N0
\u1|sram~25feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~25feeder_combout\ = \u0|y[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|y[1]~0_combout\,
	combout => \u1|sram~25feeder_combout\);

-- Location: LCFF_X58_Y34_N1
\u1|sram~25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~25feeder_combout\,
	ena => \u1|sram~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~25_regout\);

-- Location: LCFF_X59_Y34_N1
\u1|sram~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|sram~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~9_regout\);

-- Location: LCCOMB_X53_Y34_N2
\u1|sram~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~104_combout\ = (!\addr~combout\(2) & (!\addr~combout\(0) & (\addr~combout\(1) & \addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~104_combout\);

-- Location: LCCOMB_X53_Y34_N12
\u1|sram~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~105_combout\ = (\u1|sram~104_combout\ & (\CS~combout\ & \WE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|sram~104_combout\,
	datac => \CS~combout\,
	datad => \WE~combout\,
	combout => \u1|sram~105_combout\);

-- Location: LCFF_X59_Y34_N7
\u1|sram~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|sram~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~41_regout\);

-- Location: LCCOMB_X59_Y34_N0
\u1|sram~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~74_combout\ = (\addr~combout\(2) & (\addr~combout\(3))) # (!\addr~combout\(2) & ((\addr~combout\(3) & ((\u1|sram~41_regout\))) # (!\addr~combout\(3) & (\u1|sram~9_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(3),
	datac => \u1|sram~9_regout\,
	datad => \u1|sram~41_regout\,
	combout => \u1|sram~74_combout\);

-- Location: LCCOMB_X59_Y34_N18
\u1|sram~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~75_combout\ = (\addr~combout\(2) & ((\u1|sram~74_combout\ & (\u1|sram~57_regout\)) # (!\u1|sram~74_combout\ & ((\u1|sram~25_regout\))))) # (!\addr~combout\(2) & (((\u1|sram~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~57_regout\,
	datab => \addr~combout\(2),
	datac => \u1|sram~25_regout\,
	datad => \u1|sram~74_combout\,
	combout => \u1|sram~75_combout\);

-- Location: LCFF_X56_Y35_N23
\u1|sram~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|sram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~45_regout\);

-- Location: LCCOMB_X57_Y35_N28
\u1|sram~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~126_combout\ = (!\addr~combout\(2) & (\addr~combout\(0) & (\addr~combout\(1) & !\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(3),
	combout => \u1|sram~126_combout\);

-- Location: LCCOMB_X57_Y35_N26
\u1|sram~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~127_combout\ = (\WE~combout\ & (\CS~combout\ & \u1|sram~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WE~combout\,
	datac => \CS~combout\,
	datad => \u1|sram~126_combout\,
	combout => \u1|sram~127_combout\);

-- Location: LCFF_X56_Y35_N29
\u1|sram~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|sram~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~13_regout\);

-- Location: LCCOMB_X57_Y35_N20
\u1|sram~29feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~29feeder_combout\ = \u0|y[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|y[1]~0_combout\,
	combout => \u1|sram~29feeder_combout\);

-- Location: LCFF_X57_Y35_N21
\u1|sram~29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~29feeder_combout\,
	ena => \u1|sram~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~29_regout\);

-- Location: LCCOMB_X56_Y35_N28
\u1|sram~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~81_combout\ = (\addr~combout\(2) & ((\addr~combout\(3)) # ((\u1|sram~29_regout\)))) # (!\addr~combout\(2) & (!\addr~combout\(3) & (\u1|sram~13_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(3),
	datac => \u1|sram~13_regout\,
	datad => \u1|sram~29_regout\,
	combout => \u1|sram~81_combout\);

-- Location: LCCOMB_X56_Y35_N22
\u1|sram~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~82_combout\ = (\addr~combout\(3) & ((\u1|sram~81_combout\ & (\u1|sram~61_regout\)) # (!\u1|sram~81_combout\ & ((\u1|sram~45_regout\))))) # (!\addr~combout\(3) & (((\u1|sram~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~61_regout\,
	datab => \addr~combout\(3),
	datac => \u1|sram~45_regout\,
	datad => \u1|sram~81_combout\,
	combout => \u1|sram~82_combout\);

-- Location: LCFF_X57_Y34_N13
\u1|sram~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|sram~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~53_regout\);

-- Location: LCCOMB_X60_Y34_N8
\u1|sram~37feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~37feeder_combout\ = \u0|y[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|y[1]~0_combout\,
	combout => \u1|sram~37feeder_combout\);

-- Location: LCFF_X60_Y34_N9
\u1|sram~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~37feeder_combout\,
	ena => \u1|sram~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~37_regout\);

-- Location: LCFF_X55_Y34_N29
\u1|sram~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|sram~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~5_regout\);

-- Location: LCFF_X54_Y34_N17
\u1|sram~21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|sram~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~21_regout\);

-- Location: LCCOMB_X55_Y34_N28
\u1|sram~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~76_combout\ = (\addr~combout\(3) & (\addr~combout\(2))) # (!\addr~combout\(3) & ((\addr~combout\(2) & ((\u1|sram~21_regout\))) # (!\addr~combout\(2) & (\u1|sram~5_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \u1|sram~5_regout\,
	datad => \u1|sram~21_regout\,
	combout => \u1|sram~76_combout\);

-- Location: LCCOMB_X56_Y34_N24
\u1|sram~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~77_combout\ = (\addr~combout\(3) & ((\u1|sram~76_combout\ & (\u1|sram~53_regout\)) # (!\u1|sram~76_combout\ & ((\u1|sram~37_regout\))))) # (!\addr~combout\(3) & (((\u1|sram~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \u1|sram~53_regout\,
	datac => \u1|sram~37_regout\,
	datad => \u1|sram~76_combout\,
	combout => \u1|sram~77_combout\);

-- Location: LCFF_X56_Y34_N27
\u1|sram~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|sram~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~49_regout\);

-- Location: LCFF_X55_Y34_N15
\u1|sram~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|sram~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~1_regout\);

-- Location: LCCOMB_X60_Y34_N22
\u1|sram~33feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~33feeder_combout\ = \u0|y[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|y[1]~0_combout\,
	combout => \u1|sram~33feeder_combout\);

-- Location: LCFF_X60_Y34_N23
\u1|sram~33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~33feeder_combout\,
	ena => \u1|sram~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~33_regout\);

-- Location: LCCOMB_X55_Y34_N14
\u1|sram~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~78_combout\ = (\addr~combout\(3) & ((\addr~combout\(2)) # ((\u1|sram~33_regout\)))) # (!\addr~combout\(3) & (!\addr~combout\(2) & (\u1|sram~1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \u1|sram~1_regout\,
	datad => \u1|sram~33_regout\,
	combout => \u1|sram~78_combout\);

-- Location: LCCOMB_X56_Y34_N26
\u1|sram~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~79_combout\ = (\addr~combout\(2) & ((\u1|sram~78_combout\ & ((\u1|sram~49_regout\))) # (!\u1|sram~78_combout\ & (\u1|sram~17_regout\)))) # (!\addr~combout\(2) & (((\u1|sram~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~17_regout\,
	datab => \addr~combout\(2),
	datac => \u1|sram~49_regout\,
	datad => \u1|sram~78_combout\,
	combout => \u1|sram~79_combout\);

-- Location: LCCOMB_X56_Y34_N0
\u1|sram~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~80_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\u1|sram~77_combout\)) # (!\addr~combout\(0) & ((\u1|sram~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \u1|sram~77_combout\,
	datad => \u1|sram~79_combout\,
	combout => \u1|sram~80_combout\);

-- Location: LCCOMB_X56_Y34_N8
\u1|sram~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~83_combout\ = (\addr~combout\(1) & ((\u1|sram~80_combout\ & ((\u1|sram~82_combout\))) # (!\u1|sram~80_combout\ & (\u1|sram~75_combout\)))) # (!\addr~combout\(1) & (((\u1|sram~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \u1|sram~75_combout\,
	datac => \u1|sram~82_combout\,
	datad => \u1|sram~80_combout\,
	combout => \u1|sram~83_combout\);

-- Location: LCFF_X56_Y34_N9
\u1|dataOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~83_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|dataOut\(1));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X56_Y35_N8
\u0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|WideOr0~0_combout\ = \a~combout\(2) $ (((\a~combout\(0)) # (\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \a~combout\(1),
	datac => \a~combout\(2),
	combout => \u0|WideOr0~0_combout\);

-- Location: LCCOMB_X55_Y35_N0
\u1|sram~30feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~30feeder_combout\ = \u0|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|WideOr0~0_combout\,
	combout => \u1|sram~30feeder_combout\);

-- Location: LCFF_X55_Y35_N1
\u1|sram~30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~30feeder_combout\,
	ena => \u1|sram~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~30_regout\);

-- Location: LCFF_X55_Y35_N19
\u1|sram~26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~26_regout\);

-- Location: LCFF_X54_Y35_N15
\u1|sram~18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~18_regout\);

-- Location: LCCOMB_X54_Y35_N0
\u1|sram~22feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~22feeder_combout\ = \u0|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|WideOr0~0_combout\,
	combout => \u1|sram~22feeder_combout\);

-- Location: LCFF_X54_Y35_N1
\u1|sram~22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~22feeder_combout\,
	ena => \u1|sram~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~22_regout\);

-- Location: LCCOMB_X54_Y35_N14
\u1|sram~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~84_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\u1|sram~22_regout\))) # (!\addr~combout\(0) & (\u1|sram~18_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \u1|sram~18_regout\,
	datad => \u1|sram~22_regout\,
	combout => \u1|sram~84_combout\);

-- Location: LCCOMB_X55_Y35_N18
\u1|sram~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~85_combout\ = (\addr~combout\(1) & ((\u1|sram~84_combout\ & (\u1|sram~30_regout\)) # (!\u1|sram~84_combout\ & ((\u1|sram~26_regout\))))) # (!\addr~combout\(1) & (((\u1|sram~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \u1|sram~30_regout\,
	datac => \u1|sram~26_regout\,
	datad => \u1|sram~84_combout\,
	combout => \u1|sram~85_combout\);

-- Location: LCFF_X60_Y34_N5
\u1|sram~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~38_regout\);

-- Location: LCFF_X60_Y34_N3
\u1|sram~34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~34_regout\);

-- Location: LCFF_X59_Y34_N13
\u1|sram~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~42_regout\);

-- Location: LCCOMB_X60_Y34_N2
\u1|sram~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~86_combout\ = (\addr~combout\(1) & ((\addr~combout\(0)) # ((\u1|sram~42_regout\)))) # (!\addr~combout\(1) & (!\addr~combout\(0) & (\u1|sram~34_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \u1|sram~34_regout\,
	datad => \u1|sram~42_regout\,
	combout => \u1|sram~86_combout\);

-- Location: LCCOMB_X60_Y34_N4
\u1|sram~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~87_combout\ = (\addr~combout\(0) & ((\u1|sram~86_combout\ & (\u1|sram~46_regout\)) # (!\u1|sram~86_combout\ & ((\u1|sram~38_regout\))))) # (!\addr~combout\(0) & (((\u1|sram~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~46_regout\,
	datab => \addr~combout\(0),
	datac => \u1|sram~38_regout\,
	datad => \u1|sram~86_combout\,
	combout => \u1|sram~87_combout\);

-- Location: LCFF_X56_Y35_N27
\u1|sram~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~14_regout\);

-- Location: LCFF_X55_Y34_N17
\u1|sram~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~6_regout\);

-- Location: LCFF_X55_Y34_N19
\u1|sram~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~2_regout\);

-- Location: LCFF_X59_Y34_N23
\u1|sram~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|WideOr0~0_combout\,
	sload => VCC,
	ena => \u1|sram~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~10_regout\);

-- Location: LCCOMB_X55_Y34_N18
\u1|sram~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~88_combout\ = (\addr~combout\(1) & ((\addr~combout\(0)) # ((\u1|sram~10_regout\)))) # (!\addr~combout\(1) & (!\addr~combout\(0) & (\u1|sram~2_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \u1|sram~2_regout\,
	datad => \u1|sram~10_regout\,
	combout => \u1|sram~88_combout\);

-- Location: LCCOMB_X55_Y34_N16
\u1|sram~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~89_combout\ = (\addr~combout\(0) & ((\u1|sram~88_combout\ & (\u1|sram~14_regout\)) # (!\u1|sram~88_combout\ & ((\u1|sram~6_regout\))))) # (!\addr~combout\(0) & (((\u1|sram~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \u1|sram~14_regout\,
	datac => \u1|sram~6_regout\,
	datad => \u1|sram~88_combout\,
	combout => \u1|sram~89_combout\);

-- Location: LCCOMB_X56_Y34_N30
\u1|sram~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~90_combout\ = (\addr~combout\(3) & ((\addr~combout\(2)) # ((\u1|sram~87_combout\)))) # (!\addr~combout\(3) & (!\addr~combout\(2) & ((\u1|sram~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \u1|sram~87_combout\,
	datad => \u1|sram~89_combout\,
	combout => \u1|sram~90_combout\);

-- Location: LCCOMB_X56_Y34_N10
\u1|sram~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~93_combout\ = (\addr~combout\(2) & ((\u1|sram~90_combout\ & (\u1|sram~92_combout\)) # (!\u1|sram~90_combout\ & ((\u1|sram~85_combout\))))) # (!\addr~combout\(2) & (((\u1|sram~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~92_combout\,
	datab => \addr~combout\(2),
	datac => \u1|sram~85_combout\,
	datad => \u1|sram~90_combout\,
	combout => \u1|sram~93_combout\);

-- Location: LCFF_X56_Y34_N11
\u1|dataOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~93_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|dataOut\(2));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X56_Y35_N14
\u0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux0~0_combout\ = (\a~combout\(3)) # ((\a~combout\(2) & ((\a~combout\(1)) # (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \a~combout\(1),
	datac => \a~combout\(0),
	datad => \a~combout\(3),
	combout => \u0|Mux0~0_combout\);

-- Location: LCFF_X57_Y34_N3
\u1|sram~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|Mux0~0_combout\,
	sload => VCC,
	ena => \u1|sram~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~55_regout\);

-- Location: LCFF_X55_Y34_N1
\u1|sram~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|Mux0~0_combout\,
	sload => VCC,
	ena => \u1|sram~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~7_regout\);

-- Location: LCCOMB_X60_Y34_N16
\u1|sram~39feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~39feeder_combout\ = \u0|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|Mux0~0_combout\,
	combout => \u1|sram~39feeder_combout\);

-- Location: LCFF_X60_Y34_N17
\u1|sram~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~39feeder_combout\,
	ena => \u1|sram~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~39_regout\);

-- Location: LCCOMB_X55_Y34_N0
\u1|sram~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~94_combout\ = (\addr~combout\(3) & ((\addr~combout\(2)) # ((\u1|sram~39_regout\)))) # (!\addr~combout\(3) & (!\addr~combout\(2) & (\u1|sram~7_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \u1|sram~7_regout\,
	datad => \u1|sram~39_regout\,
	combout => \u1|sram~94_combout\);

-- Location: LCCOMB_X55_Y34_N30
\u1|sram~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~95_combout\ = (\addr~combout\(2) & ((\u1|sram~94_combout\ & ((\u1|sram~55_regout\))) # (!\u1|sram~94_combout\ & (\u1|sram~23_regout\)))) # (!\addr~combout\(2) & (((\u1|sram~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~23_regout\,
	datab => \addr~combout\(2),
	datac => \u1|sram~55_regout\,
	datad => \u1|sram~94_combout\,
	combout => \u1|sram~95_combout\);

-- Location: LCCOMB_X60_Y34_N26
\u1|sram~35feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~35feeder_combout\ = \u0|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|Mux0~0_combout\,
	combout => \u1|sram~35feeder_combout\);

-- Location: LCFF_X60_Y34_N27
\u1|sram~35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~35feeder_combout\,
	ena => \u1|sram~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~35_regout\);

-- Location: LCFF_X56_Y34_N5
\u1|sram~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|Mux0~0_combout\,
	sload => VCC,
	ena => \u1|sram~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~51_regout\);

-- Location: LCFF_X55_Y34_N25
\u1|sram~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|Mux0~0_combout\,
	sload => VCC,
	ena => \u1|sram~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~3_regout\);

-- Location: LCCOMB_X54_Y34_N22
\u1|sram~19feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~19feeder_combout\ = \u0|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|Mux0~0_combout\,
	combout => \u1|sram~19feeder_combout\);

-- Location: LCFF_X54_Y34_N23
\u1|sram~19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~19feeder_combout\,
	ena => \u1|sram~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~19_regout\);

-- Location: LCCOMB_X55_Y34_N24
\u1|sram~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~98_combout\ = (\addr~combout\(3) & (\addr~combout\(2))) # (!\addr~combout\(3) & ((\addr~combout\(2) & ((\u1|sram~19_regout\))) # (!\addr~combout\(2) & (\u1|sram~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \u1|sram~3_regout\,
	datad => \u1|sram~19_regout\,
	combout => \u1|sram~98_combout\);

-- Location: LCCOMB_X56_Y34_N4
\u1|sram~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~99_combout\ = (\addr~combout\(3) & ((\u1|sram~98_combout\ & ((\u1|sram~51_regout\))) # (!\u1|sram~98_combout\ & (\u1|sram~35_regout\)))) # (!\addr~combout\(3) & (((\u1|sram~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \u1|sram~35_regout\,
	datac => \u1|sram~51_regout\,
	datad => \u1|sram~98_combout\,
	combout => \u1|sram~99_combout\);

-- Location: LCFF_X58_Y34_N17
\u1|sram~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|Mux0~0_combout\,
	sload => VCC,
	ena => \u1|sram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~59_regout\);

-- Location: LCFF_X59_Y34_N9
\u1|sram~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|Mux0~0_combout\,
	sload => VCC,
	ena => \u1|sram~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~43_regout\);

-- Location: LCFF_X59_Y34_N11
\u1|sram~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|Mux0~0_combout\,
	sload => VCC,
	ena => \u1|sram~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~11_regout\);

-- Location: LCFF_X58_Y34_N15
\u1|sram~27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u0|Mux0~0_combout\,
	sload => VCC,
	ena => \u1|sram~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|sram~27_regout\);

-- Location: LCCOMB_X59_Y34_N10
\u1|sram~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~96_combout\ = (\addr~combout\(2) & ((\addr~combout\(3)) # ((\u1|sram~27_regout\)))) # (!\addr~combout\(2) & (!\addr~combout\(3) & (\u1|sram~11_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(3),
	datac => \u1|sram~11_regout\,
	datad => \u1|sram~27_regout\,
	combout => \u1|sram~96_combout\);

-- Location: LCCOMB_X59_Y34_N8
\u1|sram~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~97_combout\ = (\addr~combout\(3) & ((\u1|sram~96_combout\ & (\u1|sram~59_regout\)) # (!\u1|sram~96_combout\ & ((\u1|sram~43_regout\))))) # (!\addr~combout\(3) & (((\u1|sram~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \u1|sram~59_regout\,
	datac => \u1|sram~43_regout\,
	datad => \u1|sram~96_combout\,
	combout => \u1|sram~97_combout\);

-- Location: LCCOMB_X56_Y34_N2
\u1|sram~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~100_combout\ = (\addr~combout\(1) & ((\addr~combout\(0)) # ((\u1|sram~97_combout\)))) # (!\addr~combout\(1) & (!\addr~combout\(0) & (\u1|sram~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \u1|sram~99_combout\,
	datad => \u1|sram~97_combout\,
	combout => \u1|sram~100_combout\);

-- Location: LCCOMB_X56_Y34_N12
\u1|sram~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sram~103_combout\ = (\addr~combout\(0) & ((\u1|sram~100_combout\ & (\u1|sram~102_combout\)) # (!\u1|sram~100_combout\ & ((\u1|sram~95_combout\))))) # (!\addr~combout\(0) & (((\u1|sram~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|sram~102_combout\,
	datab => \addr~combout\(0),
	datac => \u1|sram~95_combout\,
	datad => \u1|sram~100_combout\,
	combout => \u1|sram~103_combout\);

-- Location: LCFF_X56_Y34_N13
\u1|dataOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sram~103_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|dataOut\(3));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[0]~I\ : cycloneii_io
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
	datain => \u1|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(0));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[1]~I\ : cycloneii_io
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
	datain => \u1|dataOut\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(1));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[2]~I\ : cycloneii_io
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
	datain => \u1|dataOut\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(2));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[3]~I\ : cycloneii_io
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
	datain => \u1|dataOut\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(3));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[4]~I\ : cycloneii_io
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
	padio => ww_dataOut(4));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[5]~I\ : cycloneii_io
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
	padio => ww_dataOut(5));

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[6]~I\ : cycloneii_io
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
	padio => ww_dataOut(6));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[7]~I\ : cycloneii_io
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
	padio => ww_dataOut(7));
END structure;


