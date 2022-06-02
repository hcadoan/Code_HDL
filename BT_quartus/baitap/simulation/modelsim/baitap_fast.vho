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

-- DATE "01/13/2022 21:09:13"

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

ENTITY 	baitap IS
    PORT (
	SW0 : IN std_logic_vector(8 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0)
	);
END baitap;

-- Design Ports Information
-- HEX2[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[7]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[7]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW0[4]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW0[5]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW0[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW0[6]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW0[7]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW0[8]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW0[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW0[2]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW0[0]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF baitap IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW0 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|LessThan19~0_combout\ : std_logic;
SIGNAL \u1|BCD2~5_combout\ : std_logic;
SIGNAL \u1|LessThan33~0_combout\ : std_logic;
SIGNAL \u1|BCD2~6_combout\ : std_logic;
SIGNAL \u1|BCD2~7_combout\ : std_logic;
SIGNAL \u1|BCD2~8_combout\ : std_logic;
SIGNAL \u1|BCD0~198_combout\ : std_logic;
SIGNAL \u1|BCD2[0]~16_combout\ : std_logic;
SIGNAL \u1|LessThan1~2_combout\ : std_logic;
SIGNAL \u1|LessThan33~1_combout\ : std_logic;
SIGNAL \u1|BCD2~18_combout\ : std_logic;
SIGNAL \u1|LessThan49~0_combout\ : std_logic;
SIGNAL \u1|LessThan34~1_combout\ : std_logic;
SIGNAL \u1|BCD2[1]~19_combout\ : std_logic;
SIGNAL \u1|LessThan37~1_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~125_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~126_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~127_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~128_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~129_combout\ : std_logic;
SIGNAL \u1|BCD1[2]~133_combout\ : std_logic;
SIGNAL \u1|BCD1[2]~134_combout\ : std_logic;
SIGNAL \u1|BCD1[2]~135_combout\ : std_logic;
SIGNAL \u1|BCD1[2]~136_combout\ : std_logic;
SIGNAL \u1|BCD1[2]~138_combout\ : std_logic;
SIGNAL \u1|BCD1[3]~143_combout\ : std_logic;
SIGNAL \u1|BCD1[3]~144_combout\ : std_logic;
SIGNAL \u1|BCD1[3]~145_combout\ : std_logic;
SIGNAL \u1|BCD1[3]~146_combout\ : std_logic;
SIGNAL \u1|BCD1[3]~147_combout\ : std_logic;
SIGNAL \u1|LessThan4~2_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~203_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~204_combout\ : std_logic;
SIGNAL \u1|LessThan13~0_combout\ : std_logic;
SIGNAL \u1|LessThan15~0_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~205_combout\ : std_logic;
SIGNAL \u1|BCD0~214_combout\ : std_logic;
SIGNAL \u1|BCD0~216_combout\ : std_logic;
SIGNAL \u1|BCD0~219_combout\ : std_logic;
SIGNAL \u1|BCD0~220_combout\ : std_logic;
SIGNAL \u1|BCD0~221_combout\ : std_logic;
SIGNAL \u1|BCD0~222_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~223_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~224_combout\ : std_logic;
SIGNAL \u1|LessThan40~4_combout\ : std_logic;
SIGNAL \u1|LessThan17~4_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~149_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~150_combout\ : std_logic;
SIGNAL \u1|BCD1[2]~151_combout\ : std_logic;
SIGNAL \u1|BCD1[3]~153_combout\ : std_logic;
SIGNAL \u1|LessThan1~4_combout\ : std_logic;
SIGNAL \u1|BCD0~230_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~232_combout\ : std_logic;
SIGNAL \u1|BCD0~29_combout\ : std_logic;
SIGNAL \u1|BCD0~30_combout\ : std_logic;
SIGNAL \u1|BCD0~28_combout\ : std_logic;
SIGNAL \u1|BCD0~32_combout\ : std_logic;
SIGNAL \u1|BCD0~33_combout\ : std_logic;
SIGNAL \u1|BCD0~31_combout\ : std_logic;
SIGNAL \u1|BCD0~27_combout\ : std_logic;
SIGNAL \u1|BCD0~37_combout\ : std_logic;
SIGNAL \u1|BCD0~40_combout\ : std_logic;
SIGNAL \u1|BCD0~43_combout\ : std_logic;
SIGNAL \u1|BCD0~46_combout\ : std_logic;
SIGNAL \u1|BCD0~42_combout\ : std_logic;
SIGNAL \u1|BCD0~49_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~62_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~60_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~65_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~59_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~69_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~67_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~66_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~78_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~94_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~92_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~95_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~91_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~98_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~108_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~107_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~115_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~154_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~36_combout\ : std_logic;
SIGNAL \u1|BCD0~125_combout\ : std_logic;
SIGNAL \u1|BCD0~129_combout\ : std_logic;
SIGNAL \u1|BCD2[1]~21_combout\ : std_logic;
SIGNAL \u1|LessThan8~2_combout\ : std_logic;
SIGNAL \u1|LessThan10~0_combout\ : std_logic;
SIGNAL \u1|LessThan11~2_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~52_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~56_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~59_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~72_combout\ : std_logic;
SIGNAL \u1|BCD0~138_combout\ : std_logic;
SIGNAL \u1|BCD0~141_combout\ : std_logic;
SIGNAL \u1|BCD0~149_combout\ : std_logic;
SIGNAL \u1|BCD0~235_combout\ : std_logic;
SIGNAL \u1|BCD0~176_combout\ : std_logic;
SIGNAL \u1|BCD0~237_combout\ : std_logic;
SIGNAL \u1|BCD0~173_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~107_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~159_combout\ : std_logic;
SIGNAL \u1|BCD0~183_combout\ : std_logic;
SIGNAL \u1|BCD0~184_combout\ : std_logic;
SIGNAL \u1|BCD0~185_combout\ : std_logic;
SIGNAL \u1|BCD0~186_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~187_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~189_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~191_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~113_combout\ : std_logic;
SIGNAL \u1|LessThan41~0_combout\ : std_logic;
SIGNAL \u1|LessThan46~0_combout\ : std_logic;
SIGNAL \u1|LessThan38~0_combout\ : std_logic;
SIGNAL \u1|LessThan39~0_combout\ : std_logic;
SIGNAL \u1|BCD2[2]~20_combout\ : std_logic;
SIGNAL \u1|LessThan9~4_combout\ : std_logic;
SIGNAL \u1|LessThan45~0_combout\ : std_logic;
SIGNAL \u1|BCD2~9_combout\ : std_logic;
SIGNAL \u1|BCD2~10_combout\ : std_logic;
SIGNAL \u1|BCD2~3_combout\ : std_logic;
SIGNAL \u1|BCD2~4_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~119_combout\ : std_logic;
SIGNAL \u1|LessThan19~1_combout\ : std_logic;
SIGNAL \u1|BCD2~11_combout\ : std_logic;
SIGNAL \u1|LessThan41~1_combout\ : std_logic;
SIGNAL \u1|BCD2~12_combout\ : std_logic;
SIGNAL \u1|LessThan9~5_combout\ : std_logic;
SIGNAL \u1|LessThan26~0_combout\ : std_logic;
SIGNAL \u1|BCD2[0]~13_combout\ : std_logic;
SIGNAL \u1|BCD2[0]~14_combout\ : std_logic;
SIGNAL \u1|BCD2[0]~17_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~120_combout\ : std_logic;
SIGNAL \u1|BCD2[1]~2_combout\ : std_logic;
SIGNAL \u2|HEX[0]~15_combout\ : std_logic;
SIGNAL \u2|HEX[1]~3_combout\ : std_logic;
SIGNAL \u2|HEX[1]~16_combout\ : std_logic;
SIGNAL \u2|Decoder0~0_combout\ : std_logic;
SIGNAL \u2|WideOr3~0_combout\ : std_logic;
SIGNAL \u2|WideOr2~0_combout\ : std_logic;
SIGNAL \u2|WideOr1~0_combout\ : std_logic;
SIGNAL \u2|WideOr0~3_combout\ : std_logic;
SIGNAL \u2|WideOr0~12_combout\ : std_logic;
SIGNAL \u1|BCD1~142_combout\ : std_logic;
SIGNAL \u1|BCD1[3]~141_combout\ : std_logic;
SIGNAL \u1|BCD1[3]~152_combout\ : std_logic;
SIGNAL \u1|BCD1[3]~148_combout\ : std_logic;
SIGNAL \u1|LessThan1~3_combout\ : std_logic;
SIGNAL \u1|BCD0~197_combout\ : std_logic;
SIGNAL \u1|LessThan32~0_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~121_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~122_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~55_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~53_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~111_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~112_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~62_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~63_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~114_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~155_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~75_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~76_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~117_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~79_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~78_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~118_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~71_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~69_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~68_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~115_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~116_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~156_combout\ : std_logic;
SIGNAL \u1|BCD1[0]~123_combout\ : std_logic;
SIGNAL \u1|LessThan45~1_combout\ : std_logic;
SIGNAL \u1|BCD1~139_combout\ : std_logic;
SIGNAL \u1|BCD1[2]~83_combout\ : std_logic;
SIGNAL \u1|BCD1[2]~157_combout\ : std_logic;
SIGNAL \u1|BCD1[2]~140_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~124_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~95_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~158_combout\ : std_logic;
SIGNAL \u1|LessThan27~0_combout\ : std_logic;
SIGNAL \u1|LessThan25~4_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~130_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~131_combout\ : std_logic;
SIGNAL \u1|LessThan48~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|BCD1[1]~132_combout\ : std_logic;
SIGNAL \u3|HEX[0]~0_combout\ : std_logic;
SIGNAL \u3|HEX[1]~1_combout\ : std_logic;
SIGNAL \u3|Decoder0~0_combout\ : std_logic;
SIGNAL \u3|WideOr3~0_combout\ : std_logic;
SIGNAL \u3|WideOr2~0_combout\ : std_logic;
SIGNAL \u3|WideOr1~0_combout\ : std_logic;
SIGNAL \u3|WideOr0~0_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~96_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~100_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~99_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~106_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~93_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~97_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~190_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~192_combout\ : std_logic;
SIGNAL \u1|LessThan34~0_combout\ : std_logic;
SIGNAL \u1|LessThan2~0_combout\ : std_logic;
SIGNAL \u1|BCD0[0]~206_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~210_combout\ : std_logic;
SIGNAL \u1|BCD0~158_combout\ : std_logic;
SIGNAL \u1|BCD0~236_combout\ : std_logic;
SIGNAL \u1|LessThan20~2_combout\ : std_logic;
SIGNAL \u1|LessThan4~3_combout\ : std_logic;
SIGNAL \u1|LessThan37~0_combout\ : std_logic;
SIGNAL \u1|LessThan5~2_combout\ : std_logic;
SIGNAL \u1|LessThan3~0_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~202_combout\ : std_logic;
SIGNAL \u1|BCD2[0]~15_combout\ : std_logic;
SIGNAL \u1|BCD0~231_combout\ : std_logic;
SIGNAL \u1|BCD1[2]~137_combout\ : std_logic;
SIGNAL \u1|BCD0~217_combout\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|BCD0~213_combout\ : std_logic;
SIGNAL \u1|LessThan7~0_combout\ : std_logic;
SIGNAL \u1|BCD0~229_combout\ : std_logic;
SIGNAL \u1|LessThan9~6_combout\ : std_logic;
SIGNAL \u1|BCD0~212_combout\ : std_logic;
SIGNAL \u1|BCD0~215_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~218_combout\ : std_logic;
SIGNAL \u1|BCD0[2]~225_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~200_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~201_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~207_combout\ : std_logic;
SIGNAL \u1|BCD0~137_combout\ : std_logic;
SIGNAL \u1|BCD0~195_combout\ : std_logic;
SIGNAL \u1|BCD0~140_combout\ : std_logic;
SIGNAL \u1|BCD0~196_combout\ : std_logic;
SIGNAL \u1|BCD0~234_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~208_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~61_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~75_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~74_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~64_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~63_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~81_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~188_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~209_combout\ : std_logic;
SIGNAL \u1|BCD0~126_combout\ : std_logic;
SIGNAL \u1|BCD0~193_combout\ : std_logic;
SIGNAL \u1|BCD0~128_combout\ : std_logic;
SIGNAL \u1|BCD0~194_combout\ : std_logic;
SIGNAL \u1|BCD0~233_combout\ : std_logic;
SIGNAL \u1|Add0~1_combout\ : std_logic;
SIGNAL \u1|BCD0[3]~226_combout\ : std_logic;
SIGNAL \u1|BCD0[3]~227_combout\ : std_logic;
SIGNAL \u1|BCD0[1]~211_combout\ : std_logic;
SIGNAL \u1|BCD0[3]~228_combout\ : std_logic;
SIGNAL \u1|BCD0[0]~199_combout\ : std_logic;
SIGNAL \u4|HEX[0]~0_combout\ : std_logic;
SIGNAL \u4|HEX[1]~1_combout\ : std_logic;
SIGNAL \u4|Decoder0~0_combout\ : std_logic;
SIGNAL \u4|WideOr3~0_combout\ : std_logic;
SIGNAL \u4|WideOr2~0_combout\ : std_logic;
SIGNAL \u4|WideOr1~0_combout\ : std_logic;
SIGNAL \u4|WideOr0~0_combout\ : std_logic;
SIGNAL \SW0~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_HEX[0]~15_combout\ : std_logic;
SIGNAL \u4|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_SW0 <= SW0;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u3|ALT_INV_WideOr0~0_combout\ <= NOT \u3|WideOr0~0_combout\;
\u2|ALT_INV_HEX[0]~15_combout\ <= NOT \u2|HEX[0]~15_combout\;
\u4|ALT_INV_WideOr0~0_combout\ <= NOT \u4|WideOr0~0_combout\;

-- Location: LCCOMB_X37_Y29_N16
\u1|LessThan19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan19~0_combout\ = (\SW0~combout\(5)) # ((\SW0~combout\(4)) # (\SW0~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan19~0_combout\);

-- Location: LCCOMB_X37_Y29_N30
\u1|BCD2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~5_combout\ = (\SW0~combout\(5) & (\SW0~combout\(6) & \SW0~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(6),
	datac => \SW0~combout\(4),
	combout => \u1|BCD2~5_combout\);

-- Location: LCCOMB_X37_Y29_N0
\u1|LessThan33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan33~0_combout\ = (!\SW0~combout\(2) & !\SW0~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~combout\(2),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan33~0_combout\);

-- Location: LCCOMB_X37_Y29_N18
\u1|BCD2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~6_combout\ = ((\u1|LessThan38~0_combout\) # ((!\u1|LessThan33~0_combout\ & \u1|BCD2~5_combout\))) # (!\u1|BCD1[1]~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[1]~120_combout\,
	datab => \u1|LessThan33~0_combout\,
	datac => \u1|LessThan38~0_combout\,
	datad => \u1|BCD2~5_combout\,
	combout => \u1|BCD2~6_combout\);

-- Location: LCCOMB_X35_Y29_N4
\u1|BCD2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~7_combout\ = (!\SW0~combout\(4) & (((!\SW0~combout\(3)) # (!\SW0~combout\(1))) # (!\SW0~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \SW0~combout\(1),
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|BCD2~7_combout\);

-- Location: LCCOMB_X34_Y29_N10
\u1|BCD2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~8_combout\ = (\SW0~combout\(8) & (((\SW0~combout\(7)) # (!\u1|BCD2~7_combout\)) # (!\u1|LessThan26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan26~0_combout\,
	datab => \SW0~combout\(7),
	datac => \u1|BCD2~7_combout\,
	datad => \SW0~combout\(8),
	combout => \u1|BCD2~8_combout\);

-- Location: LCCOMB_X35_Y29_N26
\u1|BCD0~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~198_combout\ = (\SW0~combout\(4) & \SW0~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|BCD0~198_combout\);

-- Location: LCCOMB_X36_Y30_N20
\u1|BCD2[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2[0]~16_combout\ = (\u1|BCD2[0]~15_combout\ & (!\u1|LessThan40~4_combout\ & ((\SW0~combout\(5)) # (\SW0~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \u1|BCD2[0]~15_combout\,
	datad => \u1|LessThan40~4_combout\,
	combout => \u1|BCD2[0]~16_combout\);

-- Location: LCCOMB_X35_Y30_N16
\u1|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan1~2_combout\ = ((!\SW0~combout\(1) & !\SW0~combout\(0))) # (!\SW0~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \SW0~combout\(0),
	datac => \SW0~combout\(2),
	combout => \u1|LessThan1~2_combout\);

-- Location: LCCOMB_X37_Y29_N4
\u1|LessThan33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan33~1_combout\ = ((!\SW0~combout\(5) & ((\u1|LessThan33~0_combout\) # (!\SW0~combout\(4))))) # (!\SW0~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(6),
	datad => \u1|LessThan33~0_combout\,
	combout => \u1|LessThan33~1_combout\);

-- Location: LCCOMB_X35_Y29_N6
\u1|BCD2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~18_combout\ = (\SW0~combout\(4) & \SW0~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(5),
	combout => \u1|BCD2~18_combout\);

-- Location: LCCOMB_X37_Y29_N22
\u1|LessThan49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan49~0_combout\ = (((!\SW0~combout\(2) & !\SW0~combout\(3))) # (!\u1|BCD2~18_combout\)) # (!\u1|BCD1[1]~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[1]~119_combout\,
	datab => \SW0~combout\(2),
	datac => \u1|BCD2~18_combout\,
	datad => \SW0~combout\(3),
	combout => \u1|LessThan49~0_combout\);

-- Location: LCCOMB_X35_Y29_N28
\u1|LessThan34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan34~1_combout\ = (!\SW0~combout\(5) & ((\u1|LessThan46~0_combout\) # ((!\SW0~combout\(3)) # (!\SW0~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \u1|LessThan46~0_combout\,
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan34~1_combout\);

-- Location: LCCOMB_X33_Y29_N26
\u1|BCD2[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2[1]~19_combout\ = (((\SW0~combout\(5)) # (\SW0~combout\(6))) # (!\u1|LessThan41~0_combout\)) # (!\u1|BCD0~197_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~197_combout\,
	datab => \u1|LessThan41~0_combout\,
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD2[1]~19_combout\);

-- Location: LCCOMB_X33_Y29_N20
\u1|LessThan37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan37~1_combout\ = (\SW0~combout\(4) & (\SW0~combout\(5) & \SW0~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(4),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan37~1_combout\);

-- Location: LCCOMB_X36_Y30_N0
\u1|BCD1[1]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~125_combout\ = ((\u1|LessThan37~1_combout\) # (!\u1|LessThan7~0_combout\)) # (!\u1|BCD2[0]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD2[0]~15_combout\,
	datac => \u1|LessThan7~0_combout\,
	datad => \u1|LessThan37~1_combout\,
	combout => \u1|BCD1[1]~125_combout\);

-- Location: LCCOMB_X35_Y31_N22
\u1|BCD1[1]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~126_combout\ = (\u1|BCD1[1]~125_combout\ & (!\u1|LessThan4~3_combout\ & ((\SW0~combout\(6)) # (\u1|LessThan37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(6),
	datab => \u1|LessThan37~0_combout\,
	datac => \u1|BCD1[1]~125_combout\,
	datad => \u1|LessThan4~3_combout\,
	combout => \u1|BCD1[1]~126_combout\);

-- Location: LCCOMB_X35_Y31_N16
\u1|BCD1[1]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~127_combout\ = (!\u1|LessThan1~3_combout\ & (!\SW0~combout\(7) & ((\u1|BCD1[1]~126_combout\) # (\u1|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~3_combout\,
	datab => \u1|BCD1[1]~126_combout\,
	datac => \SW0~combout\(7),
	datad => \u1|LessThan3~0_combout\,
	combout => \u1|BCD1[1]~127_combout\);

-- Location: LCCOMB_X36_Y29_N10
\u1|BCD1[1]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~128_combout\ = ((\u1|LessThan26~0_combout\ & (\u1|LessThan45~0_combout\)) # (!\u1|LessThan26~0_combout\ & ((!\u1|BCD1[1]~150_combout\)))) # (!\u1|BCD2[1]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan45~0_combout\,
	datab => \u1|LessThan26~0_combout\,
	datac => \u1|BCD1[1]~150_combout\,
	datad => \u1|BCD2[1]~19_combout\,
	combout => \u1|BCD1[1]~128_combout\);

-- Location: LCCOMB_X35_Y31_N10
\u1|BCD1[1]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~129_combout\ = (\u1|BCD1[1]~127_combout\) # ((\SW0~combout\(7) & ((\u1|BCD1[1]~128_combout\) # (\u1|BCD1[1]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[1]~127_combout\,
	datab => \u1|BCD1[1]~128_combout\,
	datac => \SW0~combout\(7),
	datad => \u1|BCD1[1]~149_combout\,
	combout => \u1|BCD1[1]~129_combout\);

-- Location: LCCOMB_X35_Y31_N8
\u1|BCD1[2]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[2]~133_combout\ = (\u1|LessThan27~0_combout\) # ((!\u1|LessThan32~0_combout\ & (!\u1|LessThan33~1_combout\ & !\u1|LessThan37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan32~0_combout\,
	datab => \u1|LessThan27~0_combout\,
	datac => \u1|LessThan33~1_combout\,
	datad => \u1|LessThan37~0_combout\,
	combout => \u1|BCD1[2]~133_combout\);

-- Location: LCCOMB_X36_Y29_N8
\u1|BCD1[2]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[2]~134_combout\ = (\u1|BCD1[1]~150_combout\ & ((!\u1|BCD2~5_combout\) # (!\u1|BCD1[1]~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[1]~154_combout\,
	datac => \u1|BCD1[1]~150_combout\,
	datad => \u1|BCD2~5_combout\,
	combout => \u1|BCD1[2]~134_combout\);

-- Location: LCCOMB_X36_Y29_N26
\u1|BCD1[2]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[2]~135_combout\ = (\SW0~combout\(7) & (((!\u1|BCD1[2]~151_combout\ & !\SW0~combout\(8))))) # (!\SW0~combout\(7) & (\u1|BCD1[2]~133_combout\ & ((\SW0~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[2]~133_combout\,
	datab => \u1|BCD1[2]~151_combout\,
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(8),
	combout => \u1|BCD1[2]~135_combout\);

-- Location: LCCOMB_X36_Y29_N4
\u1|BCD1[2]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[2]~136_combout\ = ((\u1|BCD2[1]~21_combout\ & (!\u1|LessThan9~5_combout\ & \u1|BCD1[2]~135_combout\))) # (!\u1|BCD0~229_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2[1]~21_combout\,
	datab => \u1|LessThan9~5_combout\,
	datac => \u1|BCD0~229_combout\,
	datad => \u1|BCD1[2]~135_combout\,
	combout => \u1|BCD1[2]~136_combout\);

-- Location: LCCOMB_X36_Y29_N16
\u1|BCD1[2]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[2]~138_combout\ = (\u1|BCD1[2]~137_combout\ & (\u1|BCD1[2]~157_combout\ & (\u1|BCD1[2]~136_combout\ & !\u1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[2]~137_combout\,
	datab => \u1|BCD1[2]~157_combout\,
	datac => \u1|BCD1[2]~136_combout\,
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|BCD1[2]~138_combout\);

-- Location: LCCOMB_X37_Y29_N24
\u1|BCD1[3]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[3]~143_combout\ = (\SW0~combout\(7) & ((\u1|BCD1[3]~153_combout\) # ((\u1|LessThan38~0_combout\) # (!\u1|LessThan39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[3]~153_combout\,
	datab => \u1|LessThan39~0_combout\,
	datac => \u1|LessThan38~0_combout\,
	datad => \SW0~combout\(7),
	combout => \u1|BCD1[3]~143_combout\);

-- Location: LCCOMB_X35_Y31_N26
\u1|BCD1[3]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[3]~144_combout\ = (!\u1|LessThan27~0_combout\ & ((\u1|BCD2~9_combout\) # ((\SW0~combout\(6) & \u1|LessThan37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(6),
	datab => \u1|LessThan37~0_combout\,
	datac => \u1|BCD2~9_combout\,
	datad => \u1|LessThan27~0_combout\,
	combout => \u1|BCD1[3]~144_combout\);

-- Location: LCCOMB_X34_Y29_N26
\u1|BCD1[3]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[3]~145_combout\ = (\u1|BCD2~8_combout\ & ((\u1|BCD1[3]~143_combout\) # ((\u1|BCD1[3]~144_combout\ & !\SW0~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2~8_combout\,
	datab => \u1|BCD1[3]~144_combout\,
	datac => \u1|BCD1[3]~143_combout\,
	datad => \SW0~combout\(7),
	combout => \u1|BCD1[3]~145_combout\);

-- Location: LCCOMB_X33_Y29_N14
\u1|BCD1[3]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[3]~146_combout\ = ((\SW0~combout\(4) & ((\SW0~combout\(3)) # (!\u1|LessThan46~0_combout\)))) # (!\u1|LessThan26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan46~0_combout\,
	datab => \u1|LessThan26~0_combout\,
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|BCD1[3]~146_combout\);

-- Location: LCCOMB_X34_Y29_N4
\u1|BCD1[3]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[3]~147_combout\ = (\u1|BCD1[3]~145_combout\) # ((\u1|BCD1[3]~146_combout\ & (\SW0~combout\(7) & \u1|LessThan19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[3]~146_combout\,
	datab => \u1|BCD1[3]~145_combout\,
	datac => \SW0~combout\(7),
	datad => \u1|LessThan19~1_combout\,
	combout => \u1|BCD1[3]~147_combout\);

-- Location: LCCOMB_X35_Y29_N8
\u1|LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan4~2_combout\ = (\u1|LessThan9~5_combout\ & (!\SW0~combout\(6) & ((\u1|LessThan20~2_combout\) # (!\u1|BCD2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2~18_combout\,
	datab => \u1|LessThan9~5_combout\,
	datac => \u1|LessThan20~2_combout\,
	datad => \SW0~combout\(6),
	combout => \u1|LessThan4~2_combout\);

-- Location: LCCOMB_X35_Y30_N24
\u1|BCD0[1]~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~203_combout\ = ((!\u1|LessThan1~3_combout\ & ((\SW0~combout\(6)) # (!\u1|LessThan34~1_combout\)))) # (!\u1|LessThan9~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan34~1_combout\,
	datab => \u1|LessThan9~5_combout\,
	datac => \u1|LessThan1~3_combout\,
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[1]~203_combout\);

-- Location: LCCOMB_X35_Y30_N2
\u1|BCD0[1]~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~204_combout\ = (\u1|BCD0[1]~203_combout\ & (\u1|BCD0[1]~202_combout\ & !\u1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[1]~203_combout\,
	datab => \u1|BCD0[1]~202_combout\,
	datac => \u1|LessThan0~0_combout\,
	combout => \u1|BCD0[1]~204_combout\);

-- Location: LCCOMB_X34_Y29_N14
\u1|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan13~0_combout\ = (!\SW0~combout\(8) & (((\u1|LessThan26~0_combout\ & \u1|LessThan45~0_combout\)) # (!\SW0~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan26~0_combout\,
	datab => \u1|LessThan45~0_combout\,
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(8),
	combout => \u1|LessThan13~0_combout\);

-- Location: LCCOMB_X34_Y29_N8
\u1|LessThan15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan15~0_combout\ = (!\SW0~combout\(8) & (((!\SW0~combout\(5) & !\SW0~combout\(6))) # (!\SW0~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(7),
	datac => \SW0~combout\(6),
	datad => \SW0~combout\(8),
	combout => \u1|LessThan15~0_combout\);

-- Location: LCCOMB_X35_Y30_N20
\u1|BCD0[1]~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~205_combout\ = (\u1|LessThan0~0_combout\) # ((\u1|LessThan4~2_combout\ & (\u1|BCD0[1]~203_combout\ & \u1|BCD1[2]~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan4~2_combout\,
	datab => \u1|LessThan0~0_combout\,
	datac => \u1|BCD0[1]~203_combout\,
	datad => \u1|BCD1[2]~137_combout\,
	combout => \u1|BCD0[1]~205_combout\);

-- Location: LCCOMB_X36_Y30_N6
\u1|BCD0~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~214_combout\ = ((!\u1|LessThan5~2_combout\ & (\u1|BCD0~230_combout\ & !\u1|LessThan4~2_combout\))) # (!\u1|BCD1[2]~137_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[2]~137_combout\,
	datab => \u1|LessThan5~2_combout\,
	datac => \u1|BCD0~230_combout\,
	datad => \u1|LessThan4~2_combout\,
	combout => \u1|BCD0~214_combout\);

-- Location: LCCOMB_X36_Y30_N26
\u1|BCD0~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~216_combout\ = (\u1|LessThan4~2_combout\) # ((!\u1|LessThan5~2_combout\ & (\u1|BCD0~229_combout\ & \u1|LessThan8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan4~2_combout\,
	datab => \u1|LessThan5~2_combout\,
	datac => \u1|BCD0~229_combout\,
	datad => \u1|LessThan8~2_combout\,
	combout => \u1|BCD0~216_combout\);

-- Location: LCCOMB_X34_Y29_N18
\u1|BCD0~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~219_combout\ = (\u1|BCD2~4_combout\ & (!\u1|LessThan11~2_combout\ & (!\u1|LessThan13~0_combout\ & \u1|BCD2[1]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2~4_combout\,
	datab => \u1|LessThan11~2_combout\,
	datac => \u1|LessThan13~0_combout\,
	datad => \u1|BCD2[1]~21_combout\,
	combout => \u1|BCD0~219_combout\);

-- Location: LCCOMB_X34_Y30_N30
\u1|BCD0~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~220_combout\ = (\u1|BCD0~235_combout\) # ((!\SW0~combout\(2) & ((\u1|LessThan10~0_combout\) # (\u1|BCD0~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan10~0_combout\,
	datab => \u1|BCD0~235_combout\,
	datac => \SW0~combout\(2),
	datad => \u1|BCD0~219_combout\,
	combout => \u1|BCD0~220_combout\);

-- Location: LCCOMB_X34_Y29_N20
\u1|BCD0~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~221_combout\ = (!\u1|BCD2~4_combout\ & (\u1|LessThan15~0_combout\ & (!\u1|LessThan13~0_combout\ & \u1|BCD2[1]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2~4_combout\,
	datab => \u1|LessThan15~0_combout\,
	datac => \u1|LessThan13~0_combout\,
	datad => \u1|BCD2[1]~21_combout\,
	combout => \u1|BCD0~221_combout\);

-- Location: LCCOMB_X34_Y29_N6
\u1|BCD0~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~222_combout\ = (!\u1|LessThan10~0_combout\ & (\u1|Add0~0_combout\ & ((\u1|LessThan11~2_combout\) # (\u1|BCD0~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan10~0_combout\,
	datab => \u1|LessThan11~2_combout\,
	datac => \u1|BCD0~221_combout\,
	datad => \u1|Add0~0_combout\,
	combout => \u1|BCD0~222_combout\);

-- Location: LCCOMB_X34_Y30_N16
\u1|BCD0[2]~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~223_combout\ = (\u1|BCD0~217_combout\) # ((\u1|BCD0~222_combout\) # ((\u1|BCD0~237_combout\) # (\u1|BCD0~215_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~217_combout\,
	datab => \u1|BCD0~222_combout\,
	datac => \u1|BCD0~237_combout\,
	datad => \u1|BCD0~215_combout\,
	combout => \u1|BCD0[2]~223_combout\);

-- Location: LCCOMB_X34_Y30_N10
\u1|BCD0[2]~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~224_combout\ = (\u1|BCD0[2]~232_combout\) # ((\u1|BCD0[2]~218_combout\ & ((\u1|BCD0[2]~223_combout\) # (\u1|BCD0~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~223_combout\,
	datab => \u1|BCD0~220_combout\,
	datac => \u1|BCD0[2]~232_combout\,
	datad => \u1|BCD0[2]~218_combout\,
	combout => \u1|BCD0[2]~224_combout\);

-- Location: LCCOMB_X35_Y29_N2
\u1|LessThan40~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan40~4_combout\ = (!\SW0~combout\(5) & (((!\SW0~combout\(1) & !\SW0~combout\(2))) # (!\u1|BCD0~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \u1|BCD0~198_combout\,
	datac => \SW0~combout\(1),
	datad => \SW0~combout\(2),
	combout => \u1|LessThan40~4_combout\);

-- Location: LCCOMB_X35_Y29_N12
\u1|LessThan17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan17~4_combout\ = (!\SW0~combout\(6) & (((!\SW0~combout\(2) & !\SW0~combout\(3))) # (!\u1|BCD2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \SW0~combout\(3),
	datac => \u1|BCD2~18_combout\,
	datad => \SW0~combout\(6),
	combout => \u1|LessThan17~4_combout\);

-- Location: LCCOMB_X35_Y31_N24
\u1|BCD1[1]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~149_combout\ = (\u1|BCD1[1]~154_combout\ & ((\SW0~combout\(5) & ((!\SW0~combout\(4)) # (!\SW0~combout\(6)))) # (!\SW0~combout\(5) & (\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(6),
	datac => \SW0~combout\(4),
	datad => \u1|BCD1[1]~154_combout\,
	combout => \u1|BCD1[1]~149_combout\);

-- Location: LCCOMB_X36_Y29_N24
\u1|BCD1[1]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~150_combout\ = (!\u1|LessThan17~4_combout\ & ((\SW0~combout\(6)) # ((!\u1|LessThan48~0_combout\ & \SW0~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan17~4_combout\,
	datab => \u1|LessThan48~0_combout\,
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[1]~150_combout\);

-- Location: LCCOMB_X36_Y29_N18
\u1|BCD1[2]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[2]~151_combout\ = (\SW0~combout\(5) & (((\u1|BCD1[2]~134_combout\)))) # (!\SW0~combout\(5) & ((\SW0~combout\(6) & ((\u1|BCD1[2]~134_combout\))) # (!\SW0~combout\(6) & (\u1|LessThan45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan45~0_combout\,
	datab => \u1|BCD1[2]~134_combout\,
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[2]~151_combout\);

-- Location: LCCOMB_X37_Y29_N20
\u1|BCD1[3]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[3]~153_combout\ = (\SW0~combout\(5) & (\SW0~combout\(6) & ((\u1|LessThan49~0_combout\) # (\u1|LessThan48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \u1|LessThan49~0_combout\,
	datac => \SW0~combout\(6),
	datad => \u1|LessThan48~0_combout\,
	combout => \u1|BCD1[3]~153_combout\);

-- Location: LCCOMB_X35_Y31_N18
\u1|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan1~4_combout\ = (\u1|LessThan1~3_combout\ & (!\SW0~combout\(7) & !\SW0~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|LessThan1~3_combout\,
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(8),
	combout => \u1|LessThan1~4_combout\);

-- Location: LCCOMB_X36_Y30_N24
\u1|BCD0~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~230_combout\ = (!\SW0~combout\(7) & (\u1|BCD2[0]~15_combout\ & (!\u1|LessThan7~0_combout\ & !\SW0~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \u1|BCD2[0]~15_combout\,
	datac => \u1|LessThan7~0_combout\,
	datad => \SW0~combout\(8),
	combout => \u1|BCD0~230_combout\);

-- Location: LCCOMB_X35_Y30_N12
\u1|BCD0[2]~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~232_combout\ = (\u1|LessThan0~0_combout\ & (((\SW0~combout\(2))))) # (!\u1|LessThan0~0_combout\ & (\u1|LessThan1~4_combout\ & (\SW0~combout\(2) $ (!\SW0~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~4_combout\,
	datab => \u1|LessThan0~0_combout\,
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(1),
	combout => \u1|BCD0[2]~232_combout\);

-- Location: LCCOMB_X34_Y34_N16
\u1|BCD0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~29_combout\ = (\SW0~combout\(5) & (\SW0~combout\(8) & (!\SW0~combout\(7) & !\SW0~combout\(6)))) # (!\SW0~combout\(5) & (\SW0~combout\(7) & (\SW0~combout\(8) $ (!\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~29_combout\);

-- Location: LCCOMB_X34_Y34_N18
\u1|BCD0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~30_combout\ = (\SW0~combout\(8) & (!\SW0~combout\(6) & (\SW0~combout\(5) $ (!\SW0~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~30_combout\);

-- Location: LCCOMB_X34_Y34_N20
\u1|BCD0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~28_combout\ = (\SW0~combout\(1) & ((\u1|BCD0~30_combout\))) # (!\SW0~combout\(1) & (\u1|BCD0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~combout\(1),
	datac => \u1|BCD0~29_combout\,
	datad => \u1|BCD0~30_combout\,
	combout => \u1|BCD0~28_combout\);

-- Location: LCCOMB_X34_Y32_N6
\u1|BCD0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~32_combout\ = (\SW0~combout\(7) & ((\SW0~combout\(8) & (!\SW0~combout\(5) & !\SW0~combout\(6))) # (!\SW0~combout\(8) & (\SW0~combout\(5) & \SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(6),
	datad => \SW0~combout\(7),
	combout => \u1|BCD0~32_combout\);

-- Location: LCCOMB_X34_Y34_N6
\u1|BCD0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~33_combout\ = (\SW0~combout\(6) & ((\SW0~combout\(8) & (\SW0~combout\(5) & !\SW0~combout\(7))) # (!\SW0~combout\(8) & (!\SW0~combout\(5) & \SW0~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~33_combout\);

-- Location: LCCOMB_X34_Y34_N0
\u1|BCD0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~31_combout\ = (\SW0~combout\(1) & ((\u1|BCD0~33_combout\))) # (!\SW0~combout\(1) & (\u1|BCD0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~combout\(1),
	datac => \u1|BCD0~32_combout\,
	datad => \u1|BCD0~33_combout\,
	combout => \u1|BCD0~31_combout\);

-- Location: LCCOMB_X34_Y34_N10
\u1|BCD0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~27_combout\ = (\SW0~combout\(2) & (\u1|BCD0~31_combout\)) # (!\SW0~combout\(2) & ((\u1|BCD0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0~31_combout\,
	datac => \u1|BCD0~28_combout\,
	datad => \SW0~combout\(2),
	combout => \u1|BCD0~27_combout\);

-- Location: LCCOMB_X34_Y32_N0
\u1|BCD0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~37_combout\ = (\SW0~combout\(8) & (\SW0~combout\(6) & (\SW0~combout\(5) $ (!\SW0~combout\(7))))) # (!\SW0~combout\(8) & (\SW0~combout\(5) & (!\SW0~combout\(6) & \SW0~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(6),
	datad => \SW0~combout\(7),
	combout => \u1|BCD0~37_combout\);

-- Location: LCCOMB_X34_Y34_N4
\u1|BCD0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~40_combout\ = (\SW0~combout\(8) & (!\SW0~combout\(6) & (\SW0~combout\(5) $ (!\SW0~combout\(7))))) # (!\SW0~combout\(8) & (\SW0~combout\(5) & (!\SW0~combout\(7) & \SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~40_combout\);

-- Location: LCCOMB_X34_Y34_N30
\u1|BCD0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~43_combout\ = (\SW0~combout\(1) & (\u1|BCD0~29_combout\)) # (!\SW0~combout\(1) & ((\u1|BCD0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~29_combout\,
	datab => \SW0~combout\(1),
	datac => \u1|BCD0~37_combout\,
	combout => \u1|BCD0~43_combout\);

-- Location: LCCOMB_X34_Y34_N8
\u1|BCD0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~46_combout\ = (\SW0~combout\(1) & (\u1|BCD0~32_combout\)) # (!\SW0~combout\(1) & ((\u1|BCD0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~32_combout\,
	datab => \SW0~combout\(1),
	datac => \u1|BCD0~40_combout\,
	combout => \u1|BCD0~46_combout\);

-- Location: LCCOMB_X34_Y34_N26
\u1|BCD0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~42_combout\ = (\SW0~combout\(2) & ((\u1|BCD0~46_combout\))) # (!\SW0~combout\(2) & (\u1|BCD0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0~43_combout\,
	datac => \u1|BCD0~46_combout\,
	datad => \SW0~combout\(2),
	combout => \u1|BCD0~42_combout\);

-- Location: LCCOMB_X34_Y34_N12
\u1|BCD0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~49_combout\ = (\SW0~combout\(2) & (\u1|BCD0~43_combout\)) # (!\SW0~combout\(2) & ((\u1|BCD0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \u1|BCD0~43_combout\,
	datad => \u1|BCD0~31_combout\,
	combout => \u1|BCD0~49_combout\);

-- Location: LCCOMB_X35_Y34_N18
\u1|BCD0[1]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~62_combout\ = (\SW0~combout\(5) & (\SW0~combout\(7) & ((\SW0~combout\(6)) # (!\SW0~combout\(8))))) # (!\SW0~combout\(5) & (\SW0~combout\(8) & (\SW0~combout\(7) $ (\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[1]~62_combout\);

-- Location: LCCOMB_X35_Y34_N4
\u1|BCD0[1]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~60_combout\ = (\SW0~combout\(1) & ((\u1|BCD0[1]~62_combout\))) # (!\SW0~combout\(1) & (\u1|BCD0[1]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0[1]~61_combout\,
	datac => \SW0~combout\(1),
	datad => \u1|BCD0[1]~62_combout\,
	combout => \u1|BCD0[1]~60_combout\);

-- Location: LCCOMB_X35_Y34_N24
\u1|BCD0[1]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~65_combout\ = (\SW0~combout\(8) & (\SW0~combout\(5) $ ((!\SW0~combout\(7))))) # (!\SW0~combout\(8) & (\SW0~combout\(5) & (\SW0~combout\(7) & !\SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[1]~65_combout\);

-- Location: LCCOMB_X35_Y34_N28
\u1|BCD0[1]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~59_combout\ = (\SW0~combout\(2) & ((\u1|BCD0[1]~63_combout\))) # (!\SW0~combout\(2) & (\u1|BCD0[1]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0[1]~60_combout\,
	datac => \SW0~combout\(2),
	datad => \u1|BCD0[1]~63_combout\,
	combout => \u1|BCD0[1]~59_combout\);

-- Location: LCCOMB_X34_Y34_N14
\u1|BCD0[1]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~69_combout\ = (\SW0~combout\(7) & (\SW0~combout\(5) $ (((\SW0~combout\(8)) # (!\SW0~combout\(6)))))) # (!\SW0~combout\(7) & (\SW0~combout\(8) & (\SW0~combout\(5) & !\SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[1]~69_combout\);

-- Location: LCCOMB_X35_Y34_N30
\u1|BCD0[1]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~67_combout\ = (\SW0~combout\(1) & (\u1|BCD0[1]~69_combout\)) # (!\SW0~combout\(1) & ((\u1|BCD0[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[1]~69_combout\,
	datab => \SW0~combout\(1),
	datac => \u1|BCD0[1]~65_combout\,
	combout => \u1|BCD0[1]~67_combout\);

-- Location: LCCOMB_X35_Y34_N0
\u1|BCD0[1]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~66_combout\ = (\SW0~combout\(2) & (\u1|BCD0[1]~60_combout\)) # (!\SW0~combout\(2) & ((\u1|BCD0[1]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0[1]~60_combout\,
	datac => \SW0~combout\(2),
	datad => \u1|BCD0[1]~67_combout\,
	combout => \u1|BCD0[1]~66_combout\);

-- Location: LCCOMB_X35_Y34_N20
\u1|BCD0[1]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~78_combout\ = (\SW0~combout\(1) & (\u1|BCD0[1]~64_combout\)) # (!\SW0~combout\(1) & ((\u1|BCD0[1]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0[1]~64_combout\,
	datac => \SW0~combout\(1),
	datad => \u1|BCD0[1]~62_combout\,
	combout => \u1|BCD0[1]~78_combout\);

-- Location: LCCOMB_X33_Y30_N18
\u1|BCD0[2]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~94_combout\ = (\SW0~combout\(8) & (\SW0~combout\(6) $ (((!\SW0~combout\(7) & \SW0~combout\(5)))))) # (!\SW0~combout\(8) & (\SW0~combout\(7) & (\SW0~combout\(5) & !\SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \SW0~combout\(8),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[2]~94_combout\);

-- Location: LCCOMB_X33_Y30_N28
\u1|BCD0[2]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~92_combout\ = (\SW0~combout\(4) & ((\u1|BCD0[2]~94_combout\))) # (!\SW0~combout\(4) & (\u1|BCD0[2]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0[2]~93_combout\,
	datac => \SW0~combout\(4),
	datad => \u1|BCD0[2]~94_combout\,
	combout => \u1|BCD0[2]~92_combout\);

-- Location: LCCOMB_X33_Y30_N26
\u1|BCD0[2]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~95_combout\ = (\SW0~combout\(4) & (\u1|BCD0[2]~97_combout\)) # (!\SW0~combout\(4) & ((\u1|BCD0[2]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~97_combout\,
	datab => \u1|BCD0[2]~96_combout\,
	datac => \SW0~combout\(4),
	combout => \u1|BCD0[2]~95_combout\);

-- Location: LCCOMB_X33_Y30_N4
\u1|BCD0[2]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~91_combout\ = (\SW0~combout\(3) & ((\u1|BCD0[2]~95_combout\))) # (!\SW0~combout\(3) & (\u1|BCD0[2]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(3),
	datab => \u1|BCD0[2]~92_combout\,
	datad => \u1|BCD0[2]~95_combout\,
	combout => \u1|BCD0[2]~91_combout\);

-- Location: LCCOMB_X33_Y30_N2
\u1|BCD0[2]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~98_combout\ = (\SW0~combout\(3) & (\u1|BCD0[2]~92_combout\)) # (!\SW0~combout\(3) & ((\u1|BCD0[2]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(3),
	datab => \u1|BCD0[2]~92_combout\,
	datad => \u1|BCD0[2]~99_combout\,
	combout => \u1|BCD0[2]~98_combout\);

-- Location: LCCOMB_X33_Y30_N20
\u1|BCD0[2]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~108_combout\ = (\SW0~combout\(6) & (\SW0~combout\(8) $ (((\SW0~combout\(7) & !\SW0~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \SW0~combout\(8),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[2]~108_combout\);

-- Location: LCCOMB_X33_Y30_N6
\u1|BCD0[2]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~107_combout\ = (\SW0~combout\(4) & ((\u1|BCD0[2]~93_combout\))) # (!\SW0~combout\(4) & (\u1|BCD0[2]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~108_combout\,
	datab => \u1|BCD0[2]~93_combout\,
	datac => \SW0~combout\(4),
	combout => \u1|BCD0[2]~107_combout\);

-- Location: LCCOMB_X34_Y32_N26
\u1|BCD0[2]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~115_combout\ = (\SW0~combout\(8) & (\SW0~combout\(6) $ (((\SW0~combout\(5) & !\SW0~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(6),
	datad => \SW0~combout\(7),
	combout => \u1|BCD0[2]~115_combout\);

-- Location: LCCOMB_X36_Y29_N12
\u1|BCD1[1]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~154_combout\ = (\SW0~combout\(8)) # ((\u1|BCD1[1]~36_combout\ & (\SW0~combout\(7) & \SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[1]~36_combout\,
	datab => \SW0~combout\(8),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[1]~154_combout\);

-- Location: LCCOMB_X35_Y29_N14
\u1|BCD1[1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~36_combout\ = (\SW0~combout\(5)) # ((\SW0~combout\(3) & (\SW0~combout\(4) & \SW0~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(3),
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(2),
	combout => \u1|BCD1[1]~36_combout\);

-- Location: LCCOMB_X34_Y31_N6
\u1|BCD0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~125_combout\ = (\SW0~combout\(5) & (\SW0~combout\(4) & (!\SW0~combout\(3) & !\SW0~combout\(6)))) # (!\SW0~combout\(5) & (\SW0~combout\(3) & ((\SW0~combout\(4)) # (!\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~125_combout\);

-- Location: LCCOMB_X34_Y31_N20
\u1|BCD0~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~129_combout\ = (\SW0~combout\(3) & (!\SW0~combout\(5) & (!\SW0~combout\(4) & \SW0~combout\(6)))) # (!\SW0~combout\(3) & (!\SW0~combout\(6) & ((!\SW0~combout\(4)) # (!\SW0~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~129_combout\);

-- Location: LCCOMB_X34_Y29_N2
\u1|BCD2[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2[1]~21_combout\ = (\SW0~combout\(8)) # ((\u1|BCD2[1]~19_combout\ & \SW0~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD2[1]~19_combout\,
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(8),
	combout => \u1|BCD2[1]~21_combout\);

-- Location: LCCOMB_X36_Y30_N12
\u1|LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan8~2_combout\ = (!\SW0~combout\(7) & (!\SW0~combout\(8) & ((\u1|LessThan40~4_combout\) # (!\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \u1|LessThan40~4_combout\,
	datac => \SW0~combout\(6),
	datad => \SW0~combout\(8),
	combout => \u1|LessThan8~2_combout\);

-- Location: LCCOMB_X34_Y29_N12
\u1|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan10~0_combout\ = (\u1|LessThan9~5_combout\ & (((\u1|BCD2~7_combout\) # (!\SW0~combout\(6))) # (!\SW0~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(6),
	datac => \u1|BCD2~7_combout\,
	datad => \u1|LessThan9~5_combout\,
	combout => \u1|LessThan10~0_combout\);

-- Location: LCCOMB_X34_Y29_N30
\u1|LessThan11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan11~2_combout\ = (!\SW0~combout\(7) & (!\SW0~combout\(8) & ((!\SW0~combout\(6)) # (!\u1|LessThan37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan37~1_combout\,
	datab => \SW0~combout\(7),
	datac => \SW0~combout\(6),
	datad => \SW0~combout\(8),
	combout => \u1|LessThan11~2_combout\);

-- Location: LCCOMB_X36_Y31_N20
\u1|BCD1[0]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~52_combout\ = (\SW0~combout\(5) & (((!\SW0~combout\(6)) # (!\SW0~combout\(2))))) # (!\SW0~combout\(5) & (\SW0~combout\(1) & (\SW0~combout\(2) & \SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~52_combout\);

-- Location: LCCOMB_X36_Y31_N10
\u1|BCD1[0]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~56_combout\ = (\SW0~combout\(5) & (((!\SW0~combout\(2) & !\SW0~combout\(6))))) # (!\SW0~combout\(5) & ((\SW0~combout\(1) & ((\SW0~combout\(2)) # (\SW0~combout\(6)))) # (!\SW0~combout\(1) & (\SW0~combout\(2) & \SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~56_combout\);

-- Location: LCCOMB_X36_Y31_N4
\u1|BCD1[0]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~59_combout\ = (\SW0~combout\(1) & (((\SW0~combout\(2) & \SW0~combout\(6))) # (!\SW0~combout\(5)))) # (!\SW0~combout\(1) & (!\SW0~combout\(5) & ((\SW0~combout\(2)) # (\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~59_combout\);

-- Location: LCCOMB_X36_Y32_N12
\u1|BCD1[0]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~72_combout\ = (\SW0~combout\(5) & (((\SW0~combout\(4) & !\SW0~combout\(6))) # (!\SW0~combout\(3)))) # (!\SW0~combout\(5) & (\SW0~combout\(3) $ (((\SW0~combout\(4) & !\SW0~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~72_combout\);

-- Location: LCCOMB_X34_Y31_N24
\u1|BCD0~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~138_combout\ = \SW0~combout\(1) $ (((\SW0~combout\(5) & \SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(1),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~138_combout\);

-- Location: LCCOMB_X34_Y31_N12
\u1|BCD0~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~141_combout\ = (\SW0~combout\(5) & (\SW0~combout\(1))) # (!\SW0~combout\(5) & ((\SW0~combout\(1) & ((!\SW0~combout\(6)))) # (!\SW0~combout\(1) & (\SW0~combout\(2) & \SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(1),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~141_combout\);

-- Location: LCCOMB_X34_Y32_N30
\u1|BCD0~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~149_combout\ = (\SW0~combout\(7) & (!\SW0~combout\(4) & (!\SW0~combout\(6) & !\SW0~combout\(3)))) # (!\SW0~combout\(7) & (\SW0~combout\(4) & (\SW0~combout\(6) & \SW0~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(6),
	datad => \SW0~combout\(3),
	combout => \u1|BCD0~149_combout\);

-- Location: LCCOMB_X34_Y32_N8
\u1|BCD0~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~235_combout\ = (\SW0~combout\(5) & (\u1|BCD0~149_combout\ & (!\SW0~combout\(8) & \SW0~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \u1|BCD0~149_combout\,
	datac => \SW0~combout\(8),
	datad => \SW0~combout\(2),
	combout => \u1|BCD0~235_combout\);

-- Location: LCCOMB_X34_Y32_N14
\u1|BCD0~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~176_combout\ = (\SW0~combout\(2) & (\SW0~combout\(1) & !\SW0~combout\(3))) # (!\SW0~combout\(2) & (!\SW0~combout\(1) & \SW0~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datac => \SW0~combout\(1),
	datad => \SW0~combout\(3),
	combout => \u1|BCD0~176_combout\);

-- Location: LCCOMB_X34_Y32_N24
\u1|BCD0~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~237_combout\ = (!\SW0~combout\(8) & (!\SW0~combout\(5) & (\SW0~combout\(7) & \u1|BCD0~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(7),
	datad => \u1|BCD0~173_combout\,
	combout => \u1|BCD0~237_combout\);

-- Location: LCCOMB_X34_Y32_N18
\u1|BCD0~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~173_combout\ = (\u1|BCD0~176_combout\ & (!\SW0~combout\(6) & !\SW0~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0~176_combout\,
	datac => \SW0~combout\(6),
	datad => \SW0~combout\(4),
	combout => \u1|BCD0~173_combout\);

-- Location: LCCOMB_X36_Y31_N12
\u1|BCD1[1]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~107_combout\ = (\SW0~combout\(4) & ((\SW0~combout\(5) & ((!\SW0~combout\(3)) # (!\SW0~combout\(2)))) # (!\SW0~combout\(5) & (!\SW0~combout\(2) & !\SW0~combout\(3))))) # (!\SW0~combout\(4) & (((\SW0~combout\(3))) # (!\SW0~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(4),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(3),
	combout => \u1|BCD1[1]~107_combout\);

-- Location: LCCOMB_X36_Y31_N6
\u1|BCD1[1]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~159_combout\ = (\u1|BCD1[1]~107_combout\ & \SW0~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[1]~107_combout\,
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[1]~159_combout\);

-- Location: LCCOMB_X34_Y34_N24
\u1|BCD0~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~183_combout\ = (\SW0~combout\(1) & (((\u1|BCD0~37_combout\) # (\SW0~combout\(2))))) # (!\SW0~combout\(1) & (\u1|BCD0~33_combout\ & ((!\SW0~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~33_combout\,
	datab => \SW0~combout\(1),
	datac => \u1|BCD0~37_combout\,
	datad => \SW0~combout\(2),
	combout => \u1|BCD0~183_combout\);

-- Location: LCCOMB_X34_Y34_N2
\u1|BCD0~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~184_combout\ = (\u1|BCD0~183_combout\ & ((\u1|BCD0~40_combout\) # ((!\SW0~combout\(2))))) # (!\u1|BCD0~183_combout\ & (((\u1|BCD0~29_combout\ & \SW0~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~183_combout\,
	datab => \u1|BCD0~40_combout\,
	datac => \u1|BCD0~29_combout\,
	datad => \SW0~combout\(2),
	combout => \u1|BCD0~184_combout\);

-- Location: LCCOMB_X34_Y34_N28
\u1|BCD0~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~185_combout\ = (\SW0~combout\(4) & (((\SW0~combout\(3)) # (\u1|BCD0~184_combout\)))) # (!\SW0~combout\(4) & (\u1|BCD0~27_combout\ & (!\SW0~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~27_combout\,
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \u1|BCD0~184_combout\,
	combout => \u1|BCD0~185_combout\);

-- Location: LCCOMB_X34_Y34_N22
\u1|BCD0~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~186_combout\ = (\u1|BCD0~185_combout\ & ((\u1|BCD0~49_combout\) # ((!\SW0~combout\(3))))) # (!\u1|BCD0~185_combout\ & (((\SW0~combout\(3) & \u1|BCD0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~49_combout\,
	datab => \u1|BCD0~185_combout\,
	datac => \SW0~combout\(3),
	datad => \u1|BCD0~42_combout\,
	combout => \u1|BCD0~186_combout\);

-- Location: LCCOMB_X35_Y34_N12
\u1|BCD0[1]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~187_combout\ = (\SW0~combout\(3) & (((\SW0~combout\(4))))) # (!\SW0~combout\(3) & ((\SW0~combout\(4) & ((\u1|BCD0[1]~66_combout\))) # (!\SW0~combout\(4) & (\u1|BCD0[1]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(3),
	datab => \u1|BCD0[1]~59_combout\,
	datac => \SW0~combout\(4),
	datad => \u1|BCD0[1]~66_combout\,
	combout => \u1|BCD0[1]~187_combout\);

-- Location: LCCOMB_X33_Y30_N10
\u1|BCD0[2]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~189_combout\ = (\SW0~combout\(4) & (((\u1|BCD0[2]~100_combout\) # (\SW0~combout\(3))))) # (!\SW0~combout\(4) & (\u1|BCD0[2]~115_combout\ & ((!\SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~115_combout\,
	datab => \u1|BCD0[2]~100_combout\,
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|BCD0[2]~189_combout\);

-- Location: LCCOMB_X33_Y30_N14
\u1|BCD0[2]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~191_combout\ = (\SW0~combout\(2) & (((\SW0~combout\(1))))) # (!\SW0~combout\(2) & ((\SW0~combout\(1) & ((\u1|BCD0[2]~98_combout\))) # (!\SW0~combout\(1) & (\u1|BCD0[2]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \u1|BCD0[2]~91_combout\,
	datac => \SW0~combout\(1),
	datad => \u1|BCD0[2]~98_combout\,
	combout => \u1|BCD0[2]~191_combout\);

-- Location: LCCOMB_X36_Y31_N28
\u1|BCD1[0]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~113_combout\ = (\SW0~combout\(4) & ((\u1|BCD1[0]~56_combout\) # ((\SW0~combout\(3))))) # (!\SW0~combout\(4) & (((\u1|BCD1[0]~59_combout\ & !\SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[0]~56_combout\,
	datab => \u1|BCD1[0]~59_combout\,
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|BCD1[0]~113_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW0[4]~I\ : cycloneii_io
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
	padio => ww_SW0(4),
	combout => \SW0~combout\(4));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW0[3]~I\ : cycloneii_io
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
	padio => ww_SW0(3),
	combout => \SW0~combout\(3));

-- Location: LCCOMB_X33_Y29_N8
\u1|LessThan41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan41~0_combout\ = (!\SW0~combout\(4) & !\SW0~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan41~0_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW0[6]~I\ : cycloneii_io
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
	padio => ww_SW0(6),
	combout => \SW0~combout\(6));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW0[1]~I\ : cycloneii_io
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
	padio => ww_SW0(1),
	combout => \SW0~combout\(1));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW0[2]~I\ : cycloneii_io
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
	padio => ww_SW0(2),
	combout => \SW0~combout\(2));

-- Location: LCCOMB_X35_Y29_N16
\u1|LessThan46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan46~0_combout\ = (!\SW0~combout\(2)) # (!\SW0~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~combout\(1),
	datad => \SW0~combout\(2),
	combout => \u1|LessThan46~0_combout\);

-- Location: LCCOMB_X37_Y29_N8
\u1|LessThan38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan38~0_combout\ = (!\SW0~combout\(5) & (\u1|LessThan41~0_combout\ & (!\SW0~combout\(6) & \u1|LessThan46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \u1|LessThan41~0_combout\,
	datac => \SW0~combout\(6),
	datad => \u1|LessThan46~0_combout\,
	combout => \u1|LessThan38~0_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW0[8]~I\ : cycloneii_io
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
	padio => ww_SW0(8),
	combout => \SW0~combout\(8));

-- Location: LCCOMB_X37_Y29_N26
\u1|LessThan39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan39~0_combout\ = (\SW0~combout\(5)) # ((\SW0~combout\(6)) # (\SW0~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(6),
	datac => \SW0~combout\(4),
	combout => \u1|LessThan39~0_combout\);

-- Location: LCCOMB_X37_Y29_N10
\u1|BCD2[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2[2]~20_combout\ = ((\u1|LessThan38~0_combout\) # ((!\u1|LessThan39~0_combout\) # (!\SW0~combout\(8)))) # (!\SW0~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \u1|LessThan38~0_combout\,
	datac => \SW0~combout\(8),
	datad => \u1|LessThan39~0_combout\,
	combout => \u1|BCD2[2]~20_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW0[5]~I\ : cycloneii_io
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
	padio => ww_SW0(5),
	combout => \SW0~combout\(5));

-- Location: LCCOMB_X36_Y32_N8
\u1|LessThan9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan9~4_combout\ = (\SW0~combout\(5) & \SW0~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|LessThan9~4_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW0[7]~I\ : cycloneii_io
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
	padio => ww_SW0(7),
	combout => \SW0~combout\(7));

-- Location: LCCOMB_X35_Y29_N30
\u1|LessThan45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan45~0_combout\ = (!\SW0~combout\(4) & ((!\SW0~combout\(3)) # (!\SW0~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan45~0_combout\);

-- Location: LCCOMB_X34_Y29_N28
\u1|BCD2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~9_combout\ = (!\SW0~combout\(6) & ((\u1|LessThan45~0_combout\) # (!\SW0~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|LessThan45~0_combout\,
	datac => \SW0~combout\(6),
	datad => \SW0~combout\(5),
	combout => \u1|BCD2~9_combout\);

-- Location: LCCOMB_X34_Y29_N22
\u1|BCD2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~10_combout\ = (\u1|BCD2~8_combout\ & ((\SW0~combout\(7)) # (!\u1|BCD2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2~8_combout\,
	datab => \SW0~combout\(7),
	datac => \u1|BCD2~9_combout\,
	combout => \u1|BCD2~10_combout\);

-- Location: LCCOMB_X35_Y29_N10
\u1|BCD2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~3_combout\ = (!\SW0~combout\(5) & (((\u1|LessThan46~0_combout\ & !\SW0~combout\(3))) # (!\SW0~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \u1|LessThan46~0_combout\,
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|BCD2~3_combout\);

-- Location: LCCOMB_X34_Y29_N24
\u1|BCD2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~4_combout\ = (!\SW0~combout\(8) & (((\u1|BCD2~3_combout\ & !\SW0~combout\(6))) # (!\SW0~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \u1|BCD2~3_combout\,
	datac => \SW0~combout\(6),
	datad => \SW0~combout\(8),
	combout => \u1|BCD2~4_combout\);

-- Location: LCCOMB_X37_Y29_N2
\u1|BCD1[1]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~119_combout\ = (\SW0~combout\(7) & \SW0~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datac => \SW0~combout\(6),
	combout => \u1|BCD1[1]~119_combout\);

-- Location: LCCOMB_X37_Y29_N28
\u1|LessThan19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan19~1_combout\ = (!\SW0~combout\(8) & (((!\SW0~combout\(5) & \u1|LessThan41~0_combout\)) # (!\u1|BCD1[1]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \u1|LessThan41~0_combout\,
	datac => \SW0~combout\(8),
	datad => \u1|BCD1[1]~119_combout\,
	combout => \u1|LessThan19~1_combout\);

-- Location: LCCOMB_X34_Y29_N0
\u1|BCD2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~11_combout\ = (\u1|BCD2~4_combout\) # ((\u1|LessThan19~1_combout\) # ((\u1|BCD2~6_combout\ & \u1|BCD2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2~6_combout\,
	datab => \u1|BCD2~10_combout\,
	datac => \u1|BCD2~4_combout\,
	datad => \u1|LessThan19~1_combout\,
	combout => \u1|BCD2~11_combout\);

-- Location: LCCOMB_X36_Y32_N10
\u1|LessThan41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan41~1_combout\ = (!\SW0~combout\(2) & (!\SW0~combout\(4) & !\SW0~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	combout => \u1|LessThan41~1_combout\);

-- Location: LCCOMB_X36_Y30_N8
\u1|BCD2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2~12_combout\ = (\u1|LessThan9~5_combout\ & (\u1|LessThan9~4_combout\ & ((!\u1|LessThan41~1_combout\)))) # (!\u1|LessThan9~5_combout\ & (((\u1|BCD2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan9~5_combout\,
	datab => \u1|LessThan9~4_combout\,
	datac => \u1|BCD2~11_combout\,
	datad => \u1|LessThan41~1_combout\,
	combout => \u1|BCD2~12_combout\);

-- Location: LCCOMB_X34_Y32_N16
\u1|LessThan9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan9~5_combout\ = (!\SW0~combout\(8) & !\SW0~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datac => \SW0~combout\(7),
	combout => \u1|LessThan9~5_combout\);

-- Location: LCCOMB_X33_Y29_N2
\u1|LessThan26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan26~0_combout\ = (!\SW0~combout\(5) & !\SW0~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|LessThan26~0_combout\);

-- Location: LCCOMB_X35_Y29_N0
\u1|BCD2[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2[0]~13_combout\ = (\SW0~combout\(2) & (\SW0~combout\(4) & \SW0~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|BCD2[0]~13_combout\);

-- Location: LCCOMB_X36_Y30_N2
\u1|BCD2[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2[0]~14_combout\ = (((\SW0~combout\(1) & \u1|BCD2[0]~13_combout\)) # (!\u1|LessThan9~5_combout\)) # (!\u1|LessThan26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \u1|LessThan26~0_combout\,
	datac => \u1|LessThan9~5_combout\,
	datad => \u1|BCD2[0]~13_combout\,
	combout => \u1|BCD2[0]~14_combout\);

-- Location: LCCOMB_X36_Y30_N22
\u1|BCD2[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2[0]~17_combout\ = (\u1|BCD2~12_combout\ & (\u1|BCD2[0]~14_combout\ & ((\u1|BCD2[0]~16_combout\) # (!\u1|LessThan9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2[0]~16_combout\,
	datab => \u1|BCD2~12_combout\,
	datac => \u1|LessThan9~5_combout\,
	datad => \u1|BCD2[0]~14_combout\,
	combout => \u1|BCD2[0]~17_combout\);

-- Location: LCCOMB_X37_Y29_N12
\u1|BCD1[1]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~120_combout\ = (\SW0~combout\(7) & ((\SW0~combout\(5)) # ((\SW0~combout\(6)) # (\SW0~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(6),
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(7),
	combout => \u1|BCD1[1]~120_combout\);

-- Location: LCCOMB_X37_Y29_N6
\u1|BCD2[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2[1]~2_combout\ = (\SW0~combout\(8) & (((!\u1|BCD1[1]~120_combout\)))) # (!\SW0~combout\(8) & (\u1|LessThan19~0_combout\ & (\u1|BCD1[1]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan19~0_combout\,
	datab => \u1|BCD1[1]~119_combout\,
	datac => \SW0~combout\(8),
	datad => \u1|BCD1[1]~120_combout\,
	combout => \u1|BCD2[1]~2_combout\);

-- Location: LCCOMB_X41_Y33_N8
\u2|HEX[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|HEX[0]~15_combout\ = (\u1|BCD2[1]~2_combout\) # (\u1|BCD2[2]~20_combout\ $ (\u1|BCD2[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2[2]~20_combout\,
	datab => \u1|BCD2[0]~17_combout\,
	datad => \u1|BCD2[1]~2_combout\,
	combout => \u2|HEX[0]~15_combout\);

-- Location: LCCOMB_X34_Y32_N22
\u2|HEX[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|HEX[1]~3_combout\ = (\SW0~combout\(8) & (\SW0~combout\(7) & ((\SW0~combout\(2)) # (\SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \SW0~combout\(3),
	datac => \SW0~combout\(8),
	datad => \SW0~combout\(7),
	combout => \u2|HEX[1]~3_combout\);

-- Location: LCCOMB_X34_Y32_N20
\u2|HEX[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|HEX[1]~16_combout\ = (\SW0~combout\(5) & (\SW0~combout\(4) & (\SW0~combout\(6) & \u2|HEX[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(6),
	datad => \u2|HEX[1]~3_combout\,
	combout => \u2|HEX[1]~16_combout\);

-- Location: LCCOMB_X41_Y33_N26
\u2|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Decoder0~0_combout\ = (\u1|BCD2[2]~20_combout\ & (!\u1|BCD2[0]~17_combout\ & \u1|BCD2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2[2]~20_combout\,
	datab => \u1|BCD2[0]~17_combout\,
	datad => \u1|BCD2[1]~2_combout\,
	combout => \u2|Decoder0~0_combout\);

-- Location: LCCOMB_X41_Y33_N4
\u2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|WideOr3~0_combout\ = (\u1|BCD2[2]~20_combout\ & (\u1|BCD2[0]~17_combout\ & !\u1|BCD2[1]~2_combout\)) # (!\u1|BCD2[2]~20_combout\ & (\u1|BCD2[0]~17_combout\ $ (!\u1|BCD2[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2[2]~20_combout\,
	datab => \u1|BCD2[0]~17_combout\,
	datad => \u1|BCD2[1]~2_combout\,
	combout => \u2|WideOr3~0_combout\);

-- Location: LCCOMB_X41_Y33_N6
\u2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|WideOr2~0_combout\ = (\u1|BCD2[0]~17_combout\) # ((!\u1|BCD2[2]~20_combout\ & !\u1|BCD2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2[2]~20_combout\,
	datab => \u1|BCD2[0]~17_combout\,
	datad => \u1|BCD2[1]~2_combout\,
	combout => \u2|WideOr2~0_combout\);

-- Location: LCCOMB_X41_Y33_N0
\u2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|WideOr1~0_combout\ = (\u1|BCD2[2]~20_combout\ & ((\u1|BCD2[0]~17_combout\) # (\u1|BCD2[1]~2_combout\))) # (!\u1|BCD2[2]~20_combout\ & (\u1|BCD2[0]~17_combout\ & \u1|BCD2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD2[2]~20_combout\,
	datab => \u1|BCD2[0]~17_combout\,
	datad => \u1|BCD2[1]~2_combout\,
	combout => \u2|WideOr1~0_combout\);

-- Location: LCCOMB_X33_Y29_N12
\u2|WideOr0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|WideOr0~3_combout\ = (!\SW0~combout\(4) & (!\SW0~combout\(5) & !\SW0~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(4),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(3),
	combout => \u2|WideOr0~3_combout\);

-- Location: LCCOMB_X33_Y29_N10
\u2|WideOr0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|WideOr0~12_combout\ = (!\SW0~combout\(8) & ((\u2|WideOr0~3_combout\) # ((!\SW0~combout\(6)) # (!\SW0~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|WideOr0~3_combout\,
	datab => \SW0~combout\(8),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u2|WideOr0~12_combout\);

-- Location: LCCOMB_X35_Y32_N26
\u1|BCD1~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1~142_combout\ = (\SW0~combout\(8)) # ((!\u1|LessThan17~4_combout\ & \SW0~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan17~4_combout\,
	datac => \SW0~combout\(8),
	datad => \SW0~combout\(7),
	combout => \u1|BCD1~142_combout\);

-- Location: LCCOMB_X34_Y32_N10
\u1|BCD1[3]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[3]~141_combout\ = (\SW0~combout\(4) & (((!\SW0~combout\(5))))) # (!\SW0~combout\(4) & (!\SW0~combout\(2) & (\SW0~combout\(5) & !\SW0~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(3),
	combout => \u1|BCD1[3]~141_combout\);

-- Location: LCCOMB_X34_Y32_N28
\u1|BCD1[3]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[3]~152_combout\ = (!\SW0~combout\(8) & (!\SW0~combout\(7) & (\SW0~combout\(6) & \u1|BCD1[3]~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(7),
	datac => \SW0~combout\(6),
	datad => \u1|BCD1[3]~141_combout\,
	combout => \u1|BCD1[3]~152_combout\);

-- Location: LCCOMB_X35_Y32_N12
\u1|BCD1[3]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[3]~148_combout\ = (\u1|BCD2[0]~14_combout\ & ((\u1|BCD1[3]~152_combout\) # ((\u1|BCD1[3]~147_combout\ & \u1|BCD1~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[3]~147_combout\,
	datab => \u1|BCD1~142_combout\,
	datac => \u1|BCD1[3]~152_combout\,
	datad => \u1|BCD2[0]~14_combout\,
	combout => \u1|BCD1[3]~148_combout\);

-- Location: LCCOMB_X33_Y29_N22
\u1|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan1~3_combout\ = (\u1|LessThan26~0_combout\ & (((\u1|LessThan1~2_combout\ & !\SW0~combout\(3))) # (!\SW0~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~2_combout\,
	datab => \u1|LessThan26~0_combout\,
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan1~3_combout\);

-- Location: LCCOMB_X34_Y31_N0
\u1|BCD0~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~197_combout\ = (!\SW0~combout\(1) & !\SW0~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~combout\(1),
	datac => \SW0~combout\(2),
	combout => \u1|BCD0~197_combout\);

-- Location: LCCOMB_X34_Y31_N10
\u1|LessThan32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan32~0_combout\ = (!\SW0~combout\(5) & (!\SW0~combout\(4) & ((\u1|BCD0~197_combout\) # (!\SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \u1|BCD0~197_combout\,
	combout => \u1|LessThan32~0_combout\);

-- Location: LCCOMB_X35_Y31_N0
\u1|BCD1[0]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~121_combout\ = (!\SW0~combout\(8) & (\u1|LessThan1~3_combout\ & ((\SW0~combout\(6)) # (!\u1|LessThan32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \u1|LessThan1~3_combout\,
	datac => \SW0~combout\(6),
	datad => \u1|LessThan32~0_combout\,
	combout => \u1|BCD1[0]~121_combout\);

-- Location: LCCOMB_X35_Y31_N2
\u1|BCD1[0]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~122_combout\ = (!\SW0~combout\(7) & ((\u1|BCD1[0]~121_combout\) # ((!\u1|LessThan25~4_combout\ & \SW0~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan25~4_combout\,
	datab => \u1|BCD1[0]~121_combout\,
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(8),
	combout => \u1|BCD1[0]~122_combout\);

-- Location: LCCOMB_X36_Y31_N0
\u1|BCD1[0]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~55_combout\ = (\SW0~combout\(6) & (((\SW0~combout\(1) & \SW0~combout\(2))) # (!\SW0~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~55_combout\);

-- Location: LCCOMB_X36_Y31_N14
\u1|BCD1[0]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~53_combout\ = (\SW0~combout\(5) & ((\SW0~combout\(1)) # ((\SW0~combout\(2)) # (\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~53_combout\);

-- Location: LCCOMB_X36_Y31_N16
\u1|BCD1[0]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~111_combout\ = (\SW0~combout\(4) & (((\u1|BCD1[0]~53_combout\) # (\SW0~combout\(3))))) # (!\SW0~combout\(4) & (\u1|BCD1[0]~52_combout\ & ((!\SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[0]~52_combout\,
	datab => \u1|BCD1[0]~53_combout\,
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|BCD1[0]~111_combout\);

-- Location: LCCOMB_X36_Y31_N26
\u1|BCD1[0]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~112_combout\ = (\u1|BCD1[0]~111_combout\ & ((\u1|BCD1[0]~56_combout\) # ((!\SW0~combout\(3))))) # (!\u1|BCD1[0]~111_combout\ & (((\u1|BCD1[0]~55_combout\ & \SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[0]~56_combout\,
	datab => \u1|BCD1[0]~55_combout\,
	datac => \u1|BCD1[0]~111_combout\,
	datad => \SW0~combout\(3),
	combout => \u1|BCD1[0]~112_combout\);

-- Location: LCCOMB_X36_Y31_N22
\u1|BCD1[0]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~62_combout\ = (\SW0~combout\(5) & ((\SW0~combout\(1)) # ((\SW0~combout\(2)) # (\SW0~combout\(6))))) # (!\SW0~combout\(5) & (((!\SW0~combout\(2) & !\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~62_combout\);

-- Location: LCCOMB_X36_Y31_N8
\u1|BCD1[0]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~63_combout\ = (\SW0~combout\(5) & ((\SW0~combout\(1) & ((\SW0~combout\(2)) # (\SW0~combout\(6)))) # (!\SW0~combout\(1) & (\SW0~combout\(2) & \SW0~combout\(6))))) # (!\SW0~combout\(5) & (((!\SW0~combout\(6)) # (!\SW0~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~63_combout\);

-- Location: LCCOMB_X36_Y31_N30
\u1|BCD1[0]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~114_combout\ = (\u1|BCD1[0]~113_combout\ & (((\u1|BCD1[0]~63_combout\) # (!\SW0~combout\(3))))) # (!\u1|BCD1[0]~113_combout\ & (\u1|BCD1[0]~62_combout\ & ((\SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[0]~113_combout\,
	datab => \u1|BCD1[0]~62_combout\,
	datac => \u1|BCD1[0]~63_combout\,
	datad => \SW0~combout\(3),
	combout => \u1|BCD1[0]~114_combout\);

-- Location: LCCOMB_X36_Y31_N2
\u1|BCD1[0]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~155_combout\ = (\SW0~combout\(7) & ((\u1|BCD1[0]~114_combout\))) # (!\SW0~combout\(7) & (\u1|BCD1[0]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \u1|BCD1[0]~112_combout\,
	datad => \u1|BCD1[0]~114_combout\,
	combout => \u1|BCD1[0]~155_combout\);

-- Location: LCCOMB_X36_Y32_N14
\u1|BCD1[0]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~75_combout\ = (\SW0~combout\(5) & (!\SW0~combout\(3) & ((\SW0~combout\(4)) # (!\SW0~combout\(6))))) # (!\SW0~combout\(5) & (\SW0~combout\(3) & ((\SW0~combout\(6)) # (!\SW0~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~75_combout\);

-- Location: LCCOMB_X36_Y32_N16
\u1|BCD1[0]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~76_combout\ = (\SW0~combout\(5) & ((\SW0~combout\(4) & (!\SW0~combout\(3) & !\SW0~combout\(6))) # (!\SW0~combout\(4) & (\SW0~combout\(3) & \SW0~combout\(6))))) # (!\SW0~combout\(5) & (\SW0~combout\(3) $ (((!\SW0~combout\(4) & 
-- \SW0~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~76_combout\);

-- Location: LCCOMB_X36_Y32_N28
\u1|BCD1[0]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~117_combout\ = (\SW0~combout\(2) & (((\u1|BCD1[0]~76_combout\) # (\SW0~combout\(1))))) # (!\SW0~combout\(2) & (\u1|BCD1[0]~75_combout\ & ((!\SW0~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \u1|BCD1[0]~75_combout\,
	datac => \u1|BCD1[0]~76_combout\,
	datad => \SW0~combout\(1),
	combout => \u1|BCD1[0]~117_combout\);

-- Location: LCCOMB_X36_Y32_N4
\u1|BCD1[0]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~79_combout\ = (\SW0~combout\(5) & (\SW0~combout\(3) $ (((\SW0~combout\(4) & !\SW0~combout\(6)))))) # (!\SW0~combout\(5) & ((\SW0~combout\(4) & ((\SW0~combout\(3)) # (\SW0~combout\(6)))) # (!\SW0~combout\(4) & ((!\SW0~combout\(6)) # 
-- (!\SW0~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~79_combout\);

-- Location: LCCOMB_X36_Y32_N2
\u1|BCD1[0]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~78_combout\ = (\SW0~combout\(5) & (\SW0~combout\(3) $ (((\SW0~combout\(4)) # (!\SW0~combout\(6)))))) # (!\SW0~combout\(5) & ((\SW0~combout\(3)) # ((!\SW0~combout\(4) & \SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~78_combout\);

-- Location: LCCOMB_X36_Y32_N22
\u1|BCD1[0]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~118_combout\ = (\SW0~combout\(1) & ((\u1|BCD1[0]~117_combout\ & (\u1|BCD1[0]~79_combout\)) # (!\u1|BCD1[0]~117_combout\ & ((\u1|BCD1[0]~78_combout\))))) # (!\SW0~combout\(1) & (\u1|BCD1[0]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \u1|BCD1[0]~117_combout\,
	datac => \u1|BCD1[0]~79_combout\,
	datad => \u1|BCD1[0]~78_combout\,
	combout => \u1|BCD1[0]~118_combout\);

-- Location: LCCOMB_X36_Y32_N26
\u1|BCD1[0]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~71_combout\ = (\SW0~combout\(4) & ((\SW0~combout\(5) & ((\SW0~combout\(3)) # (\SW0~combout\(6)))) # (!\SW0~combout\(5) & (!\SW0~combout\(3))))) # (!\SW0~combout\(4) & (\SW0~combout\(5) $ (((\SW0~combout\(3) & \SW0~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~71_combout\);

-- Location: LCCOMB_X36_Y32_N0
\u1|BCD1[0]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~69_combout\ = (\SW0~combout\(5) & (\SW0~combout\(3) $ (((\SW0~combout\(6)) # (!\SW0~combout\(4)))))) # (!\SW0~combout\(5) & ((\SW0~combout\(4) & (!\SW0~combout\(3) & !\SW0~combout\(6))) # (!\SW0~combout\(4) & (\SW0~combout\(3) & 
-- \SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~69_combout\);

-- Location: LCCOMB_X36_Y32_N6
\u1|BCD1[0]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~68_combout\ = (\SW0~combout\(5) & (\SW0~combout\(3) $ (((!\SW0~combout\(4) & \SW0~combout\(6)))))) # (!\SW0~combout\(5) & (\SW0~combout\(4) & (!\SW0~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[0]~68_combout\);

-- Location: LCCOMB_X36_Y32_N24
\u1|BCD1[0]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~115_combout\ = (\SW0~combout\(1) & (((\SW0~combout\(2))))) # (!\SW0~combout\(1) & ((\SW0~combout\(2) & (\u1|BCD1[0]~69_combout\)) # (!\SW0~combout\(2) & ((\u1|BCD1[0]~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datab => \u1|BCD1[0]~69_combout\,
	datac => \SW0~combout\(2),
	datad => \u1|BCD1[0]~68_combout\,
	combout => \u1|BCD1[0]~115_combout\);

-- Location: LCCOMB_X36_Y32_N18
\u1|BCD1[0]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~116_combout\ = (\u1|BCD1[0]~115_combout\ & ((\u1|BCD1[0]~72_combout\) # ((!\SW0~combout\(1))))) # (!\u1|BCD1[0]~115_combout\ & (((\u1|BCD1[0]~71_combout\ & \SW0~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[0]~72_combout\,
	datab => \u1|BCD1[0]~71_combout\,
	datac => \u1|BCD1[0]~115_combout\,
	datad => \SW0~combout\(1),
	combout => \u1|BCD1[0]~116_combout\);

-- Location: LCCOMB_X36_Y32_N30
\u1|BCD1[0]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~156_combout\ = (\SW0~combout\(7) & (\u1|BCD1[0]~118_combout\)) # (!\SW0~combout\(7) & ((\u1|BCD1[0]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \u1|BCD1[0]~118_combout\,
	datad => \u1|BCD1[0]~116_combout\,
	combout => \u1|BCD1[0]~156_combout\);

-- Location: LCCOMB_X35_Y32_N0
\u1|BCD1[0]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[0]~123_combout\ = (\u1|BCD1[0]~122_combout\) # ((\SW0~combout\(8) & ((\u1|BCD1[0]~156_combout\))) # (!\SW0~combout\(8) & (\u1|BCD1[0]~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \u1|BCD1[0]~122_combout\,
	datac => \u1|BCD1[0]~155_combout\,
	datad => \u1|BCD1[0]~156_combout\,
	combout => \u1|BCD1[0]~123_combout\);

-- Location: LCCOMB_X36_Y29_N2
\u1|LessThan45~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan45~1_combout\ = (((\u1|LessThan45~0_combout\ & !\SW0~combout\(5))) # (!\u1|BCD1[1]~119_combout\)) # (!\SW0~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan45~0_combout\,
	datab => \SW0~combout\(8),
	datac => \SW0~combout\(5),
	datad => \u1|BCD1[1]~119_combout\,
	combout => \u1|LessThan45~1_combout\);

-- Location: LCCOMB_X36_Y29_N20
\u1|BCD1~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1~139_combout\ = (\SW0~combout\(6) & (\SW0~combout\(7) & (\SW0~combout\(5) & \SW0~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(6),
	datab => \SW0~combout\(7),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(8),
	combout => \u1|BCD1~139_combout\);

-- Location: LCCOMB_X33_Y29_N24
\u1|BCD1[2]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[2]~83_combout\ = ((!\SW0~combout\(3)) # (!\SW0~combout\(5))) # (!\SW0~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(4),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(3),
	combout => \u1|BCD1[2]~83_combout\);

-- Location: LCCOMB_X36_Y29_N30
\u1|BCD1[2]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[2]~157_combout\ = (((!\SW0~combout\(6) & \u1|BCD1[2]~83_combout\)) # (!\SW0~combout\(8))) # (!\SW0~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(6),
	datab => \SW0~combout\(7),
	datac => \u1|BCD1[2]~83_combout\,
	datad => \SW0~combout\(8),
	combout => \u1|BCD1[2]~157_combout\);

-- Location: LCCOMB_X36_Y29_N22
\u1|BCD1[2]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[2]~140_combout\ = (\u1|BCD1[2]~138_combout\) # ((!\u1|BCD1[2]~157_combout\ & ((\u1|LessThan45~1_combout\) # (!\u1|BCD1~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[2]~138_combout\,
	datab => \u1|LessThan45~1_combout\,
	datac => \u1|BCD1~139_combout\,
	datad => \u1|BCD1[2]~157_combout\,
	combout => \u1|BCD1[2]~140_combout\);

-- Location: LCCOMB_X36_Y29_N0
\u1|BCD1[1]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~124_combout\ = (!\u1|LessThan45~0_combout\ & (\SW0~combout\(8) & (!\SW0~combout\(5) & \u1|BCD1[1]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan45~0_combout\,
	datab => \SW0~combout\(8),
	datac => \SW0~combout\(5),
	datad => \u1|BCD1[1]~119_combout\,
	combout => \u1|BCD1[1]~124_combout\);

-- Location: LCCOMB_X35_Y34_N10
\u1|BCD1[1]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~95_combout\ = (\SW0~combout\(2)) # ((\SW0~combout\(4)) # (\SW0~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~combout\(2),
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|BCD1[1]~95_combout\);

-- Location: LCCOMB_X35_Y31_N14
\u1|BCD1[1]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~158_combout\ = (\SW0~combout\(7) & ((\SW0~combout\(6)) # ((\SW0~combout\(5) & \u1|BCD1[1]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(6),
	datac => \SW0~combout\(7),
	datad => \u1|BCD1[1]~95_combout\,
	combout => \u1|BCD1[1]~158_combout\);

-- Location: LCCOMB_X34_Y31_N28
\u1|LessThan27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan27~0_combout\ = (!\SW0~combout\(5) & (!\SW0~combout\(6) & ((!\SW0~combout\(3)) # (!\SW0~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|LessThan27~0_combout\);

-- Location: LCCOMB_X36_Y32_N20
\u1|LessThan25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan25~4_combout\ = ((\SW0~combout\(5)) # (\SW0~combout\(6))) # (!\u1|LessThan41~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan41~1_combout\,
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|LessThan25~4_combout\);

-- Location: LCCOMB_X35_Y31_N20
\u1|BCD1[1]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~130_combout\ = (!\SW0~combout\(7) & (\u1|LessThan25~4_combout\ & ((\u1|BCD1[1]~159_combout\) # (\u1|LessThan27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[1]~159_combout\,
	datab => \u1|LessThan27~0_combout\,
	datac => \SW0~combout\(7),
	datad => \u1|LessThan25~4_combout\,
	combout => \u1|BCD1[1]~130_combout\);

-- Location: LCCOMB_X35_Y31_N6
\u1|BCD1[1]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~131_combout\ = (\SW0~combout\(8) & (((\u1|BCD1[1]~158_combout\) # (\u1|BCD1[1]~130_combout\)))) # (!\SW0~combout\(8) & (\u1|BCD1[1]~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[1]~129_combout\,
	datab => \u1|BCD1[1]~158_combout\,
	datac => \u1|BCD1[1]~130_combout\,
	datad => \SW0~combout\(8),
	combout => \u1|BCD1[1]~131_combout\);

-- Location: LCCOMB_X35_Y29_N24
\u1|LessThan48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan48~0_combout\ = (!\SW0~combout\(4) & (((!\SW0~combout\(2) & !\SW0~combout\(1))) # (!\SW0~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \SW0~combout\(1),
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan48~0_combout\);

-- Location: LCCOMB_X36_Y29_N28
\u1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (!\SW0~combout\(6) & (\u1|LessThan9~5_combout\ & (!\SW0~combout\(5) & \u1|LessThan48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(6),
	datab => \u1|LessThan9~5_combout\,
	datac => \SW0~combout\(5),
	datad => \u1|LessThan48~0_combout\,
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y29_N14
\u1|BCD1[1]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[1]~132_combout\ = (\u1|BCD1[2]~157_combout\ & (((\u1|BCD1[1]~131_combout\ & !\u1|LessThan0~0_combout\)))) # (!\u1|BCD1[2]~157_combout\ & (\u1|BCD1[1]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[2]~157_combout\,
	datab => \u1|BCD1[1]~124_combout\,
	datac => \u1|BCD1[1]~131_combout\,
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|BCD1[1]~132_combout\);

-- Location: LCCOMB_X35_Y32_N22
\u3|HEX[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|HEX[0]~0_combout\ = (!\u1|BCD1[3]~148_combout\ & (!\u1|BCD1[1]~132_combout\ & (\u1|BCD1[0]~123_combout\ $ (\u1|BCD1[2]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[3]~148_combout\,
	datab => \u1|BCD1[0]~123_combout\,
	datac => \u1|BCD1[2]~140_combout\,
	datad => \u1|BCD1[1]~132_combout\,
	combout => \u3|HEX[0]~0_combout\);

-- Location: LCCOMB_X35_Y32_N16
\u3|HEX[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|HEX[1]~1_combout\ = (!\u1|BCD1[3]~148_combout\ & (\u1|BCD1[2]~140_combout\ & (\u1|BCD1[0]~123_combout\ $ (\u1|BCD1[1]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[3]~148_combout\,
	datab => \u1|BCD1[0]~123_combout\,
	datac => \u1|BCD1[2]~140_combout\,
	datad => \u1|BCD1[1]~132_combout\,
	combout => \u3|HEX[1]~1_combout\);

-- Location: LCCOMB_X35_Y32_N2
\u3|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Decoder0~0_combout\ = (!\u1|BCD1[3]~148_combout\ & (!\u1|BCD1[0]~123_combout\ & (!\u1|BCD1[2]~140_combout\ & \u1|BCD1[1]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[3]~148_combout\,
	datab => \u1|BCD1[0]~123_combout\,
	datac => \u1|BCD1[2]~140_combout\,
	datad => \u1|BCD1[1]~132_combout\,
	combout => \u3|Decoder0~0_combout\);

-- Location: LCCOMB_X35_Y32_N28
\u3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|WideOr3~0_combout\ = (!\u1|BCD1[3]~148_combout\ & ((\u1|BCD1[0]~123_combout\ & (\u1|BCD1[2]~140_combout\ $ (!\u1|BCD1[1]~132_combout\))) # (!\u1|BCD1[0]~123_combout\ & (\u1|BCD1[2]~140_combout\ & !\u1|BCD1[1]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[3]~148_combout\,
	datab => \u1|BCD1[0]~123_combout\,
	datac => \u1|BCD1[2]~140_combout\,
	datad => \u1|BCD1[1]~132_combout\,
	combout => \u3|WideOr3~0_combout\);

-- Location: LCCOMB_X35_Y32_N6
\u3|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|WideOr2~0_combout\ = (\u1|BCD1[1]~132_combout\ & (!\u1|BCD1[3]~148_combout\ & (\u1|BCD1[0]~123_combout\))) # (!\u1|BCD1[1]~132_combout\ & ((\u1|BCD1[2]~140_combout\ & (!\u1|BCD1[3]~148_combout\)) # (!\u1|BCD1[2]~140_combout\ & 
-- ((\u1|BCD1[0]~123_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[3]~148_combout\,
	datab => \u1|BCD1[0]~123_combout\,
	datac => \u1|BCD1[2]~140_combout\,
	datad => \u1|BCD1[1]~132_combout\,
	combout => \u3|WideOr2~0_combout\);

-- Location: LCCOMB_X35_Y32_N8
\u3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|WideOr1~0_combout\ = (!\u1|BCD1[3]~148_combout\ & ((\u1|BCD1[0]~123_combout\ & ((\u1|BCD1[1]~132_combout\) # (!\u1|BCD1[2]~140_combout\))) # (!\u1|BCD1[0]~123_combout\ & (!\u1|BCD1[2]~140_combout\ & \u1|BCD1[1]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[3]~148_combout\,
	datab => \u1|BCD1[0]~123_combout\,
	datac => \u1|BCD1[2]~140_combout\,
	datad => \u1|BCD1[1]~132_combout\,
	combout => \u3|WideOr1~0_combout\);

-- Location: LCCOMB_X35_Y32_N10
\u3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|WideOr0~0_combout\ = (\u1|BCD1[2]~140_combout\ & (!\u1|BCD1[3]~148_combout\ & ((!\u1|BCD1[1]~132_combout\) # (!\u1|BCD1[0]~123_combout\)))) # (!\u1|BCD1[2]~140_combout\ & (\u1|BCD1[3]~148_combout\ $ (((\u1|BCD1[1]~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD1[3]~148_combout\,
	datab => \u1|BCD1[0]~123_combout\,
	datac => \u1|BCD1[2]~140_combout\,
	datad => \u1|BCD1[1]~132_combout\,
	combout => \u3|WideOr0~0_combout\);

-- Location: LCCOMB_X33_Y30_N30
\u1|BCD0[2]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~96_combout\ = (\SW0~combout\(8) & (\SW0~combout\(6) $ (((\SW0~combout\(5)) # (!\SW0~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \SW0~combout\(8),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[2]~96_combout\);

-- Location: LCCOMB_X33_Y30_N22
\u1|BCD0[2]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~100_combout\ = (\SW0~combout\(5) & (\SW0~combout\(6) & (\SW0~combout\(7) $ (\SW0~combout\(8))))) # (!\SW0~combout\(5) & (\SW0~combout\(7) & (\SW0~combout\(8) $ (\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \SW0~combout\(8),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[2]~100_combout\);

-- Location: LCCOMB_X33_Y30_N0
\u1|BCD0[2]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~99_combout\ = (\SW0~combout\(4) & (\u1|BCD0[2]~96_combout\)) # (!\SW0~combout\(4) & ((\u1|BCD0[2]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0[2]~96_combout\,
	datac => \SW0~combout\(4),
	datad => \u1|BCD0[2]~100_combout\,
	combout => \u1|BCD0[2]~99_combout\);

-- Location: LCCOMB_X33_Y30_N24
\u1|BCD0[2]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~106_combout\ = (\SW0~combout\(3) & ((\u1|BCD0[2]~99_combout\))) # (!\SW0~combout\(3) & (\u1|BCD0[2]~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~107_combout\,
	datab => \u1|BCD0[2]~99_combout\,
	datad => \SW0~combout\(3),
	combout => \u1|BCD0[2]~106_combout\);

-- Location: LCCOMB_X33_Y30_N8
\u1|BCD0[2]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~93_combout\ = (\SW0~combout\(5) & (\SW0~combout\(7) & (\SW0~combout\(8) $ (\SW0~combout\(6))))) # (!\SW0~combout\(5) & (((\SW0~combout\(8) & !\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \SW0~combout\(8),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[2]~93_combout\);

-- Location: LCCOMB_X33_Y30_N16
\u1|BCD0[2]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~97_combout\ = (\SW0~combout\(8) & (\SW0~combout\(6) & ((\SW0~combout\(5)) # (!\SW0~combout\(7))))) # (!\SW0~combout\(8) & (\SW0~combout\(7) & (\SW0~combout\(5) $ (\SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \SW0~combout\(8),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[2]~97_combout\);

-- Location: LCCOMB_X33_Y30_N12
\u1|BCD0[2]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~190_combout\ = (\u1|BCD0[2]~189_combout\ & ((\u1|BCD0[2]~93_combout\) # ((!\SW0~combout\(3))))) # (!\u1|BCD0[2]~189_combout\ & (((\u1|BCD0[2]~97_combout\ & \SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~189_combout\,
	datab => \u1|BCD0[2]~93_combout\,
	datac => \u1|BCD0[2]~97_combout\,
	datad => \SW0~combout\(3),
	combout => \u1|BCD0[2]~190_combout\);

-- Location: LCCOMB_X34_Y30_N14
\u1|BCD0[2]~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~192_combout\ = (\u1|BCD0[2]~191_combout\ & (((\u1|BCD0[2]~190_combout\) # (!\SW0~combout\(2))))) # (!\u1|BCD0[2]~191_combout\ & (\u1|BCD0[2]~106_combout\ & (\SW0~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~191_combout\,
	datab => \u1|BCD0[2]~106_combout\,
	datac => \SW0~combout\(2),
	datad => \u1|BCD0[2]~190_combout\,
	combout => \u1|BCD0[2]~192_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW0[0]~I\ : cycloneii_io
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
	padio => ww_SW0(0),
	combout => \SW0~combout\(0));

-- Location: LCCOMB_X35_Y29_N20
\u1|LessThan34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan34~0_combout\ = (\SW0~combout\(2) & (\SW0~combout\(1) & (\SW0~combout\(4) & \SW0~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \SW0~combout\(1),
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan34~0_combout\);

-- Location: LCCOMB_X35_Y29_N22
\u1|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan2~0_combout\ = (!\SW0~combout\(5) & (\u1|LessThan9~5_combout\ & (!\u1|LessThan34~0_combout\ & !\SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \u1|LessThan9~5_combout\,
	datac => \u1|LessThan34~0_combout\,
	datad => \SW0~combout\(6),
	combout => \u1|LessThan2~0_combout\);

-- Location: LCCOMB_X35_Y30_N14
\u1|BCD0[0]~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[0]~206_combout\ = (!\u1|LessThan0~0_combout\ & (\u1|LessThan2~0_combout\ & ((!\u1|LessThan9~5_combout\) # (!\u1|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~3_combout\,
	datab => \u1|LessThan9~5_combout\,
	datac => \u1|LessThan0~0_combout\,
	datad => \u1|LessThan2~0_combout\,
	combout => \u1|BCD0[0]~206_combout\);

-- Location: LCCOMB_X35_Y30_N26
\u1|BCD0[2]~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~210_combout\ = (\u1|BCD0[0]~206_combout\ & (\SW0~combout\(2) $ (((\SW0~combout\(0)) # (\SW0~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \SW0~combout\(0),
	datac => \u1|BCD0[0]~206_combout\,
	datad => \SW0~combout\(1),
	combout => \u1|BCD0[2]~210_combout\);

-- Location: LCCOMB_X34_Y32_N12
\u1|BCD0~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~158_combout\ = (\SW0~combout\(5) & ((\SW0~combout\(2)) # ((\SW0~combout\(4)) # (\SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(3),
	combout => \u1|BCD0~158_combout\);

-- Location: LCCOMB_X34_Y32_N2
\u1|BCD0~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~236_combout\ = (\SW0~combout\(8)) # ((\SW0~combout\(7)) # ((\SW0~combout\(6) & \u1|BCD0~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(7),
	datac => \SW0~combout\(6),
	datad => \u1|BCD0~158_combout\,
	combout => \u1|BCD0~236_combout\);

-- Location: LCCOMB_X35_Y29_N18
\u1|LessThan20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan20~2_combout\ = (!\SW0~combout\(2) & (!\SW0~combout\(1) & !\SW0~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(2),
	datab => \SW0~combout\(1),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan20~2_combout\);

-- Location: LCCOMB_X35_Y31_N30
\u1|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan4~3_combout\ = (!\SW0~combout\(6) & (((\u1|LessThan20~2_combout\) # (!\SW0~combout\(4))) # (!\SW0~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \u1|LessThan20~2_combout\,
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(6),
	combout => \u1|LessThan4~3_combout\);

-- Location: LCCOMB_X36_Y31_N24
\u1|LessThan37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan37~0_combout\ = (\SW0~combout\(4) & (\SW0~combout\(5) & (\SW0~combout\(2) & \SW0~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(4),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(3),
	combout => \u1|LessThan37~0_combout\);

-- Location: LCCOMB_X35_Y31_N12
\u1|LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan5~2_combout\ = (!\SW0~combout\(8) & (!\u1|LessThan37~0_combout\ & (!\SW0~combout\(7) & !\SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \u1|LessThan37~0_combout\,
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|LessThan5~2_combout\);

-- Location: LCCOMB_X35_Y31_N28
\u1|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan3~0_combout\ = (!\SW0~combout\(6) & (((!\SW0~combout\(3) & !\SW0~combout\(4))) # (!\SW0~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(3),
	datac => \SW0~combout\(4),
	datad => \SW0~combout\(6),
	combout => \u1|LessThan3~0_combout\);

-- Location: LCCOMB_X35_Y31_N4
\u1|BCD0[1]~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~202_combout\ = (!\u1|LessThan5~2_combout\ & (((!\u1|LessThan4~3_combout\ & !\u1|LessThan3~0_combout\)) # (!\u1|LessThan9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan9~5_combout\,
	datab => \u1|LessThan4~3_combout\,
	datac => \u1|LessThan5~2_combout\,
	datad => \u1|LessThan3~0_combout\,
	combout => \u1|BCD0[1]~202_combout\);

-- Location: LCCOMB_X33_Y29_N4
\u1|BCD2[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD2[0]~15_combout\ = (\SW0~combout\(6) & (((\SW0~combout\(5)) # (!\u1|LessThan41~0_combout\)) # (!\u1|LessThan46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan46~0_combout\,
	datab => \u1|LessThan41~0_combout\,
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD2[0]~15_combout\);

-- Location: LCCOMB_X36_Y30_N18
\u1|BCD0~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~231_combout\ = (!\SW0~combout\(7) & (\u1|BCD0[1]~202_combout\ & (!\u1|BCD2[0]~15_combout\ & !\SW0~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \u1|BCD0[1]~202_combout\,
	datac => \u1|BCD2[0]~15_combout\,
	datad => \SW0~combout\(8),
	combout => \u1|BCD0~231_combout\);

-- Location: LCCOMB_X36_Y29_N6
\u1|BCD1[2]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD1[2]~137_combout\ = ((\SW0~combout\(6)) # ((!\u1|LessThan41~0_combout\ & \SW0~combout\(5)))) # (!\u1|LessThan9~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan41~0_combout\,
	datab => \u1|LessThan9~5_combout\,
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|BCD1[2]~137_combout\);

-- Location: LCCOMB_X36_Y30_N28
\u1|BCD0~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~217_combout\ = (\SW0~combout\(2) & (\u1|BCD0~216_combout\ & ((\u1|BCD1[2]~137_combout\)))) # (!\SW0~combout\(2) & (((\u1|BCD0~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~216_combout\,
	datab => \u1|BCD0~231_combout\,
	datac => \u1|BCD1[2]~137_combout\,
	datad => \SW0~combout\(2),
	combout => \u1|BCD0~217_combout\);

-- Location: LCCOMB_X36_Y31_N18
\u1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = \SW0~combout\(1) $ (\SW0~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datac => \SW0~combout\(2),
	combout => \u1|Add0~0_combout\);

-- Location: LCCOMB_X36_Y30_N4
\u1|BCD0~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~213_combout\ = (!\u1|LessThan4~2_combout\ & (\u1|BCD1[2]~137_combout\ & (\SW0~combout\(2) $ (!\SW0~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan4~2_combout\,
	datab => \SW0~combout\(2),
	datac => \u1|BCD1[2]~137_combout\,
	datad => \SW0~combout\(1),
	combout => \u1|BCD0~213_combout\);

-- Location: LCCOMB_X33_Y29_N0
\u1|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan7~0_combout\ = (\SW0~combout\(6) & ((\SW0~combout\(4)) # (\SW0~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(4),
	datac => \SW0~combout\(5),
	datad => \SW0~combout\(6),
	combout => \u1|LessThan7~0_combout\);

-- Location: LCCOMB_X36_Y30_N14
\u1|BCD0~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~229_combout\ = (\SW0~combout\(7)) # ((\SW0~combout\(8)) # ((\u1|BCD2[0]~15_combout\ & \u1|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(7),
	datab => \u1|BCD2[0]~15_combout\,
	datac => \u1|LessThan7~0_combout\,
	datad => \SW0~combout\(8),
	combout => \u1|BCD0~229_combout\);

-- Location: LCCOMB_X36_Y30_N30
\u1|LessThan9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|LessThan9~6_combout\ = (!\SW0~combout\(8) & (!\SW0~combout\(7) & ((\u1|LessThan41~1_combout\) # (!\u1|LessThan9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \u1|LessThan41~1_combout\,
	datac => \SW0~combout\(7),
	datad => \u1|LessThan9~4_combout\,
	combout => \u1|LessThan9~6_combout\);

-- Location: LCCOMB_X36_Y30_N10
\u1|BCD0~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~212_combout\ = (\u1|LessThan5~2_combout\) # ((!\u1|LessThan8~2_combout\ & (\u1|BCD0~229_combout\ & \u1|LessThan9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan8~2_combout\,
	datab => \u1|LessThan5~2_combout\,
	datac => \u1|BCD0~229_combout\,
	datad => \u1|LessThan9~6_combout\,
	combout => \u1|BCD0~212_combout\);

-- Location: LCCOMB_X36_Y30_N16
\u1|BCD0~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~215_combout\ = (\u1|BCD0~214_combout\ & ((\u1|Add0~0_combout\) # ((\u1|BCD0~213_combout\ & \u1|BCD0~212_combout\)))) # (!\u1|BCD0~214_combout\ & (((\u1|BCD0~213_combout\ & \u1|BCD0~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~214_combout\,
	datab => \u1|Add0~0_combout\,
	datac => \u1|BCD0~213_combout\,
	datad => \u1|BCD0~212_combout\,
	combout => \u1|BCD0~215_combout\);

-- Location: LCCOMB_X34_Y30_N28
\u1|BCD0[2]~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~218_combout\ = (\u1|BCD0[1]~211_combout\ & ((\u1|BCD0~236_combout\) # ((\u1|BCD0~217_combout\) # (\u1|BCD0~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[1]~211_combout\,
	datab => \u1|BCD0~236_combout\,
	datac => \u1|BCD0~217_combout\,
	datad => \u1|BCD0~215_combout\,
	combout => \u1|BCD0[2]~218_combout\);

-- Location: LCCOMB_X34_Y30_N12
\u1|BCD0[2]~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[2]~225_combout\ = (\u1|BCD0[2]~224_combout\) # ((\u1|BCD0[2]~210_combout\) # ((\u1|BCD0[2]~192_combout\ & \u1|BCD0[2]~218_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~224_combout\,
	datab => \u1|BCD0[2]~192_combout\,
	datac => \u1|BCD0[2]~210_combout\,
	datad => \u1|BCD0[2]~218_combout\,
	combout => \u1|BCD0[2]~225_combout\);

-- Location: LCCOMB_X35_Y30_N28
\u1|BCD0[1]~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~200_combout\ = (!\u1|LessThan2~0_combout\ & (((!\u1|LessThan4~2_combout\ & \u1|LessThan5~2_combout\)) # (!\u1|BCD1[2]~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan4~2_combout\,
	datab => \u1|LessThan2~0_combout\,
	datac => \u1|LessThan5~2_combout\,
	datad => \u1|BCD1[2]~137_combout\,
	combout => \u1|BCD0[1]~200_combout\);

-- Location: LCCOMB_X35_Y30_N30
\u1|BCD0[1]~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~201_combout\ = (!\u1|LessThan0~0_combout\ & (!\SW0~combout\(1) & ((\u1|LessThan1~4_combout\) # (\u1|BCD0[1]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~4_combout\,
	datab => \u1|BCD0[1]~200_combout\,
	datac => \u1|LessThan0~0_combout\,
	datad => \SW0~combout\(1),
	combout => \u1|BCD0[1]~201_combout\);

-- Location: LCCOMB_X35_Y30_N0
\u1|BCD0[1]~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~207_combout\ = (\SW0~combout\(1) & ((\u1|BCD0[1]~205_combout\) # ((\u1|BCD0[0]~206_combout\ & \SW0~combout\(0))))) # (!\SW0~combout\(1) & (((\u1|BCD0[0]~206_combout\ & !\SW0~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[1]~205_combout\,
	datab => \u1|BCD0[0]~206_combout\,
	datac => \SW0~combout\(0),
	datad => \SW0~combout\(1),
	combout => \u1|BCD0[1]~207_combout\);

-- Location: LCCOMB_X34_Y31_N30
\u1|BCD0~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~137_combout\ = (\SW0~combout\(5) & (\SW0~combout\(1) $ (((!\SW0~combout\(2) & \SW0~combout\(6)))))) # (!\SW0~combout\(5) & (\SW0~combout\(1) & ((!\SW0~combout\(6)) # (!\SW0~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(1),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~137_combout\);

-- Location: LCCOMB_X34_Y31_N2
\u1|BCD0~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~195_combout\ = (\SW0~combout\(4) & ((\u1|BCD0~138_combout\) # ((\SW0~combout\(3))))) # (!\SW0~combout\(4) & (((!\SW0~combout\(3) & \u1|BCD0~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~138_combout\,
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \u1|BCD0~137_combout\,
	combout => \u1|BCD0~195_combout\);

-- Location: LCCOMB_X34_Y31_N26
\u1|BCD0~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~140_combout\ = (\SW0~combout\(5) & (\SW0~combout\(1) & ((!\SW0~combout\(6)) # (!\SW0~combout\(2))))) # (!\SW0~combout\(5) & (\SW0~combout\(1) $ (((\SW0~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(1),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~140_combout\);

-- Location: LCCOMB_X34_Y31_N4
\u1|BCD0~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~196_combout\ = (\u1|BCD0~195_combout\ & ((\u1|BCD0~141_combout\) # ((!\SW0~combout\(3))))) # (!\u1|BCD0~195_combout\ & (((\SW0~combout\(3) & \u1|BCD0~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~141_combout\,
	datab => \u1|BCD0~195_combout\,
	datac => \SW0~combout\(3),
	datad => \u1|BCD0~140_combout\,
	combout => \u1|BCD0~196_combout\);

-- Location: LCCOMB_X34_Y32_N4
\u1|BCD0~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~234_combout\ = (!\SW0~combout\(8) & (!\SW0~combout\(7) & \u1|BCD0~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(7),
	datac => \u1|BCD0~196_combout\,
	combout => \u1|BCD0~234_combout\);

-- Location: LCCOMB_X34_Y30_N24
\u1|BCD0[1]~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~208_combout\ = (\u1|BCD0[1]~207_combout\) # ((\u1|BCD0[1]~204_combout\ & \u1|BCD0~234_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[1]~204_combout\,
	datab => \u1|BCD0[1]~207_combout\,
	datac => \u1|BCD0~234_combout\,
	combout => \u1|BCD0[1]~208_combout\);

-- Location: LCCOMB_X35_Y34_N8
\u1|BCD0[1]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~61_combout\ = (\SW0~combout\(8) & ((\SW0~combout\(5) & (\SW0~combout\(7) $ (\SW0~combout\(6)))) # (!\SW0~combout\(5) & (!\SW0~combout\(7) & !\SW0~combout\(6))))) # (!\SW0~combout\(8) & (!\SW0~combout\(5) & (\SW0~combout\(7) & 
-- \SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[1]~61_combout\);

-- Location: LCCOMB_X35_Y34_N26
\u1|BCD0[1]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~75_combout\ = (\SW0~combout\(1) & ((\u1|BCD0[1]~61_combout\))) # (!\SW0~combout\(1) & (\u1|BCD0[1]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[1]~69_combout\,
	datab => \u1|BCD0[1]~61_combout\,
	datac => \SW0~combout\(1),
	combout => \u1|BCD0[1]~75_combout\);

-- Location: LCCOMB_X35_Y34_N6
\u1|BCD0[1]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~74_combout\ = (\SW0~combout\(2) & (\u1|BCD0[1]~78_combout\)) # (!\SW0~combout\(2) & ((\u1|BCD0[1]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[1]~78_combout\,
	datab => \u1|BCD0[1]~75_combout\,
	datac => \SW0~combout\(2),
	combout => \u1|BCD0[1]~74_combout\);

-- Location: LCCOMB_X35_Y34_N14
\u1|BCD0[1]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~64_combout\ = (\SW0~combout\(5) & (\SW0~combout\(8) & (!\SW0~combout\(7)))) # (!\SW0~combout\(5) & (\SW0~combout\(7) & ((\SW0~combout\(6)) # (!\SW0~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(8),
	datab => \SW0~combout\(5),
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0[1]~64_combout\);

-- Location: LCCOMB_X35_Y34_N2
\u1|BCD0[1]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~63_combout\ = (\SW0~combout\(1) & (\u1|BCD0[1]~65_combout\)) # (!\SW0~combout\(1) & ((\u1|BCD0[1]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[1]~65_combout\,
	datab => \u1|BCD0[1]~64_combout\,
	datac => \SW0~combout\(1),
	combout => \u1|BCD0[1]~63_combout\);

-- Location: LCCOMB_X35_Y34_N16
\u1|BCD0[1]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~81_combout\ = (\SW0~combout\(2) & ((\u1|BCD0[1]~75_combout\))) # (!\SW0~combout\(2) & (\u1|BCD0[1]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0[1]~63_combout\,
	datac => \SW0~combout\(2),
	datad => \u1|BCD0[1]~75_combout\,
	combout => \u1|BCD0[1]~81_combout\);

-- Location: LCCOMB_X35_Y34_N22
\u1|BCD0[1]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~188_combout\ = (\u1|BCD0[1]~187_combout\ & (((\u1|BCD0[1]~81_combout\) # (!\SW0~combout\(3))))) # (!\u1|BCD0[1]~187_combout\ & (\u1|BCD0[1]~74_combout\ & ((\SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[1]~187_combout\,
	datab => \u1|BCD0[1]~74_combout\,
	datac => \u1|BCD0[1]~81_combout\,
	datad => \SW0~combout\(3),
	combout => \u1|BCD0[1]~188_combout\);

-- Location: LCCOMB_X34_Y30_N26
\u1|BCD0[1]~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~209_combout\ = (\u1|BCD0[1]~201_combout\) # ((\u1|BCD0[1]~208_combout\) # ((\u1|BCD0[1]~204_combout\ & \u1|BCD0[1]~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[1]~204_combout\,
	datab => \u1|BCD0[1]~201_combout\,
	datac => \u1|BCD0[1]~208_combout\,
	datad => \u1|BCD0[1]~188_combout\,
	combout => \u1|BCD0[1]~209_combout\);

-- Location: LCCOMB_X34_Y31_N8
\u1|BCD0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~126_combout\ = (\SW0~combout\(3) & (!\SW0~combout\(6) & ((\SW0~combout\(4)) # (!\SW0~combout\(5))))) # (!\SW0~combout\(3) & (\SW0~combout\(5) & (!\SW0~combout\(4) & \SW0~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~126_combout\);

-- Location: LCCOMB_X34_Y31_N22
\u1|BCD0~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~193_combout\ = (\SW0~combout\(2) & (((\SW0~combout\(1))))) # (!\SW0~combout\(2) & ((\SW0~combout\(1) & ((\u1|BCD0~126_combout\))) # (!\SW0~combout\(1) & (\u1|BCD0~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~125_combout\,
	datab => \u1|BCD0~126_combout\,
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(1),
	combout => \u1|BCD0~193_combout\);

-- Location: LCCOMB_X34_Y31_N18
\u1|BCD0~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~128_combout\ = (!\SW0~combout\(5) & ((\SW0~combout\(3) & ((!\SW0~combout\(6)))) # (!\SW0~combout\(3) & (!\SW0~combout\(4) & \SW0~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(5),
	datab => \SW0~combout\(4),
	datac => \SW0~combout\(3),
	datad => \SW0~combout\(6),
	combout => \u1|BCD0~128_combout\);

-- Location: LCCOMB_X34_Y31_N16
\u1|BCD0~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~194_combout\ = (\u1|BCD0~193_combout\ & ((\u1|BCD0~129_combout\) # ((!\SW0~combout\(2))))) # (!\u1|BCD0~193_combout\ & (((\SW0~combout\(2) & \u1|BCD0~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~129_combout\,
	datab => \u1|BCD0~193_combout\,
	datac => \SW0~combout\(2),
	datad => \u1|BCD0~128_combout\,
	combout => \u1|BCD0~194_combout\);

-- Location: LCCOMB_X34_Y29_N16
\u1|BCD0~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0~233_combout\ = (\u1|BCD0~194_combout\ & (!\SW0~combout\(7) & !\SW0~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|BCD0~194_combout\,
	datac => \SW0~combout\(7),
	datad => \SW0~combout\(8),
	combout => \u1|BCD0~233_combout\);

-- Location: LCCOMB_X35_Y30_N22
\u1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~1_combout\ = \SW0~combout\(3) $ (((\SW0~combout\(1)) # (\SW0~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~combout\(1),
	datac => \SW0~combout\(2),
	datad => \SW0~combout\(3),
	combout => \u1|Add0~1_combout\);

-- Location: LCCOMB_X35_Y30_N8
\u1|BCD0[3]~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[3]~226_combout\ = (\u1|LessThan0~0_combout\ & (((\SW0~combout\(3))))) # (!\u1|LessThan0~0_combout\ & (\u1|LessThan1~4_combout\ & (\u1|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~4_combout\,
	datab => \u1|Add0~1_combout\,
	datac => \u1|LessThan0~0_combout\,
	datad => \SW0~combout\(3),
	combout => \u1|BCD0[3]~226_combout\);

-- Location: LCCOMB_X35_Y30_N10
\u1|BCD0[3]~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[3]~227_combout\ = (\u1|BCD0[3]~226_combout\) # ((\u1|BCD0[0]~206_combout\ & (\u1|LessThan1~2_combout\ $ (\SW0~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~2_combout\,
	datab => \u1|BCD0[0]~206_combout\,
	datac => \u1|BCD0[3]~226_combout\,
	datad => \SW0~combout\(3),
	combout => \u1|BCD0[3]~227_combout\);

-- Location: LCCOMB_X35_Y30_N4
\u1|BCD0[1]~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[1]~211_combout\ = (!\u1|LessThan0~0_combout\ & (!\u1|LessThan2~0_combout\ & ((!\u1|LessThan9~5_combout\) # (!\u1|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~3_combout\,
	datab => \u1|LessThan9~5_combout\,
	datac => \u1|LessThan0~0_combout\,
	datad => \u1|LessThan2~0_combout\,
	combout => \u1|BCD0[1]~211_combout\);

-- Location: LCCOMB_X34_Y30_N6
\u1|BCD0[3]~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[3]~228_combout\ = (\u1|BCD0[3]~227_combout\) # ((\u1|BCD0[1]~211_combout\ & ((\u1|BCD0~186_combout\) # (\u1|BCD0~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0~186_combout\,
	datab => \u1|BCD0~233_combout\,
	datac => \u1|BCD0[3]~227_combout\,
	datad => \u1|BCD0[1]~211_combout\,
	combout => \u1|BCD0[3]~228_combout\);

-- Location: LCCOMB_X35_Y30_N18
\u1|BCD0[0]~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|BCD0[0]~199_combout\ = \SW0~combout\(0) $ (((!\u1|LessThan1~4_combout\ & (!\u1|LessThan0~0_combout\ & \u1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~4_combout\,
	datab => \u1|LessThan0~0_combout\,
	datac => \SW0~combout\(0),
	datad => \u1|LessThan2~0_combout\,
	combout => \u1|BCD0[0]~199_combout\);

-- Location: LCCOMB_X34_Y30_N8
\u4|HEX[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|HEX[0]~0_combout\ = (!\u1|BCD0[1]~209_combout\ & (!\u1|BCD0[3]~228_combout\ & (\u1|BCD0[2]~225_combout\ $ (\u1|BCD0[0]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~225_combout\,
	datab => \u1|BCD0[1]~209_combout\,
	datac => \u1|BCD0[3]~228_combout\,
	datad => \u1|BCD0[0]~199_combout\,
	combout => \u4|HEX[0]~0_combout\);

-- Location: LCCOMB_X34_Y30_N18
\u4|HEX[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|HEX[1]~1_combout\ = (\u1|BCD0[2]~225_combout\ & (!\u1|BCD0[3]~228_combout\ & (\u1|BCD0[1]~209_combout\ $ (\u1|BCD0[0]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~225_combout\,
	datab => \u1|BCD0[1]~209_combout\,
	datac => \u1|BCD0[3]~228_combout\,
	datad => \u1|BCD0[0]~199_combout\,
	combout => \u4|HEX[1]~1_combout\);

-- Location: LCCOMB_X34_Y30_N4
\u4|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Decoder0~0_combout\ = (!\u1|BCD0[2]~225_combout\ & (\u1|BCD0[1]~209_combout\ & (!\u1|BCD0[3]~228_combout\ & !\u1|BCD0[0]~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~225_combout\,
	datab => \u1|BCD0[1]~209_combout\,
	datac => \u1|BCD0[3]~228_combout\,
	datad => \u1|BCD0[0]~199_combout\,
	combout => \u4|Decoder0~0_combout\);

-- Location: LCCOMB_X34_Y30_N22
\u4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|WideOr3~0_combout\ = (!\u1|BCD0[3]~228_combout\ & ((\u1|BCD0[2]~225_combout\ & (\u1|BCD0[1]~209_combout\ $ (!\u1|BCD0[0]~199_combout\))) # (!\u1|BCD0[2]~225_combout\ & (!\u1|BCD0[1]~209_combout\ & \u1|BCD0[0]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~225_combout\,
	datab => \u1|BCD0[1]~209_combout\,
	datac => \u1|BCD0[3]~228_combout\,
	datad => \u1|BCD0[0]~199_combout\,
	combout => \u4|WideOr3~0_combout\);

-- Location: LCCOMB_X34_Y30_N0
\u4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|WideOr2~0_combout\ = (\u1|BCD0[1]~209_combout\ & (((!\u1|BCD0[3]~228_combout\ & \u1|BCD0[0]~199_combout\)))) # (!\u1|BCD0[1]~209_combout\ & ((\u1|BCD0[2]~225_combout\ & (!\u1|BCD0[3]~228_combout\)) # (!\u1|BCD0[2]~225_combout\ & 
-- ((\u1|BCD0[0]~199_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~225_combout\,
	datab => \u1|BCD0[1]~209_combout\,
	datac => \u1|BCD0[3]~228_combout\,
	datad => \u1|BCD0[0]~199_combout\,
	combout => \u4|WideOr2~0_combout\);

-- Location: LCCOMB_X34_Y30_N2
\u4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|WideOr1~0_combout\ = (!\u1|BCD0[3]~228_combout\ & ((\u1|BCD0[2]~225_combout\ & (\u1|BCD0[1]~209_combout\ & \u1|BCD0[0]~199_combout\)) # (!\u1|BCD0[2]~225_combout\ & ((\u1|BCD0[1]~209_combout\) # (\u1|BCD0[0]~199_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~225_combout\,
	datab => \u1|BCD0[1]~209_combout\,
	datac => \u1|BCD0[3]~228_combout\,
	datad => \u1|BCD0[0]~199_combout\,
	combout => \u4|WideOr1~0_combout\);

-- Location: LCCOMB_X34_Y30_N20
\u4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|WideOr0~0_combout\ = (\u1|BCD0[2]~225_combout\ & (!\u1|BCD0[3]~228_combout\ & ((!\u1|BCD0[0]~199_combout\) # (!\u1|BCD0[1]~209_combout\)))) # (!\u1|BCD0[2]~225_combout\ & (\u1|BCD0[1]~209_combout\ $ ((\u1|BCD0[3]~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|BCD0[2]~225_combout\,
	datab => \u1|BCD0[1]~209_combout\,
	datac => \u1|BCD0[3]~228_combout\,
	datad => \u1|BCD0[0]~199_combout\,
	combout => \u4|WideOr0~0_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
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
	datain => \u2|ALT_INV_HEX[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
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
	datain => \u2|HEX[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
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
	datain => \u2|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
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
	datain => \u2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
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
	datain => \u2|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
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
	datain => \u2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
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
	datain => \u2|WideOr0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[7]~I\ : cycloneii_io
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
	padio => ww_HEX2(7));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => \u3|HEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => \u3|HEX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => \u3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => \u3|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => \u3|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => \u3|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => \u3|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[7]~I\ : cycloneii_io
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
	padio => ww_HEX1(7));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u4|HEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u4|HEX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u4|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u4|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u4|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u4|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


