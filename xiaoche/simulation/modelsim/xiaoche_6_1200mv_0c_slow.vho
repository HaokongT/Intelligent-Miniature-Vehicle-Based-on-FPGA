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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "09/01/2025 17:16:01"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	xiaoche IS
    PORT (
	trig1 : OUT std_logic;
	trig2 : OUT std_logic;
	trig3 : OUT std_logic;
	echo1 : IN std_logic;
	echo2 : IN std_logic;
	echo3 : IN std_logic;
	left1 : OUT std_logic_vector(3 DOWNTO 0);
	left2 : OUT std_logic_vector(3 DOWNTO 0);
	right1 : OUT std_logic_vector(3 DOWNTO 0);
	right2 : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic
	);
END xiaoche;

-- Design Ports Information
-- trig1	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trig2	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trig3	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left1[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left1[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left1[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left1[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left2[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left2[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left2[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left2[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right1[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right1[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right1[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right2[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right2[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right2[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right2[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- echo1	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- echo2	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- echo3	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF xiaoche IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_trig1 : std_logic;
SIGNAL ww_trig2 : std_logic;
SIGNAL ww_trig3 : std_logic;
SIGNAL ww_echo1 : std_logic;
SIGNAL ww_echo2 : std_logic;
SIGNAL ww_echo3 : std_logic;
SIGNAL ww_left1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_left2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_right1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_right2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \trig1~output_o\ : std_logic;
SIGNAL \trig2~output_o\ : std_logic;
SIGNAL \trig3~output_o\ : std_logic;
SIGNAL \left1[0]~output_o\ : std_logic;
SIGNAL \left1[1]~output_o\ : std_logic;
SIGNAL \left1[2]~output_o\ : std_logic;
SIGNAL \left1[3]~output_o\ : std_logic;
SIGNAL \left2[0]~output_o\ : std_logic;
SIGNAL \left2[1]~output_o\ : std_logic;
SIGNAL \left2[2]~output_o\ : std_logic;
SIGNAL \left2[3]~output_o\ : std_logic;
SIGNAL \right1[0]~output_o\ : std_logic;
SIGNAL \right1[1]~output_o\ : std_logic;
SIGNAL \right1[2]~output_o\ : std_logic;
SIGNAL \right1[3]~output_o\ : std_logic;
SIGNAL \right2[0]~output_o\ : std_logic;
SIGNAL \right2[1]~output_o\ : std_logic;
SIGNAL \right2[2]~output_o\ : std_logic;
SIGNAL \right2[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \echo1~input_o\ : std_logic;
SIGNAL \time1[0]~32_combout\ : std_logic;
SIGNAL \current_state1.COUNTING~feeder_combout\ : std_logic;
SIGNAL \current_state1.COUNTING~q\ : std_logic;
SIGNAL \time1[0]~33\ : std_logic;
SIGNAL \time1[1]~34_combout\ : std_logic;
SIGNAL \time1[1]~35\ : std_logic;
SIGNAL \time1[2]~36_combout\ : std_logic;
SIGNAL \time1[2]~37\ : std_logic;
SIGNAL \time1[3]~38_combout\ : std_logic;
SIGNAL \time1[3]~39\ : std_logic;
SIGNAL \time1[4]~40_combout\ : std_logic;
SIGNAL \time1[4]~41\ : std_logic;
SIGNAL \time1[5]~42_combout\ : std_logic;
SIGNAL \time1[5]~43\ : std_logic;
SIGNAL \time1[6]~44_combout\ : std_logic;
SIGNAL \time1[6]~45\ : std_logic;
SIGNAL \time1[7]~46_combout\ : std_logic;
SIGNAL \time1[7]~47\ : std_logic;
SIGNAL \time1[8]~48_combout\ : std_logic;
SIGNAL \time1[8]~49\ : std_logic;
SIGNAL \time1[9]~50_combout\ : std_logic;
SIGNAL \time1[9]~51\ : std_logic;
SIGNAL \time1[10]~52_combout\ : std_logic;
SIGNAL \time1[10]~53\ : std_logic;
SIGNAL \time1[11]~54_combout\ : std_logic;
SIGNAL \time1[11]~55\ : std_logic;
SIGNAL \time1[12]~56_combout\ : std_logic;
SIGNAL \time1[12]~57\ : std_logic;
SIGNAL \time1[13]~58_combout\ : std_logic;
SIGNAL \time1[13]~59\ : std_logic;
SIGNAL \time1[14]~60_combout\ : std_logic;
SIGNAL \time1[14]~61\ : std_logic;
SIGNAL \time1[15]~62_combout\ : std_logic;
SIGNAL \time1[15]~63\ : std_logic;
SIGNAL \time1[16]~64_combout\ : std_logic;
SIGNAL \time1[16]~65\ : std_logic;
SIGNAL \time1[17]~66_combout\ : std_logic;
SIGNAL \time1[17]~67\ : std_logic;
SIGNAL \time1[18]~68_combout\ : std_logic;
SIGNAL \time1[18]~69\ : std_logic;
SIGNAL \time1[19]~70_combout\ : std_logic;
SIGNAL \time1[19]~71\ : std_logic;
SIGNAL \time1[20]~72_combout\ : std_logic;
SIGNAL \time1[20]~73\ : std_logic;
SIGNAL \time1[21]~74_combout\ : std_logic;
SIGNAL \time1[21]~75\ : std_logic;
SIGNAL \time1[22]~76_combout\ : std_logic;
SIGNAL \time1[22]~77\ : std_logic;
SIGNAL \time1[23]~78_combout\ : std_logic;
SIGNAL \time1[23]~79\ : std_logic;
SIGNAL \time1[24]~80_combout\ : std_logic;
SIGNAL \time1[24]~81\ : std_logic;
SIGNAL \time1[25]~82_combout\ : std_logic;
SIGNAL \time1[25]~83\ : std_logic;
SIGNAL \time1[26]~84_combout\ : std_logic;
SIGNAL \time1[26]~85\ : std_logic;
SIGNAL \time1[27]~86_combout\ : std_logic;
SIGNAL \time1[27]~87\ : std_logic;
SIGNAL \time1[28]~88_combout\ : std_logic;
SIGNAL \time1[28]~89\ : std_logic;
SIGNAL \time1[29]~90_combout\ : std_logic;
SIGNAL \time1[29]~91\ : std_logic;
SIGNAL \time1[30]~92_combout\ : std_logic;
SIGNAL \time1[30]~93\ : std_logic;
SIGNAL \time1[31]~94_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \out1~combout\ : std_logic;
SIGNAL \echo3~input_o\ : std_logic;
SIGNAL \time3[0]~32_combout\ : std_logic;
SIGNAL \current_state3.COUNTING~feeder_combout\ : std_logic;
SIGNAL \current_state3.COUNTING~q\ : std_logic;
SIGNAL \time3[0]~33\ : std_logic;
SIGNAL \time3[1]~34_combout\ : std_logic;
SIGNAL \time3[1]~35\ : std_logic;
SIGNAL \time3[2]~36_combout\ : std_logic;
SIGNAL \time3[2]~37\ : std_logic;
SIGNAL \time3[3]~38_combout\ : std_logic;
SIGNAL \time3[3]~39\ : std_logic;
SIGNAL \time3[4]~40_combout\ : std_logic;
SIGNAL \time3[4]~41\ : std_logic;
SIGNAL \time3[5]~42_combout\ : std_logic;
SIGNAL \time3[5]~43\ : std_logic;
SIGNAL \time3[6]~44_combout\ : std_logic;
SIGNAL \time3[6]~45\ : std_logic;
SIGNAL \time3[7]~46_combout\ : std_logic;
SIGNAL \time3[7]~47\ : std_logic;
SIGNAL \time3[8]~48_combout\ : std_logic;
SIGNAL \time3[8]~49\ : std_logic;
SIGNAL \time3[9]~50_combout\ : std_logic;
SIGNAL \time3[9]~51\ : std_logic;
SIGNAL \time3[10]~52_combout\ : std_logic;
SIGNAL \time3[10]~53\ : std_logic;
SIGNAL \time3[11]~54_combout\ : std_logic;
SIGNAL \time3[11]~55\ : std_logic;
SIGNAL \time3[12]~56_combout\ : std_logic;
SIGNAL \time3[12]~57\ : std_logic;
SIGNAL \time3[13]~58_combout\ : std_logic;
SIGNAL \time3[13]~59\ : std_logic;
SIGNAL \time3[14]~60_combout\ : std_logic;
SIGNAL \time3[14]~61\ : std_logic;
SIGNAL \time3[15]~62_combout\ : std_logic;
SIGNAL \time3[15]~63\ : std_logic;
SIGNAL \time3[16]~64_combout\ : std_logic;
SIGNAL \time3[16]~65\ : std_logic;
SIGNAL \time3[17]~66_combout\ : std_logic;
SIGNAL \time3[17]~67\ : std_logic;
SIGNAL \time3[18]~68_combout\ : std_logic;
SIGNAL \time3[18]~69\ : std_logic;
SIGNAL \time3[19]~70_combout\ : std_logic;
SIGNAL \time3[19]~71\ : std_logic;
SIGNAL \time3[20]~72_combout\ : std_logic;
SIGNAL \time3[20]~73\ : std_logic;
SIGNAL \time3[21]~74_combout\ : std_logic;
SIGNAL \time3[21]~75\ : std_logic;
SIGNAL \time3[22]~76_combout\ : std_logic;
SIGNAL \time3[22]~77\ : std_logic;
SIGNAL \time3[23]~78_combout\ : std_logic;
SIGNAL \time3[23]~79\ : std_logic;
SIGNAL \time3[24]~80_combout\ : std_logic;
SIGNAL \time3[24]~81\ : std_logic;
SIGNAL \time3[25]~82_combout\ : std_logic;
SIGNAL \time3[25]~83\ : std_logic;
SIGNAL \time3[26]~84_combout\ : std_logic;
SIGNAL \time3[26]~85\ : std_logic;
SIGNAL \time3[27]~86_combout\ : std_logic;
SIGNAL \time3[27]~87\ : std_logic;
SIGNAL \time3[28]~88_combout\ : std_logic;
SIGNAL \time3[28]~89\ : std_logic;
SIGNAL \time3[29]~90_combout\ : std_logic;
SIGNAL \time3[29]~91\ : std_logic;
SIGNAL \time3[30]~92_combout\ : std_logic;
SIGNAL \time3[30]~93\ : std_logic;
SIGNAL \time3[31]~94_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan3~8_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~9_combout\ : std_logic;
SIGNAL \out3~combout\ : std_logic;
SIGNAL \echo2~input_o\ : std_logic;
SIGNAL \time2[0]~32_combout\ : std_logic;
SIGNAL \current_state2.COUNTING~feeder_combout\ : std_logic;
SIGNAL \current_state2.COUNTING~q\ : std_logic;
SIGNAL \time2[0]~33\ : std_logic;
SIGNAL \time2[1]~34_combout\ : std_logic;
SIGNAL \time2[1]~35\ : std_logic;
SIGNAL \time2[2]~36_combout\ : std_logic;
SIGNAL \time2[2]~37\ : std_logic;
SIGNAL \time2[3]~38_combout\ : std_logic;
SIGNAL \time2[3]~39\ : std_logic;
SIGNAL \time2[4]~40_combout\ : std_logic;
SIGNAL \time2[4]~41\ : std_logic;
SIGNAL \time2[5]~42_combout\ : std_logic;
SIGNAL \time2[5]~43\ : std_logic;
SIGNAL \time2[6]~44_combout\ : std_logic;
SIGNAL \time2[6]~45\ : std_logic;
SIGNAL \time2[7]~46_combout\ : std_logic;
SIGNAL \time2[7]~47\ : std_logic;
SIGNAL \time2[8]~48_combout\ : std_logic;
SIGNAL \time2[8]~49\ : std_logic;
SIGNAL \time2[9]~50_combout\ : std_logic;
SIGNAL \time2[9]~51\ : std_logic;
SIGNAL \time2[10]~52_combout\ : std_logic;
SIGNAL \time2[10]~53\ : std_logic;
SIGNAL \time2[11]~54_combout\ : std_logic;
SIGNAL \time2[11]~55\ : std_logic;
SIGNAL \time2[12]~56_combout\ : std_logic;
SIGNAL \time2[12]~57\ : std_logic;
SIGNAL \time2[13]~58_combout\ : std_logic;
SIGNAL \time2[13]~59\ : std_logic;
SIGNAL \time2[14]~60_combout\ : std_logic;
SIGNAL \time2[14]~61\ : std_logic;
SIGNAL \time2[15]~62_combout\ : std_logic;
SIGNAL \time2[15]~63\ : std_logic;
SIGNAL \time2[16]~64_combout\ : std_logic;
SIGNAL \time2[16]~65\ : std_logic;
SIGNAL \time2[17]~66_combout\ : std_logic;
SIGNAL \time2[17]~67\ : std_logic;
SIGNAL \time2[18]~68_combout\ : std_logic;
SIGNAL \time2[18]~69\ : std_logic;
SIGNAL \time2[19]~70_combout\ : std_logic;
SIGNAL \time2[19]~71\ : std_logic;
SIGNAL \time2[20]~72_combout\ : std_logic;
SIGNAL \time2[20]~73\ : std_logic;
SIGNAL \time2[21]~74_combout\ : std_logic;
SIGNAL \time2[21]~75\ : std_logic;
SIGNAL \time2[22]~76_combout\ : std_logic;
SIGNAL \time2[22]~77\ : std_logic;
SIGNAL \time2[23]~78_combout\ : std_logic;
SIGNAL \time2[23]~79\ : std_logic;
SIGNAL \time2[24]~80_combout\ : std_logic;
SIGNAL \time2[24]~81\ : std_logic;
SIGNAL \time2[25]~82_combout\ : std_logic;
SIGNAL \time2[25]~83\ : std_logic;
SIGNAL \time2[26]~84_combout\ : std_logic;
SIGNAL \time2[26]~85\ : std_logic;
SIGNAL \time2[27]~86_combout\ : std_logic;
SIGNAL \time2[27]~87\ : std_logic;
SIGNAL \time2[28]~88_combout\ : std_logic;
SIGNAL \time2[28]~89\ : std_logic;
SIGNAL \time2[29]~90_combout\ : std_logic;
SIGNAL \time2[29]~91\ : std_logic;
SIGNAL \time2[30]~92_combout\ : std_logic;
SIGNAL \time2[30]~93\ : std_logic;
SIGNAL \time2[31]~94_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \out2~combout\ : std_logic;
SIGNAL \left1~0_combout\ : std_logic;
SIGNAL \left1[0]~reg0_q\ : std_logic;
SIGNAL \left1~1_combout\ : std_logic;
SIGNAL \left1[1]~reg0_q\ : std_logic;
SIGNAL \left1~2_combout\ : std_logic;
SIGNAL \left1[2]~reg0_q\ : std_logic;
SIGNAL \left1~3_combout\ : std_logic;
SIGNAL \left1[3]~reg0_q\ : std_logic;
SIGNAL \left1~4_combout\ : std_logic;
SIGNAL \left2[0]~reg0_q\ : std_logic;
SIGNAL \right1~0_combout\ : std_logic;
SIGNAL \right1[0]~reg0_q\ : std_logic;
SIGNAL \right1~1_combout\ : std_logic;
SIGNAL \right1[1]~reg0_q\ : std_logic;
SIGNAL \right1~2_combout\ : std_logic;
SIGNAL \right1[2]~reg0_q\ : std_logic;
SIGNAL \right1~3_combout\ : std_logic;
SIGNAL \right1[3]~reg0_q\ : std_logic;
SIGNAL \left1~5_combout\ : std_logic;
SIGNAL \right2[0]~reg0_q\ : std_logic;
SIGNAL \right2~0_combout\ : std_logic;
SIGNAL \right2[1]~reg0_q\ : std_logic;
SIGNAL \left1~6_combout\ : std_logic;
SIGNAL \right2[3]~reg0_q\ : std_logic;
SIGNAL time3 : std_logic_vector(31 DOWNTO 0);
SIGNAL time2 : std_logic_vector(31 DOWNTO 0);
SIGNAL time1 : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_current_state3.COUNTING~q\ : std_logic;
SIGNAL \ALT_INV_current_state2.COUNTING~q\ : std_logic;
SIGNAL \ALT_INV_current_state1.COUNTING~q\ : std_logic;

BEGIN

trig1 <= ww_trig1;
trig2 <= ww_trig2;
trig3 <= ww_trig3;
ww_echo1 <= echo1;
ww_echo2 <= echo2;
ww_echo3 <= echo3;
left1 <= ww_left1;
left2 <= ww_left2;
right1 <= ww_right1;
right2 <= ww_right2;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_current_state3.COUNTING~q\ <= NOT \current_state3.COUNTING~q\;
\ALT_INV_current_state2.COUNTING~q\ <= NOT \current_state2.COUNTING~q\;
\ALT_INV_current_state1.COUNTING~q\ <= NOT \current_state1.COUNTING~q\;

-- Location: IOOBUF_X22_Y0_N9
\trig1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~4_combout\,
	devoe => ww_devoe,
	o => \trig1~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\trig2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~4_combout\,
	devoe => ww_devoe,
	o => \trig2~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\trig3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~4_combout\,
	devoe => ww_devoe,
	o => \trig3~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\left1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \left1[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\left1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \left1[1]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\left1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \left1[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\left1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \left1[3]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\left2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \left2[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\left2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \left2[1]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\left2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \left2[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\left2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \left2[3]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\right1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \right1[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\right1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \right1[1]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\right1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \right1[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\right1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \right1[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\right2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \right2[0]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\right2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \right2[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\right2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \right2[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\right2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \right2[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y6_N0
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X20_Y6_N16
\count~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (\Add0~0_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~8_combout\);

-- Location: FF_X20_Y6_N17
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X21_Y6_N2
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X21_Y6_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X21_Y6_N4
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X21_Y6_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X21_Y6_N6
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X21_Y6_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X20_Y6_N30
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(3) & (!count(0) & (!count(1) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(0),
	datac => count(1),
	datad => count(2),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X21_Y6_N8
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X21_Y6_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X21_Y6_N10
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X21_Y6_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X21_Y6_N12
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X22_Y6_N8
\count~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~12_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~12_combout\,
	combout => \count~0_combout\);

-- Location: FF_X22_Y6_N9
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X21_Y6_N14
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X21_Y6_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X21_Y6_N16
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X22_Y6_N22
\count~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~16_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~16_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~1_combout\);

-- Location: FF_X22_Y6_N23
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X21_Y6_N18
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X22_Y6_N18
\count~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~18_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~18_combout\,
	combout => \count~2_combout\);

-- Location: FF_X22_Y6_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X21_Y6_N20
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X21_Y6_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X21_Y6_N22
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X22_Y6_N4
\count~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\Add0~22_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~22_combout\,
	combout => \count~3_combout\);

-- Location: FF_X22_Y6_N5
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X21_Y6_N24
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X21_Y6_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X21_Y6_N26
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X21_Y6_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X21_Y6_N28
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X22_Y6_N6
\count~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (\Add0~28_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~28_combout\,
	combout => \count~4_combout\);

-- Location: FF_X22_Y6_N7
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X22_Y6_N0
\Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (count(8) & (count(9) & (count(11) & count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(9),
	datac => count(11),
	datad => count(14),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X22_Y6_N14
\Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(4) & (count(6) & (!count(5) & !count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(6),
	datac => count(5),
	datad => count(7),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X21_Y6_N30
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X21_Y6_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X21_Y5_N0
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X21_Y5_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X21_Y5_N2
\Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X21_Y5_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X21_Y5_N4
\Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X22_Y6_N28
\count~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (\Add0~36_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~36_combout\,
	combout => \count~5_combout\);

-- Location: FF_X22_Y6_N29
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X21_Y5_N24
\Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(28) & (\Add0~55\ $ (GND))) # (!count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X21_Y5_N26
\Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(29) & (!\Add0~57\)) # (!count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X21_Y5_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X21_Y5_N28
\Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(30) & (\Add0~59\ $ (GND))) # (!count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X21_Y5_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X21_Y5_N30
\Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = count(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X21_Y5_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X21_Y5_N6
\Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X22_Y6_N16
\count~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (\Add0~38_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~6_combout\);

-- Location: FF_X22_Y6_N17
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X22_Y6_N2
\Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (count(22) & (count(18) & (!count(31) & count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(18),
	datac => count(31),
	datad => count(19),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X22_Y6_N12
\Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~7_combout\ & (\Equal0~6_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X21_Y5_N8
\Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X21_Y5_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X21_Y5_N10
\Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X21_Y5_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X21_Y5_N12
\Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X22_Y6_N30
\count~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (\Add0~44_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~44_combout\,
	combout => \count~7_combout\);

-- Location: FF_X22_Y6_N31
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X21_Y5_N14
\Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X21_Y5_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X21_Y5_N16
\Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X21_Y5_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X21_Y5_N18
\Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X21_Y5_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X21_Y5_N20
\Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X21_Y5_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X21_Y5_N22
\Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(27) & (!\Add0~53\)) # (!count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X21_Y5_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: FF_X21_Y5_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X20_Y5_N12
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(28) & (!count(30) & (!count(29) & !count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datab => count(30),
	datac => count(29),
	datad => count(27),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X20_Y5_N0
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(21) & (!count(20) & (!count(16) & !count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(20),
	datac => count(16),
	datad => count(17),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X20_Y5_N2
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(26) & (!count(25) & (!count(23) & !count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(25),
	datac => count(23),
	datad => count(24),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X20_Y6_N0
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(15) & (!count(12) & (!count(10) & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(12),
	datac => count(10),
	datad => count(13),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X20_Y6_N2
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X20_Y6_N24
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!count(4) & ((!count(2)) # (!count(3))))) # (!count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(5),
	datac => count(4),
	datad => count(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y6_N24
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!count(7) & (!count(6) & \LessThan0~0_combout\))) # (!count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(6),
	datac => count(8),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y6_N26
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!count(14) & (!count(9) & (!count(11) & !count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(9),
	datac => count(11),
	datad => count(18),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y6_N20
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!count(22) & (\LessThan0~1_combout\ & (\LessThan0~2_combout\ & !count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => count(19),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X20_Y6_N22
\LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (count(31)) # ((\Equal0~4_combout\ & \LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => count(31),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: IOIBUF_X33_Y28_N8
\echo1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo1,
	o => \echo1~input_o\);

-- Location: LCCOMB_X32_Y30_N0
\time1[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[0]~32_combout\ = time1(0) $ (VCC)
-- \time1[0]~33\ = CARRY(time1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => time1(0),
	datad => VCC,
	combout => \time1[0]~32_combout\,
	cout => \time1[0]~33\);

-- Location: LCCOMB_X31_Y28_N0
\current_state1.COUNTING~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state1.COUNTING~feeder_combout\ = \echo1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \echo1~input_o\,
	combout => \current_state1.COUNTING~feeder_combout\);

-- Location: FF_X31_Y28_N1
\current_state1.COUNTING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state1.COUNTING~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state1.COUNTING~q\);

-- Location: FF_X32_Y30_N1
\time1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[0]~32_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(0));

-- Location: LCCOMB_X32_Y30_N2
\time1[1]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[1]~34_combout\ = (time1(1) & (!\time1[0]~33\)) # (!time1(1) & ((\time1[0]~33\) # (GND)))
-- \time1[1]~35\ = CARRY((!\time1[0]~33\) # (!time1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(1),
	datad => VCC,
	cin => \time1[0]~33\,
	combout => \time1[1]~34_combout\,
	cout => \time1[1]~35\);

-- Location: FF_X32_Y30_N3
\time1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[1]~34_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(1));

-- Location: LCCOMB_X32_Y30_N4
\time1[2]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[2]~36_combout\ = (time1(2) & (\time1[1]~35\ $ (GND))) # (!time1(2) & (!\time1[1]~35\ & VCC))
-- \time1[2]~37\ = CARRY((time1(2) & !\time1[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(2),
	datad => VCC,
	cin => \time1[1]~35\,
	combout => \time1[2]~36_combout\,
	cout => \time1[2]~37\);

-- Location: FF_X32_Y30_N5
\time1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[2]~36_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(2));

-- Location: LCCOMB_X32_Y30_N6
\time1[3]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[3]~38_combout\ = (time1(3) & (!\time1[2]~37\)) # (!time1(3) & ((\time1[2]~37\) # (GND)))
-- \time1[3]~39\ = CARRY((!\time1[2]~37\) # (!time1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(3),
	datad => VCC,
	cin => \time1[2]~37\,
	combout => \time1[3]~38_combout\,
	cout => \time1[3]~39\);

-- Location: FF_X32_Y30_N7
\time1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[3]~38_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(3));

-- Location: LCCOMB_X32_Y30_N8
\time1[4]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[4]~40_combout\ = (time1(4) & (\time1[3]~39\ $ (GND))) # (!time1(4) & (!\time1[3]~39\ & VCC))
-- \time1[4]~41\ = CARRY((time1(4) & !\time1[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(4),
	datad => VCC,
	cin => \time1[3]~39\,
	combout => \time1[4]~40_combout\,
	cout => \time1[4]~41\);

-- Location: FF_X32_Y30_N9
\time1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[4]~40_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(4));

-- Location: LCCOMB_X32_Y30_N10
\time1[5]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[5]~42_combout\ = (time1(5) & (!\time1[4]~41\)) # (!time1(5) & ((\time1[4]~41\) # (GND)))
-- \time1[5]~43\ = CARRY((!\time1[4]~41\) # (!time1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(5),
	datad => VCC,
	cin => \time1[4]~41\,
	combout => \time1[5]~42_combout\,
	cout => \time1[5]~43\);

-- Location: FF_X32_Y30_N11
\time1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[5]~42_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(5));

-- Location: LCCOMB_X32_Y30_N12
\time1[6]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[6]~44_combout\ = (time1(6) & (\time1[5]~43\ $ (GND))) # (!time1(6) & (!\time1[5]~43\ & VCC))
-- \time1[6]~45\ = CARRY((time1(6) & !\time1[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(6),
	datad => VCC,
	cin => \time1[5]~43\,
	combout => \time1[6]~44_combout\,
	cout => \time1[6]~45\);

-- Location: FF_X32_Y30_N13
\time1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[6]~44_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(6));

-- Location: LCCOMB_X32_Y30_N14
\time1[7]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[7]~46_combout\ = (time1(7) & (!\time1[6]~45\)) # (!time1(7) & ((\time1[6]~45\) # (GND)))
-- \time1[7]~47\ = CARRY((!\time1[6]~45\) # (!time1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(7),
	datad => VCC,
	cin => \time1[6]~45\,
	combout => \time1[7]~46_combout\,
	cout => \time1[7]~47\);

-- Location: FF_X32_Y30_N15
\time1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[7]~46_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(7));

-- Location: LCCOMB_X32_Y30_N16
\time1[8]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[8]~48_combout\ = (time1(8) & (\time1[7]~47\ $ (GND))) # (!time1(8) & (!\time1[7]~47\ & VCC))
-- \time1[8]~49\ = CARRY((time1(8) & !\time1[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(8),
	datad => VCC,
	cin => \time1[7]~47\,
	combout => \time1[8]~48_combout\,
	cout => \time1[8]~49\);

-- Location: FF_X32_Y30_N17
\time1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[8]~48_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(8));

-- Location: LCCOMB_X32_Y30_N18
\time1[9]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[9]~50_combout\ = (time1(9) & (!\time1[8]~49\)) # (!time1(9) & ((\time1[8]~49\) # (GND)))
-- \time1[9]~51\ = CARRY((!\time1[8]~49\) # (!time1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(9),
	datad => VCC,
	cin => \time1[8]~49\,
	combout => \time1[9]~50_combout\,
	cout => \time1[9]~51\);

-- Location: FF_X32_Y30_N19
\time1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[9]~50_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(9));

-- Location: LCCOMB_X32_Y30_N20
\time1[10]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[10]~52_combout\ = (time1(10) & (\time1[9]~51\ $ (GND))) # (!time1(10) & (!\time1[9]~51\ & VCC))
-- \time1[10]~53\ = CARRY((time1(10) & !\time1[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(10),
	datad => VCC,
	cin => \time1[9]~51\,
	combout => \time1[10]~52_combout\,
	cout => \time1[10]~53\);

-- Location: FF_X32_Y30_N21
\time1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[10]~52_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(10));

-- Location: LCCOMB_X32_Y30_N22
\time1[11]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[11]~54_combout\ = (time1(11) & (!\time1[10]~53\)) # (!time1(11) & ((\time1[10]~53\) # (GND)))
-- \time1[11]~55\ = CARRY((!\time1[10]~53\) # (!time1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(11),
	datad => VCC,
	cin => \time1[10]~53\,
	combout => \time1[11]~54_combout\,
	cout => \time1[11]~55\);

-- Location: FF_X32_Y30_N23
\time1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[11]~54_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(11));

-- Location: LCCOMB_X32_Y30_N24
\time1[12]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[12]~56_combout\ = (time1(12) & (\time1[11]~55\ $ (GND))) # (!time1(12) & (!\time1[11]~55\ & VCC))
-- \time1[12]~57\ = CARRY((time1(12) & !\time1[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(12),
	datad => VCC,
	cin => \time1[11]~55\,
	combout => \time1[12]~56_combout\,
	cout => \time1[12]~57\);

-- Location: FF_X32_Y30_N25
\time1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[12]~56_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(12));

-- Location: LCCOMB_X32_Y30_N26
\time1[13]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[13]~58_combout\ = (time1(13) & (!\time1[12]~57\)) # (!time1(13) & ((\time1[12]~57\) # (GND)))
-- \time1[13]~59\ = CARRY((!\time1[12]~57\) # (!time1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(13),
	datad => VCC,
	cin => \time1[12]~57\,
	combout => \time1[13]~58_combout\,
	cout => \time1[13]~59\);

-- Location: FF_X32_Y30_N27
\time1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[13]~58_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(13));

-- Location: LCCOMB_X32_Y30_N28
\time1[14]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[14]~60_combout\ = (time1(14) & (\time1[13]~59\ $ (GND))) # (!time1(14) & (!\time1[13]~59\ & VCC))
-- \time1[14]~61\ = CARRY((time1(14) & !\time1[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(14),
	datad => VCC,
	cin => \time1[13]~59\,
	combout => \time1[14]~60_combout\,
	cout => \time1[14]~61\);

-- Location: FF_X32_Y30_N29
\time1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[14]~60_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(14));

-- Location: LCCOMB_X32_Y30_N30
\time1[15]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[15]~62_combout\ = (time1(15) & (!\time1[14]~61\)) # (!time1(15) & ((\time1[14]~61\) # (GND)))
-- \time1[15]~63\ = CARRY((!\time1[14]~61\) # (!time1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(15),
	datad => VCC,
	cin => \time1[14]~61\,
	combout => \time1[15]~62_combout\,
	cout => \time1[15]~63\);

-- Location: FF_X32_Y30_N31
\time1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[15]~62_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(15));

-- Location: LCCOMB_X32_Y29_N0
\time1[16]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[16]~64_combout\ = (time1(16) & (\time1[15]~63\ $ (GND))) # (!time1(16) & (!\time1[15]~63\ & VCC))
-- \time1[16]~65\ = CARRY((time1(16) & !\time1[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(16),
	datad => VCC,
	cin => \time1[15]~63\,
	combout => \time1[16]~64_combout\,
	cout => \time1[16]~65\);

-- Location: FF_X32_Y29_N1
\time1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[16]~64_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(16));

-- Location: LCCOMB_X32_Y29_N2
\time1[17]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[17]~66_combout\ = (time1(17) & (!\time1[16]~65\)) # (!time1(17) & ((\time1[16]~65\) # (GND)))
-- \time1[17]~67\ = CARRY((!\time1[16]~65\) # (!time1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(17),
	datad => VCC,
	cin => \time1[16]~65\,
	combout => \time1[17]~66_combout\,
	cout => \time1[17]~67\);

-- Location: FF_X32_Y29_N3
\time1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[17]~66_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(17));

-- Location: LCCOMB_X32_Y29_N4
\time1[18]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[18]~68_combout\ = (time1(18) & (\time1[17]~67\ $ (GND))) # (!time1(18) & (!\time1[17]~67\ & VCC))
-- \time1[18]~69\ = CARRY((time1(18) & !\time1[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(18),
	datad => VCC,
	cin => \time1[17]~67\,
	combout => \time1[18]~68_combout\,
	cout => \time1[18]~69\);

-- Location: FF_X32_Y29_N5
\time1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[18]~68_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(18));

-- Location: LCCOMB_X32_Y29_N6
\time1[19]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[19]~70_combout\ = (time1(19) & (!\time1[18]~69\)) # (!time1(19) & ((\time1[18]~69\) # (GND)))
-- \time1[19]~71\ = CARRY((!\time1[18]~69\) # (!time1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(19),
	datad => VCC,
	cin => \time1[18]~69\,
	combout => \time1[19]~70_combout\,
	cout => \time1[19]~71\);

-- Location: FF_X32_Y29_N7
\time1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[19]~70_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(19));

-- Location: LCCOMB_X32_Y29_N8
\time1[20]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[20]~72_combout\ = (time1(20) & (\time1[19]~71\ $ (GND))) # (!time1(20) & (!\time1[19]~71\ & VCC))
-- \time1[20]~73\ = CARRY((time1(20) & !\time1[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(20),
	datad => VCC,
	cin => \time1[19]~71\,
	combout => \time1[20]~72_combout\,
	cout => \time1[20]~73\);

-- Location: FF_X32_Y29_N9
\time1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[20]~72_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(20));

-- Location: LCCOMB_X32_Y29_N10
\time1[21]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[21]~74_combout\ = (time1(21) & (!\time1[20]~73\)) # (!time1(21) & ((\time1[20]~73\) # (GND)))
-- \time1[21]~75\ = CARRY((!\time1[20]~73\) # (!time1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(21),
	datad => VCC,
	cin => \time1[20]~73\,
	combout => \time1[21]~74_combout\,
	cout => \time1[21]~75\);

-- Location: FF_X32_Y29_N11
\time1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[21]~74_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(21));

-- Location: LCCOMB_X32_Y29_N12
\time1[22]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[22]~76_combout\ = (time1(22) & (\time1[21]~75\ $ (GND))) # (!time1(22) & (!\time1[21]~75\ & VCC))
-- \time1[22]~77\ = CARRY((time1(22) & !\time1[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(22),
	datad => VCC,
	cin => \time1[21]~75\,
	combout => \time1[22]~76_combout\,
	cout => \time1[22]~77\);

-- Location: FF_X32_Y29_N13
\time1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[22]~76_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(22));

-- Location: LCCOMB_X32_Y29_N14
\time1[23]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[23]~78_combout\ = (time1(23) & (!\time1[22]~77\)) # (!time1(23) & ((\time1[22]~77\) # (GND)))
-- \time1[23]~79\ = CARRY((!\time1[22]~77\) # (!time1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(23),
	datad => VCC,
	cin => \time1[22]~77\,
	combout => \time1[23]~78_combout\,
	cout => \time1[23]~79\);

-- Location: FF_X32_Y29_N15
\time1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[23]~78_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(23));

-- Location: LCCOMB_X32_Y29_N16
\time1[24]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[24]~80_combout\ = (time1(24) & (\time1[23]~79\ $ (GND))) # (!time1(24) & (!\time1[23]~79\ & VCC))
-- \time1[24]~81\ = CARRY((time1(24) & !\time1[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(24),
	datad => VCC,
	cin => \time1[23]~79\,
	combout => \time1[24]~80_combout\,
	cout => \time1[24]~81\);

-- Location: FF_X32_Y29_N17
\time1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[24]~80_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(24));

-- Location: LCCOMB_X32_Y29_N18
\time1[25]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[25]~82_combout\ = (time1(25) & (!\time1[24]~81\)) # (!time1(25) & ((\time1[24]~81\) # (GND)))
-- \time1[25]~83\ = CARRY((!\time1[24]~81\) # (!time1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(25),
	datad => VCC,
	cin => \time1[24]~81\,
	combout => \time1[25]~82_combout\,
	cout => \time1[25]~83\);

-- Location: FF_X32_Y29_N19
\time1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[25]~82_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(25));

-- Location: LCCOMB_X32_Y29_N20
\time1[26]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[26]~84_combout\ = (time1(26) & (\time1[25]~83\ $ (GND))) # (!time1(26) & (!\time1[25]~83\ & VCC))
-- \time1[26]~85\ = CARRY((time1(26) & !\time1[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(26),
	datad => VCC,
	cin => \time1[25]~83\,
	combout => \time1[26]~84_combout\,
	cout => \time1[26]~85\);

-- Location: FF_X32_Y29_N21
\time1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[26]~84_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(26));

-- Location: LCCOMB_X32_Y29_N22
\time1[27]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[27]~86_combout\ = (time1(27) & (!\time1[26]~85\)) # (!time1(27) & ((\time1[26]~85\) # (GND)))
-- \time1[27]~87\ = CARRY((!\time1[26]~85\) # (!time1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(27),
	datad => VCC,
	cin => \time1[26]~85\,
	combout => \time1[27]~86_combout\,
	cout => \time1[27]~87\);

-- Location: FF_X32_Y29_N23
\time1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[27]~86_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(27));

-- Location: LCCOMB_X32_Y29_N24
\time1[28]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[28]~88_combout\ = (time1(28) & (\time1[27]~87\ $ (GND))) # (!time1(28) & (!\time1[27]~87\ & VCC))
-- \time1[28]~89\ = CARRY((time1(28) & !\time1[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(28),
	datad => VCC,
	cin => \time1[27]~87\,
	combout => \time1[28]~88_combout\,
	cout => \time1[28]~89\);

-- Location: FF_X32_Y29_N25
\time1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[28]~88_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(28));

-- Location: LCCOMB_X32_Y29_N26
\time1[29]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[29]~90_combout\ = (time1(29) & (!\time1[28]~89\)) # (!time1(29) & ((\time1[28]~89\) # (GND)))
-- \time1[29]~91\ = CARRY((!\time1[28]~89\) # (!time1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(29),
	datad => VCC,
	cin => \time1[28]~89\,
	combout => \time1[29]~90_combout\,
	cout => \time1[29]~91\);

-- Location: FF_X32_Y29_N27
\time1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[29]~90_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(29));

-- Location: LCCOMB_X32_Y29_N28
\time1[30]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[30]~92_combout\ = (time1(30) & (\time1[29]~91\ $ (GND))) # (!time1(30) & (!\time1[29]~91\ & VCC))
-- \time1[30]~93\ = CARRY((time1(30) & !\time1[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time1(30),
	datad => VCC,
	cin => \time1[29]~91\,
	combout => \time1[30]~92_combout\,
	cout => \time1[30]~93\);

-- Location: FF_X32_Y29_N29
\time1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[30]~92_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(30));

-- Location: LCCOMB_X32_Y29_N30
\time1[31]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time1[31]~94_combout\ = time1(31) $ (\time1[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time1(31),
	cin => \time1[30]~93\,
	combout => \time1[31]~94_combout\);

-- Location: FF_X32_Y29_N31
\time1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time1[31]~94_combout\,
	sclr => \ALT_INV_current_state1.COUNTING~q\,
	ena => \echo1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time1(31));

-- Location: LCCOMB_X31_Y29_N28
\LessThan1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!time1(25) & (!time1(23) & (!time1(22) & !time1(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time1(25),
	datab => time1(23),
	datac => time1(22),
	datad => time1(24),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X31_Y29_N26
\LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!time1(19) & (!time1(21) & (!time1(20) & !time1(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time1(19),
	datab => time1(21),
	datac => time1(20),
	datad => time1(18),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X31_Y29_N6
\LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!time1(29) & (!time1(28) & (!time1(26) & !time1(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time1(29),
	datab => time1(28),
	datac => time1(26),
	datad => time1(27),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X31_Y29_N4
\LessThan1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (!time1(30) & (\LessThan1~6_combout\ & (\LessThan1~5_combout\ & \LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time1(30),
	datab => \LessThan1~6_combout\,
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X31_Y29_N22
\LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!time1(17) & (!time1(16) & (!time1(15) & !time1(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time1(17),
	datab => time1(16),
	datac => time1(15),
	datad => time1(14),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X31_Y29_N14
\LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!time1(8) & (!time1(9) & (!time1(6) & !time1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time1(8),
	datab => time1(9),
	datac => time1(6),
	datad => time1(7),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y29_N8
\LessThan1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!time1(10) & (!time1(11) & (!time1(12) & !time1(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time1(10),
	datab => time1(11),
	datac => time1(12),
	datad => time1(13),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y29_N20
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!time1(5) & (((!time1(2) & !time1(3))) # (!time1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time1(2),
	datab => time1(5),
	datac => time1(3),
	datad => time1(4),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y29_N24
\LessThan1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~3_combout\ & (\LessThan1~1_combout\ & (\LessThan1~2_combout\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \LessThan1~1_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X31_Y29_N10
\LessThan1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (time1(31)) # ((\LessThan1~8_combout\ & \LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => time1(31),
	datac => \LessThan1~8_combout\,
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X31_Y29_N12
out1 : cycloneiv_lcell_comb
-- Equation(s):
-- \out1~combout\ = (\echo1~input_o\ & (\out1~combout\)) # (!\echo1~input_o\ & ((\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out1~combout\,
	datac => \echo1~input_o\,
	datad => \LessThan1~9_combout\,
	combout => \out1~combout\);

-- Location: IOIBUF_X33_Y28_N1
\echo3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo3,
	o => \echo3~input_o\);

-- Location: LCCOMB_X32_Y28_N0
\time3[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[0]~32_combout\ = time3(0) $ (VCC)
-- \time3[0]~33\ = CARRY(time3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => time3(0),
	datad => VCC,
	combout => \time3[0]~32_combout\,
	cout => \time3[0]~33\);

-- Location: LCCOMB_X31_Y28_N30
\current_state3.COUNTING~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state3.COUNTING~feeder_combout\ = \echo3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \echo3~input_o\,
	combout => \current_state3.COUNTING~feeder_combout\);

-- Location: FF_X31_Y28_N31
\current_state3.COUNTING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state3.COUNTING~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state3.COUNTING~q\);

-- Location: FF_X32_Y28_N1
\time3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[0]~32_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(0));

-- Location: LCCOMB_X32_Y28_N2
\time3[1]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[1]~34_combout\ = (time3(1) & (!\time3[0]~33\)) # (!time3(1) & ((\time3[0]~33\) # (GND)))
-- \time3[1]~35\ = CARRY((!\time3[0]~33\) # (!time3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(1),
	datad => VCC,
	cin => \time3[0]~33\,
	combout => \time3[1]~34_combout\,
	cout => \time3[1]~35\);

-- Location: FF_X32_Y28_N3
\time3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[1]~34_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(1));

-- Location: LCCOMB_X32_Y28_N4
\time3[2]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[2]~36_combout\ = (time3(2) & (\time3[1]~35\ $ (GND))) # (!time3(2) & (!\time3[1]~35\ & VCC))
-- \time3[2]~37\ = CARRY((time3(2) & !\time3[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(2),
	datad => VCC,
	cin => \time3[1]~35\,
	combout => \time3[2]~36_combout\,
	cout => \time3[2]~37\);

-- Location: FF_X32_Y28_N5
\time3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[2]~36_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(2));

-- Location: LCCOMB_X32_Y28_N6
\time3[3]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[3]~38_combout\ = (time3(3) & (!\time3[2]~37\)) # (!time3(3) & ((\time3[2]~37\) # (GND)))
-- \time3[3]~39\ = CARRY((!\time3[2]~37\) # (!time3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(3),
	datad => VCC,
	cin => \time3[2]~37\,
	combout => \time3[3]~38_combout\,
	cout => \time3[3]~39\);

-- Location: FF_X32_Y28_N7
\time3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[3]~38_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(3));

-- Location: LCCOMB_X32_Y28_N8
\time3[4]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[4]~40_combout\ = (time3(4) & (\time3[3]~39\ $ (GND))) # (!time3(4) & (!\time3[3]~39\ & VCC))
-- \time3[4]~41\ = CARRY((time3(4) & !\time3[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(4),
	datad => VCC,
	cin => \time3[3]~39\,
	combout => \time3[4]~40_combout\,
	cout => \time3[4]~41\);

-- Location: FF_X32_Y28_N9
\time3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[4]~40_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(4));

-- Location: LCCOMB_X32_Y28_N10
\time3[5]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[5]~42_combout\ = (time3(5) & (!\time3[4]~41\)) # (!time3(5) & ((\time3[4]~41\) # (GND)))
-- \time3[5]~43\ = CARRY((!\time3[4]~41\) # (!time3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(5),
	datad => VCC,
	cin => \time3[4]~41\,
	combout => \time3[5]~42_combout\,
	cout => \time3[5]~43\);

-- Location: FF_X32_Y28_N11
\time3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[5]~42_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(5));

-- Location: LCCOMB_X32_Y28_N12
\time3[6]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[6]~44_combout\ = (time3(6) & (\time3[5]~43\ $ (GND))) # (!time3(6) & (!\time3[5]~43\ & VCC))
-- \time3[6]~45\ = CARRY((time3(6) & !\time3[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(6),
	datad => VCC,
	cin => \time3[5]~43\,
	combout => \time3[6]~44_combout\,
	cout => \time3[6]~45\);

-- Location: FF_X32_Y28_N13
\time3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[6]~44_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(6));

-- Location: LCCOMB_X32_Y28_N14
\time3[7]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[7]~46_combout\ = (time3(7) & (!\time3[6]~45\)) # (!time3(7) & ((\time3[6]~45\) # (GND)))
-- \time3[7]~47\ = CARRY((!\time3[6]~45\) # (!time3(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(7),
	datad => VCC,
	cin => \time3[6]~45\,
	combout => \time3[7]~46_combout\,
	cout => \time3[7]~47\);

-- Location: FF_X32_Y28_N15
\time3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[7]~46_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(7));

-- Location: LCCOMB_X32_Y28_N16
\time3[8]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[8]~48_combout\ = (time3(8) & (\time3[7]~47\ $ (GND))) # (!time3(8) & (!\time3[7]~47\ & VCC))
-- \time3[8]~49\ = CARRY((time3(8) & !\time3[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(8),
	datad => VCC,
	cin => \time3[7]~47\,
	combout => \time3[8]~48_combout\,
	cout => \time3[8]~49\);

-- Location: FF_X32_Y28_N17
\time3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[8]~48_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(8));

-- Location: LCCOMB_X32_Y28_N18
\time3[9]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[9]~50_combout\ = (time3(9) & (!\time3[8]~49\)) # (!time3(9) & ((\time3[8]~49\) # (GND)))
-- \time3[9]~51\ = CARRY((!\time3[8]~49\) # (!time3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(9),
	datad => VCC,
	cin => \time3[8]~49\,
	combout => \time3[9]~50_combout\,
	cout => \time3[9]~51\);

-- Location: FF_X32_Y28_N19
\time3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[9]~50_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(9));

-- Location: LCCOMB_X32_Y28_N20
\time3[10]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[10]~52_combout\ = (time3(10) & (\time3[9]~51\ $ (GND))) # (!time3(10) & (!\time3[9]~51\ & VCC))
-- \time3[10]~53\ = CARRY((time3(10) & !\time3[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(10),
	datad => VCC,
	cin => \time3[9]~51\,
	combout => \time3[10]~52_combout\,
	cout => \time3[10]~53\);

-- Location: FF_X32_Y28_N21
\time3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[10]~52_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(10));

-- Location: LCCOMB_X32_Y28_N22
\time3[11]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[11]~54_combout\ = (time3(11) & (!\time3[10]~53\)) # (!time3(11) & ((\time3[10]~53\) # (GND)))
-- \time3[11]~55\ = CARRY((!\time3[10]~53\) # (!time3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(11),
	datad => VCC,
	cin => \time3[10]~53\,
	combout => \time3[11]~54_combout\,
	cout => \time3[11]~55\);

-- Location: FF_X32_Y28_N23
\time3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[11]~54_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(11));

-- Location: LCCOMB_X32_Y28_N24
\time3[12]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[12]~56_combout\ = (time3(12) & (\time3[11]~55\ $ (GND))) # (!time3(12) & (!\time3[11]~55\ & VCC))
-- \time3[12]~57\ = CARRY((time3(12) & !\time3[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(12),
	datad => VCC,
	cin => \time3[11]~55\,
	combout => \time3[12]~56_combout\,
	cout => \time3[12]~57\);

-- Location: FF_X32_Y28_N25
\time3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[12]~56_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(12));

-- Location: LCCOMB_X32_Y28_N26
\time3[13]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[13]~58_combout\ = (time3(13) & (!\time3[12]~57\)) # (!time3(13) & ((\time3[12]~57\) # (GND)))
-- \time3[13]~59\ = CARRY((!\time3[12]~57\) # (!time3(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(13),
	datad => VCC,
	cin => \time3[12]~57\,
	combout => \time3[13]~58_combout\,
	cout => \time3[13]~59\);

-- Location: FF_X32_Y28_N27
\time3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[13]~58_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(13));

-- Location: LCCOMB_X32_Y28_N28
\time3[14]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[14]~60_combout\ = (time3(14) & (\time3[13]~59\ $ (GND))) # (!time3(14) & (!\time3[13]~59\ & VCC))
-- \time3[14]~61\ = CARRY((time3(14) & !\time3[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(14),
	datad => VCC,
	cin => \time3[13]~59\,
	combout => \time3[14]~60_combout\,
	cout => \time3[14]~61\);

-- Location: FF_X32_Y28_N29
\time3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[14]~60_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(14));

-- Location: LCCOMB_X32_Y28_N30
\time3[15]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[15]~62_combout\ = (time3(15) & (!\time3[14]~61\)) # (!time3(15) & ((\time3[14]~61\) # (GND)))
-- \time3[15]~63\ = CARRY((!\time3[14]~61\) # (!time3(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(15),
	datad => VCC,
	cin => \time3[14]~61\,
	combout => \time3[15]~62_combout\,
	cout => \time3[15]~63\);

-- Location: FF_X32_Y28_N31
\time3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[15]~62_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(15));

-- Location: LCCOMB_X32_Y27_N0
\time3[16]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[16]~64_combout\ = (time3(16) & (\time3[15]~63\ $ (GND))) # (!time3(16) & (!\time3[15]~63\ & VCC))
-- \time3[16]~65\ = CARRY((time3(16) & !\time3[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(16),
	datad => VCC,
	cin => \time3[15]~63\,
	combout => \time3[16]~64_combout\,
	cout => \time3[16]~65\);

-- Location: FF_X32_Y27_N1
\time3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[16]~64_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(16));

-- Location: LCCOMB_X32_Y27_N2
\time3[17]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[17]~66_combout\ = (time3(17) & (!\time3[16]~65\)) # (!time3(17) & ((\time3[16]~65\) # (GND)))
-- \time3[17]~67\ = CARRY((!\time3[16]~65\) # (!time3(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(17),
	datad => VCC,
	cin => \time3[16]~65\,
	combout => \time3[17]~66_combout\,
	cout => \time3[17]~67\);

-- Location: FF_X32_Y27_N3
\time3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[17]~66_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(17));

-- Location: LCCOMB_X32_Y27_N4
\time3[18]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[18]~68_combout\ = (time3(18) & (\time3[17]~67\ $ (GND))) # (!time3(18) & (!\time3[17]~67\ & VCC))
-- \time3[18]~69\ = CARRY((time3(18) & !\time3[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(18),
	datad => VCC,
	cin => \time3[17]~67\,
	combout => \time3[18]~68_combout\,
	cout => \time3[18]~69\);

-- Location: FF_X32_Y27_N5
\time3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[18]~68_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(18));

-- Location: LCCOMB_X32_Y27_N6
\time3[19]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[19]~70_combout\ = (time3(19) & (!\time3[18]~69\)) # (!time3(19) & ((\time3[18]~69\) # (GND)))
-- \time3[19]~71\ = CARRY((!\time3[18]~69\) # (!time3(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(19),
	datad => VCC,
	cin => \time3[18]~69\,
	combout => \time3[19]~70_combout\,
	cout => \time3[19]~71\);

-- Location: FF_X32_Y27_N7
\time3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[19]~70_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(19));

-- Location: LCCOMB_X32_Y27_N8
\time3[20]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[20]~72_combout\ = (time3(20) & (\time3[19]~71\ $ (GND))) # (!time3(20) & (!\time3[19]~71\ & VCC))
-- \time3[20]~73\ = CARRY((time3(20) & !\time3[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(20),
	datad => VCC,
	cin => \time3[19]~71\,
	combout => \time3[20]~72_combout\,
	cout => \time3[20]~73\);

-- Location: FF_X32_Y27_N9
\time3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[20]~72_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(20));

-- Location: LCCOMB_X32_Y27_N10
\time3[21]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[21]~74_combout\ = (time3(21) & (!\time3[20]~73\)) # (!time3(21) & ((\time3[20]~73\) # (GND)))
-- \time3[21]~75\ = CARRY((!\time3[20]~73\) # (!time3(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(21),
	datad => VCC,
	cin => \time3[20]~73\,
	combout => \time3[21]~74_combout\,
	cout => \time3[21]~75\);

-- Location: FF_X32_Y27_N11
\time3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[21]~74_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(21));

-- Location: LCCOMB_X32_Y27_N12
\time3[22]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[22]~76_combout\ = (time3(22) & (\time3[21]~75\ $ (GND))) # (!time3(22) & (!\time3[21]~75\ & VCC))
-- \time3[22]~77\ = CARRY((time3(22) & !\time3[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(22),
	datad => VCC,
	cin => \time3[21]~75\,
	combout => \time3[22]~76_combout\,
	cout => \time3[22]~77\);

-- Location: FF_X32_Y27_N13
\time3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[22]~76_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(22));

-- Location: LCCOMB_X32_Y27_N14
\time3[23]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[23]~78_combout\ = (time3(23) & (!\time3[22]~77\)) # (!time3(23) & ((\time3[22]~77\) # (GND)))
-- \time3[23]~79\ = CARRY((!\time3[22]~77\) # (!time3(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(23),
	datad => VCC,
	cin => \time3[22]~77\,
	combout => \time3[23]~78_combout\,
	cout => \time3[23]~79\);

-- Location: FF_X32_Y27_N15
\time3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[23]~78_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(23));

-- Location: LCCOMB_X32_Y27_N16
\time3[24]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[24]~80_combout\ = (time3(24) & (\time3[23]~79\ $ (GND))) # (!time3(24) & (!\time3[23]~79\ & VCC))
-- \time3[24]~81\ = CARRY((time3(24) & !\time3[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(24),
	datad => VCC,
	cin => \time3[23]~79\,
	combout => \time3[24]~80_combout\,
	cout => \time3[24]~81\);

-- Location: FF_X32_Y27_N17
\time3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[24]~80_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(24));

-- Location: LCCOMB_X32_Y27_N18
\time3[25]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[25]~82_combout\ = (time3(25) & (!\time3[24]~81\)) # (!time3(25) & ((\time3[24]~81\) # (GND)))
-- \time3[25]~83\ = CARRY((!\time3[24]~81\) # (!time3(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(25),
	datad => VCC,
	cin => \time3[24]~81\,
	combout => \time3[25]~82_combout\,
	cout => \time3[25]~83\);

-- Location: FF_X32_Y27_N19
\time3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[25]~82_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(25));

-- Location: LCCOMB_X32_Y27_N20
\time3[26]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[26]~84_combout\ = (time3(26) & (\time3[25]~83\ $ (GND))) # (!time3(26) & (!\time3[25]~83\ & VCC))
-- \time3[26]~85\ = CARRY((time3(26) & !\time3[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(26),
	datad => VCC,
	cin => \time3[25]~83\,
	combout => \time3[26]~84_combout\,
	cout => \time3[26]~85\);

-- Location: FF_X32_Y27_N21
\time3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[26]~84_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(26));

-- Location: LCCOMB_X32_Y27_N22
\time3[27]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[27]~86_combout\ = (time3(27) & (!\time3[26]~85\)) # (!time3(27) & ((\time3[26]~85\) # (GND)))
-- \time3[27]~87\ = CARRY((!\time3[26]~85\) # (!time3(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(27),
	datad => VCC,
	cin => \time3[26]~85\,
	combout => \time3[27]~86_combout\,
	cout => \time3[27]~87\);

-- Location: FF_X32_Y27_N23
\time3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[27]~86_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(27));

-- Location: LCCOMB_X32_Y27_N24
\time3[28]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[28]~88_combout\ = (time3(28) & (\time3[27]~87\ $ (GND))) # (!time3(28) & (!\time3[27]~87\ & VCC))
-- \time3[28]~89\ = CARRY((time3(28) & !\time3[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(28),
	datad => VCC,
	cin => \time3[27]~87\,
	combout => \time3[28]~88_combout\,
	cout => \time3[28]~89\);

-- Location: FF_X32_Y27_N25
\time3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[28]~88_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(28));

-- Location: LCCOMB_X32_Y27_N26
\time3[29]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[29]~90_combout\ = (time3(29) & (!\time3[28]~89\)) # (!time3(29) & ((\time3[28]~89\) # (GND)))
-- \time3[29]~91\ = CARRY((!\time3[28]~89\) # (!time3(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(29),
	datad => VCC,
	cin => \time3[28]~89\,
	combout => \time3[29]~90_combout\,
	cout => \time3[29]~91\);

-- Location: FF_X32_Y27_N27
\time3[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[29]~90_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(29));

-- Location: LCCOMB_X32_Y27_N28
\time3[30]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[30]~92_combout\ = (time3(30) & (\time3[29]~91\ $ (GND))) # (!time3(30) & (!\time3[29]~91\ & VCC))
-- \time3[30]~93\ = CARRY((time3(30) & !\time3[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time3(30),
	datad => VCC,
	cin => \time3[29]~91\,
	combout => \time3[30]~92_combout\,
	cout => \time3[30]~93\);

-- Location: FF_X32_Y27_N29
\time3[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[30]~92_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(30));

-- Location: LCCOMB_X32_Y27_N30
\time3[31]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time3[31]~94_combout\ = time3(31) $ (\time3[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time3(31),
	cin => \time3[30]~93\,
	combout => \time3[31]~94_combout\);

-- Location: FF_X32_Y27_N31
\time3[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time3[31]~94_combout\,
	sclr => \ALT_INV_current_state3.COUNTING~q\,
	ena => \echo3~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time3(31));

-- Location: LCCOMB_X31_Y27_N26
\LessThan3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (!time3(19) & (!time3(18) & (!time3(21) & !time3(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time3(19),
	datab => time3(18),
	datac => time3(21),
	datad => time3(20),
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X31_Y27_N30
\LessThan3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = (!time3(27) & (!time3(28) & (!time3(26) & !time3(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time3(27),
	datab => time3(28),
	datac => time3(26),
	datad => time3(29),
	combout => \LessThan3~7_combout\);

-- Location: LCCOMB_X31_Y27_N28
\LessThan3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (!time3(24) & (!time3(23) & (!time3(22) & !time3(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time3(24),
	datab => time3(23),
	datac => time3(22),
	datad => time3(25),
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X31_Y27_N4
\LessThan3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~8_combout\ = (\LessThan3~5_combout\ & (!time3(30) & (\LessThan3~7_combout\ & \LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~5_combout\,
	datab => time3(30),
	datac => \LessThan3~7_combout\,
	datad => \LessThan3~6_combout\,
	combout => \LessThan3~8_combout\);

-- Location: LCCOMB_X31_Y27_N22
\LessThan3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (!time3(17) & (!time3(16) & (!time3(15) & !time3(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time3(17),
	datab => time3(16),
	datac => time3(15),
	datad => time3(14),
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X31_Y27_N8
\LessThan3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!time3(10) & (!time3(11) & (!time3(12) & !time3(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time3(10),
	datab => time3(11),
	datac => time3(12),
	datad => time3(13),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X31_Y27_N14
\LessThan3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!time3(8) & (!time3(7) & (!time3(9) & !time3(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time3(8),
	datab => time3(7),
	datac => time3(9),
	datad => time3(6),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X31_Y27_N24
\LessThan3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!time3(5) & (((!time3(2) & !time3(3))) # (!time3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time3(2),
	datab => time3(4),
	datac => time3(5),
	datad => time3(3),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X31_Y27_N20
\LessThan3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (\LessThan3~3_combout\ & (\LessThan3~2_combout\ & (\LessThan3~1_combout\ & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~3_combout\,
	datab => \LessThan3~2_combout\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X31_Y27_N2
\LessThan3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~9_combout\ = (time3(31)) # ((\LessThan3~8_combout\ & \LessThan3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time3(31),
	datac => \LessThan3~8_combout\,
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~9_combout\);

-- Location: LCCOMB_X31_Y27_N12
out3 : cycloneiv_lcell_comb
-- Equation(s):
-- \out3~combout\ = (\echo3~input_o\ & (\out3~combout\)) # (!\echo3~input_o\ & ((\LessThan3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out3~combout\,
	datac => \echo3~input_o\,
	datad => \LessThan3~9_combout\,
	combout => \out3~combout\);

-- Location: IOIBUF_X33_Y24_N8
\echo2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo2,
	o => \echo2~input_o\);

-- Location: LCCOMB_X32_Y24_N0
\time2[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[0]~32_combout\ = time2(0) $ (VCC)
-- \time2[0]~33\ = CARRY(time2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => time2(0),
	datad => VCC,
	combout => \time2[0]~32_combout\,
	cout => \time2[0]~33\);

-- Location: LCCOMB_X31_Y24_N24
\current_state2.COUNTING~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state2.COUNTING~feeder_combout\ = \echo2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \echo2~input_o\,
	combout => \current_state2.COUNTING~feeder_combout\);

-- Location: FF_X31_Y24_N25
\current_state2.COUNTING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state2.COUNTING~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state2.COUNTING~q\);

-- Location: FF_X32_Y24_N1
\time2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[0]~32_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(0));

-- Location: LCCOMB_X32_Y24_N2
\time2[1]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[1]~34_combout\ = (time2(1) & (!\time2[0]~33\)) # (!time2(1) & ((\time2[0]~33\) # (GND)))
-- \time2[1]~35\ = CARRY((!\time2[0]~33\) # (!time2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(1),
	datad => VCC,
	cin => \time2[0]~33\,
	combout => \time2[1]~34_combout\,
	cout => \time2[1]~35\);

-- Location: FF_X32_Y24_N3
\time2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[1]~34_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(1));

-- Location: LCCOMB_X32_Y24_N4
\time2[2]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[2]~36_combout\ = (time2(2) & (\time2[1]~35\ $ (GND))) # (!time2(2) & (!\time2[1]~35\ & VCC))
-- \time2[2]~37\ = CARRY((time2(2) & !\time2[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(2),
	datad => VCC,
	cin => \time2[1]~35\,
	combout => \time2[2]~36_combout\,
	cout => \time2[2]~37\);

-- Location: FF_X32_Y24_N5
\time2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[2]~36_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(2));

-- Location: LCCOMB_X32_Y24_N6
\time2[3]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[3]~38_combout\ = (time2(3) & (!\time2[2]~37\)) # (!time2(3) & ((\time2[2]~37\) # (GND)))
-- \time2[3]~39\ = CARRY((!\time2[2]~37\) # (!time2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(3),
	datad => VCC,
	cin => \time2[2]~37\,
	combout => \time2[3]~38_combout\,
	cout => \time2[3]~39\);

-- Location: FF_X32_Y24_N7
\time2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[3]~38_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(3));

-- Location: LCCOMB_X32_Y24_N8
\time2[4]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[4]~40_combout\ = (time2(4) & (\time2[3]~39\ $ (GND))) # (!time2(4) & (!\time2[3]~39\ & VCC))
-- \time2[4]~41\ = CARRY((time2(4) & !\time2[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(4),
	datad => VCC,
	cin => \time2[3]~39\,
	combout => \time2[4]~40_combout\,
	cout => \time2[4]~41\);

-- Location: FF_X32_Y24_N9
\time2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[4]~40_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(4));

-- Location: LCCOMB_X32_Y24_N10
\time2[5]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[5]~42_combout\ = (time2(5) & (!\time2[4]~41\)) # (!time2(5) & ((\time2[4]~41\) # (GND)))
-- \time2[5]~43\ = CARRY((!\time2[4]~41\) # (!time2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(5),
	datad => VCC,
	cin => \time2[4]~41\,
	combout => \time2[5]~42_combout\,
	cout => \time2[5]~43\);

-- Location: FF_X32_Y24_N11
\time2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[5]~42_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(5));

-- Location: LCCOMB_X32_Y24_N12
\time2[6]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[6]~44_combout\ = (time2(6) & (\time2[5]~43\ $ (GND))) # (!time2(6) & (!\time2[5]~43\ & VCC))
-- \time2[6]~45\ = CARRY((time2(6) & !\time2[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(6),
	datad => VCC,
	cin => \time2[5]~43\,
	combout => \time2[6]~44_combout\,
	cout => \time2[6]~45\);

-- Location: FF_X32_Y24_N13
\time2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[6]~44_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(6));

-- Location: LCCOMB_X32_Y24_N14
\time2[7]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[7]~46_combout\ = (time2(7) & (!\time2[6]~45\)) # (!time2(7) & ((\time2[6]~45\) # (GND)))
-- \time2[7]~47\ = CARRY((!\time2[6]~45\) # (!time2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(7),
	datad => VCC,
	cin => \time2[6]~45\,
	combout => \time2[7]~46_combout\,
	cout => \time2[7]~47\);

-- Location: FF_X32_Y24_N15
\time2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[7]~46_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(7));

-- Location: LCCOMB_X32_Y24_N16
\time2[8]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[8]~48_combout\ = (time2(8) & (\time2[7]~47\ $ (GND))) # (!time2(8) & (!\time2[7]~47\ & VCC))
-- \time2[8]~49\ = CARRY((time2(8) & !\time2[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(8),
	datad => VCC,
	cin => \time2[7]~47\,
	combout => \time2[8]~48_combout\,
	cout => \time2[8]~49\);

-- Location: FF_X32_Y24_N17
\time2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[8]~48_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(8));

-- Location: LCCOMB_X32_Y24_N18
\time2[9]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[9]~50_combout\ = (time2(9) & (!\time2[8]~49\)) # (!time2(9) & ((\time2[8]~49\) # (GND)))
-- \time2[9]~51\ = CARRY((!\time2[8]~49\) # (!time2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(9),
	datad => VCC,
	cin => \time2[8]~49\,
	combout => \time2[9]~50_combout\,
	cout => \time2[9]~51\);

-- Location: FF_X32_Y24_N19
\time2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[9]~50_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(9));

-- Location: LCCOMB_X32_Y24_N20
\time2[10]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[10]~52_combout\ = (time2(10) & (\time2[9]~51\ $ (GND))) # (!time2(10) & (!\time2[9]~51\ & VCC))
-- \time2[10]~53\ = CARRY((time2(10) & !\time2[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(10),
	datad => VCC,
	cin => \time2[9]~51\,
	combout => \time2[10]~52_combout\,
	cout => \time2[10]~53\);

-- Location: FF_X32_Y24_N21
\time2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[10]~52_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(10));

-- Location: LCCOMB_X32_Y24_N22
\time2[11]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[11]~54_combout\ = (time2(11) & (!\time2[10]~53\)) # (!time2(11) & ((\time2[10]~53\) # (GND)))
-- \time2[11]~55\ = CARRY((!\time2[10]~53\) # (!time2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(11),
	datad => VCC,
	cin => \time2[10]~53\,
	combout => \time2[11]~54_combout\,
	cout => \time2[11]~55\);

-- Location: FF_X32_Y24_N23
\time2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[11]~54_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(11));

-- Location: LCCOMB_X32_Y24_N24
\time2[12]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[12]~56_combout\ = (time2(12) & (\time2[11]~55\ $ (GND))) # (!time2(12) & (!\time2[11]~55\ & VCC))
-- \time2[12]~57\ = CARRY((time2(12) & !\time2[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(12),
	datad => VCC,
	cin => \time2[11]~55\,
	combout => \time2[12]~56_combout\,
	cout => \time2[12]~57\);

-- Location: FF_X32_Y24_N25
\time2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[12]~56_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(12));

-- Location: LCCOMB_X32_Y24_N26
\time2[13]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[13]~58_combout\ = (time2(13) & (!\time2[12]~57\)) # (!time2(13) & ((\time2[12]~57\) # (GND)))
-- \time2[13]~59\ = CARRY((!\time2[12]~57\) # (!time2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(13),
	datad => VCC,
	cin => \time2[12]~57\,
	combout => \time2[13]~58_combout\,
	cout => \time2[13]~59\);

-- Location: FF_X32_Y24_N27
\time2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[13]~58_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(13));

-- Location: LCCOMB_X32_Y24_N28
\time2[14]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[14]~60_combout\ = (time2(14) & (\time2[13]~59\ $ (GND))) # (!time2(14) & (!\time2[13]~59\ & VCC))
-- \time2[14]~61\ = CARRY((time2(14) & !\time2[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(14),
	datad => VCC,
	cin => \time2[13]~59\,
	combout => \time2[14]~60_combout\,
	cout => \time2[14]~61\);

-- Location: FF_X32_Y24_N29
\time2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[14]~60_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(14));

-- Location: LCCOMB_X32_Y24_N30
\time2[15]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[15]~62_combout\ = (time2(15) & (!\time2[14]~61\)) # (!time2(15) & ((\time2[14]~61\) # (GND)))
-- \time2[15]~63\ = CARRY((!\time2[14]~61\) # (!time2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(15),
	datad => VCC,
	cin => \time2[14]~61\,
	combout => \time2[15]~62_combout\,
	cout => \time2[15]~63\);

-- Location: FF_X32_Y24_N31
\time2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[15]~62_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(15));

-- Location: LCCOMB_X32_Y23_N0
\time2[16]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[16]~64_combout\ = (time2(16) & (\time2[15]~63\ $ (GND))) # (!time2(16) & (!\time2[15]~63\ & VCC))
-- \time2[16]~65\ = CARRY((time2(16) & !\time2[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(16),
	datad => VCC,
	cin => \time2[15]~63\,
	combout => \time2[16]~64_combout\,
	cout => \time2[16]~65\);

-- Location: FF_X32_Y23_N1
\time2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[16]~64_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(16));

-- Location: LCCOMB_X32_Y23_N2
\time2[17]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[17]~66_combout\ = (time2(17) & (!\time2[16]~65\)) # (!time2(17) & ((\time2[16]~65\) # (GND)))
-- \time2[17]~67\ = CARRY((!\time2[16]~65\) # (!time2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(17),
	datad => VCC,
	cin => \time2[16]~65\,
	combout => \time2[17]~66_combout\,
	cout => \time2[17]~67\);

-- Location: FF_X32_Y23_N3
\time2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[17]~66_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(17));

-- Location: LCCOMB_X32_Y23_N4
\time2[18]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[18]~68_combout\ = (time2(18) & (\time2[17]~67\ $ (GND))) # (!time2(18) & (!\time2[17]~67\ & VCC))
-- \time2[18]~69\ = CARRY((time2(18) & !\time2[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(18),
	datad => VCC,
	cin => \time2[17]~67\,
	combout => \time2[18]~68_combout\,
	cout => \time2[18]~69\);

-- Location: FF_X32_Y23_N5
\time2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[18]~68_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(18));

-- Location: LCCOMB_X32_Y23_N6
\time2[19]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[19]~70_combout\ = (time2(19) & (!\time2[18]~69\)) # (!time2(19) & ((\time2[18]~69\) # (GND)))
-- \time2[19]~71\ = CARRY((!\time2[18]~69\) # (!time2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(19),
	datad => VCC,
	cin => \time2[18]~69\,
	combout => \time2[19]~70_combout\,
	cout => \time2[19]~71\);

-- Location: FF_X32_Y23_N7
\time2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[19]~70_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(19));

-- Location: LCCOMB_X32_Y23_N8
\time2[20]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[20]~72_combout\ = (time2(20) & (\time2[19]~71\ $ (GND))) # (!time2(20) & (!\time2[19]~71\ & VCC))
-- \time2[20]~73\ = CARRY((time2(20) & !\time2[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(20),
	datad => VCC,
	cin => \time2[19]~71\,
	combout => \time2[20]~72_combout\,
	cout => \time2[20]~73\);

-- Location: FF_X32_Y23_N9
\time2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[20]~72_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(20));

-- Location: LCCOMB_X32_Y23_N10
\time2[21]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[21]~74_combout\ = (time2(21) & (!\time2[20]~73\)) # (!time2(21) & ((\time2[20]~73\) # (GND)))
-- \time2[21]~75\ = CARRY((!\time2[20]~73\) # (!time2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(21),
	datad => VCC,
	cin => \time2[20]~73\,
	combout => \time2[21]~74_combout\,
	cout => \time2[21]~75\);

-- Location: FF_X32_Y23_N11
\time2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[21]~74_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(21));

-- Location: LCCOMB_X32_Y23_N12
\time2[22]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[22]~76_combout\ = (time2(22) & (\time2[21]~75\ $ (GND))) # (!time2(22) & (!\time2[21]~75\ & VCC))
-- \time2[22]~77\ = CARRY((time2(22) & !\time2[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(22),
	datad => VCC,
	cin => \time2[21]~75\,
	combout => \time2[22]~76_combout\,
	cout => \time2[22]~77\);

-- Location: FF_X32_Y23_N13
\time2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[22]~76_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(22));

-- Location: LCCOMB_X32_Y23_N14
\time2[23]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[23]~78_combout\ = (time2(23) & (!\time2[22]~77\)) # (!time2(23) & ((\time2[22]~77\) # (GND)))
-- \time2[23]~79\ = CARRY((!\time2[22]~77\) # (!time2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(23),
	datad => VCC,
	cin => \time2[22]~77\,
	combout => \time2[23]~78_combout\,
	cout => \time2[23]~79\);

-- Location: FF_X32_Y23_N15
\time2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[23]~78_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(23));

-- Location: LCCOMB_X32_Y23_N16
\time2[24]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[24]~80_combout\ = (time2(24) & (\time2[23]~79\ $ (GND))) # (!time2(24) & (!\time2[23]~79\ & VCC))
-- \time2[24]~81\ = CARRY((time2(24) & !\time2[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(24),
	datad => VCC,
	cin => \time2[23]~79\,
	combout => \time2[24]~80_combout\,
	cout => \time2[24]~81\);

-- Location: FF_X32_Y23_N17
\time2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[24]~80_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(24));

-- Location: LCCOMB_X32_Y23_N18
\time2[25]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[25]~82_combout\ = (time2(25) & (!\time2[24]~81\)) # (!time2(25) & ((\time2[24]~81\) # (GND)))
-- \time2[25]~83\ = CARRY((!\time2[24]~81\) # (!time2(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(25),
	datad => VCC,
	cin => \time2[24]~81\,
	combout => \time2[25]~82_combout\,
	cout => \time2[25]~83\);

-- Location: FF_X32_Y23_N19
\time2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[25]~82_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(25));

-- Location: LCCOMB_X32_Y23_N20
\time2[26]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[26]~84_combout\ = (time2(26) & (\time2[25]~83\ $ (GND))) # (!time2(26) & (!\time2[25]~83\ & VCC))
-- \time2[26]~85\ = CARRY((time2(26) & !\time2[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(26),
	datad => VCC,
	cin => \time2[25]~83\,
	combout => \time2[26]~84_combout\,
	cout => \time2[26]~85\);

-- Location: FF_X32_Y23_N21
\time2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[26]~84_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(26));

-- Location: LCCOMB_X32_Y23_N22
\time2[27]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[27]~86_combout\ = (time2(27) & (!\time2[26]~85\)) # (!time2(27) & ((\time2[26]~85\) # (GND)))
-- \time2[27]~87\ = CARRY((!\time2[26]~85\) # (!time2(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(27),
	datad => VCC,
	cin => \time2[26]~85\,
	combout => \time2[27]~86_combout\,
	cout => \time2[27]~87\);

-- Location: FF_X32_Y23_N23
\time2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[27]~86_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(27));

-- Location: LCCOMB_X32_Y23_N24
\time2[28]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[28]~88_combout\ = (time2(28) & (\time2[27]~87\ $ (GND))) # (!time2(28) & (!\time2[27]~87\ & VCC))
-- \time2[28]~89\ = CARRY((time2(28) & !\time2[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(28),
	datad => VCC,
	cin => \time2[27]~87\,
	combout => \time2[28]~88_combout\,
	cout => \time2[28]~89\);

-- Location: FF_X32_Y23_N25
\time2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[28]~88_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(28));

-- Location: LCCOMB_X32_Y23_N26
\time2[29]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[29]~90_combout\ = (time2(29) & (!\time2[28]~89\)) # (!time2(29) & ((\time2[28]~89\) # (GND)))
-- \time2[29]~91\ = CARRY((!\time2[28]~89\) # (!time2(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(29),
	datad => VCC,
	cin => \time2[28]~89\,
	combout => \time2[29]~90_combout\,
	cout => \time2[29]~91\);

-- Location: FF_X32_Y23_N27
\time2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[29]~90_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(29));

-- Location: LCCOMB_X32_Y23_N28
\time2[30]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[30]~92_combout\ = (time2(30) & (\time2[29]~91\ $ (GND))) # (!time2(30) & (!\time2[29]~91\ & VCC))
-- \time2[30]~93\ = CARRY((time2(30) & !\time2[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time2(30),
	datad => VCC,
	cin => \time2[29]~91\,
	combout => \time2[30]~92_combout\,
	cout => \time2[30]~93\);

-- Location: FF_X32_Y23_N29
\time2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[30]~92_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(30));

-- Location: LCCOMB_X32_Y23_N30
\time2[31]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time2[31]~94_combout\ = time2(31) $ (\time2[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time2(31),
	cin => \time2[30]~93\,
	combout => \time2[31]~94_combout\);

-- Location: FF_X32_Y23_N31
\time2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time2[31]~94_combout\,
	sclr => \ALT_INV_current_state2.COUNTING~q\,
	ena => \echo2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time2(31));

-- Location: LCCOMB_X31_Y23_N20
\LessThan2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!time2(30) & (((!time2(2) & !time2(3))) # (!time2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time2(30),
	datab => time2(2),
	datac => time2(3),
	datad => time2(4),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y23_N28
\LessThan2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!time2(24) & (!time2(22) & (!time2(23) & !time2(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time2(24),
	datab => time2(22),
	datac => time2(23),
	datad => time2(25),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X31_Y23_N22
\LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!time2(19) & (!time2(20) & (!time2(18) & !time2(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time2(19),
	datab => time2(20),
	datac => time2(18),
	datad => time2(21),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X31_Y23_N6
\LessThan2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!time2(26) & (!time2(29) & (!time2(27) & !time2(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time2(26),
	datab => time2(29),
	datac => time2(27),
	datad => time2(28),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X31_Y23_N4
\LessThan2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!time2(14) & (\LessThan2~2_combout\ & (\LessThan2~1_combout\ & \LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time2(14),
	datab => \LessThan2~2_combout\,
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X31_Y23_N8
\LessThan2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (!time2(12) & (!time2(13) & (!time2(10) & !time2(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time2(12),
	datab => time2(13),
	datac => time2(10),
	datad => time2(11),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X31_Y23_N26
\LessThan2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!time2(8) & (!time2(7) & (!time2(9) & !time2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time2(8),
	datab => time2(7),
	datac => time2(9),
	datad => time2(6),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X31_Y23_N2
\LessThan2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (!time2(17) & (!time2(16) & (!time2(5) & !time2(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time2(17),
	datab => time2(16),
	datac => time2(5),
	datad => time2(15),
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X31_Y23_N24
\LessThan2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (\LessThan2~6_combout\ & (\LessThan2~5_combout\ & \LessThan2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~6_combout\,
	datac => \LessThan2~5_combout\,
	datad => \LessThan2~7_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X31_Y23_N10
\LessThan2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (time2(31)) # ((\LessThan2~0_combout\ & (\LessThan2~4_combout\ & \LessThan2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time2(31),
	datab => \LessThan2~0_combout\,
	datac => \LessThan2~4_combout\,
	datad => \LessThan2~8_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X31_Y23_N16
out2 : cycloneiv_lcell_comb
-- Equation(s):
-- \out2~combout\ = (\echo2~input_o\ & (\out2~combout\)) # (!\echo2~input_o\ & ((\LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out2~combout\,
	datac => \echo2~input_o\,
	datad => \LessThan2~9_combout\,
	combout => \out2~combout\);

-- Location: LCCOMB_X30_Y27_N20
\left1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left1~0_combout\ = (\out1~combout\ & (\out3~combout\ $ (\out2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out1~combout\,
	datac => \out3~combout\,
	datad => \out2~combout\,
	combout => \left1~0_combout\);

-- Location: FF_X30_Y27_N21
\left1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left1[0]~reg0_q\);

-- Location: LCCOMB_X30_Y27_N6
\left1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left1~1_combout\ = (\out1~combout\) # (!\out2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out1~combout\,
	datad => \out2~combout\,
	combout => \left1~1_combout\);

-- Location: FF_X30_Y27_N7
\left1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left1[1]~reg0_q\);

-- Location: LCCOMB_X30_Y29_N0
\left1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left1~2_combout\ = (\out1~combout\ & (\out3~combout\ $ (\out2~combout\))) # (!\out1~combout\ & (!\out3~combout\ & !\out2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out1~combout\,
	datac => \out3~combout\,
	datad => \out2~combout\,
	combout => \left1~2_combout\);

-- Location: FF_X30_Y29_N1
\left1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left1[2]~reg0_q\);

-- Location: LCCOMB_X30_Y27_N16
\left1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left1~3_combout\ = (\out1~combout\ & (\out3~combout\ $ (!\out2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out3~combout\,
	datac => \out1~combout\,
	datad => \out2~combout\,
	combout => \left1~3_combout\);

-- Location: FF_X30_Y27_N17
\left1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left1[3]~reg0_q\);

-- Location: LCCOMB_X30_Y29_N2
\left1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left1~4_combout\ = (!\out1~combout\ & (\out3~combout\ & \out2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out1~combout\,
	datac => \out3~combout\,
	datad => \out2~combout\,
	combout => \left1~4_combout\);

-- Location: FF_X30_Y29_N3
\left2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left2[0]~reg0_q\);

-- Location: LCCOMB_X30_Y29_N8
\right1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right1~0_combout\ = (\out3~combout\ & (\out1~combout\ $ (\out2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out1~combout\,
	datac => \out3~combout\,
	datad => \out2~combout\,
	combout => \right1~0_combout\);

-- Location: FF_X30_Y29_N9
\right1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right1[0]~reg0_q\);

-- Location: LCCOMB_X30_Y29_N22
\right1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right1~1_combout\ = ((!\out1~combout\ & \out3~combout\)) # (!\out2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out1~combout\,
	datac => \out3~combout\,
	datad => \out2~combout\,
	combout => \right1~1_combout\);

-- Location: FF_X30_Y29_N23
\right1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right1[1]~reg0_q\);

-- Location: LCCOMB_X30_Y27_N26
\right1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right1~2_combout\ = (\out3~combout\ & (\out1~combout\ $ (\out2~combout\))) # (!\out3~combout\ & (!\out1~combout\ & !\out2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out3~combout\,
	datac => \out1~combout\,
	datad => \out2~combout\,
	combout => \right1~2_combout\);

-- Location: FF_X30_Y27_N27
\right1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right1[2]~reg0_q\);

-- Location: LCCOMB_X30_Y27_N12
\right1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right1~3_combout\ = (!\out1~combout\ & (\out3~combout\ $ (\out2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out3~combout\,
	datac => \out1~combout\,
	datad => \out2~combout\,
	combout => \right1~3_combout\);

-- Location: FF_X30_Y27_N13
\right1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right1[3]~reg0_q\);

-- Location: LCCOMB_X30_Y27_N10
\left1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left1~5_combout\ = (!\out3~combout\ & (\out1~combout\ & \out2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out3~combout\,
	datac => \out1~combout\,
	datad => \out2~combout\,
	combout => \left1~5_combout\);

-- Location: FF_X30_Y27_N11
\right2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right2[0]~reg0_q\);

-- Location: LCCOMB_X30_Y29_N12
\right2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right2~0_combout\ = (\out1~combout\ & \out2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out1~combout\,
	datad => \out2~combout\,
	combout => \right2~0_combout\);

-- Location: FF_X30_Y29_N13
\right2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right2[1]~reg0_q\);

-- Location: LCCOMB_X30_Y27_N4
\left1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left1~6_combout\ = (\out1~combout\ & (\out3~combout\ & \out2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out1~combout\,
	datac => \out3~combout\,
	datad => \out2~combout\,
	combout => \left1~6_combout\);

-- Location: FF_X30_Y27_N5
\right2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right2[3]~reg0_q\);

ww_trig1 <= \trig1~output_o\;

ww_trig2 <= \trig2~output_o\;

ww_trig3 <= \trig3~output_o\;

ww_left1(0) <= \left1[0]~output_o\;

ww_left1(1) <= \left1[1]~output_o\;

ww_left1(2) <= \left1[2]~output_o\;

ww_left1(3) <= \left1[3]~output_o\;

ww_left2(0) <= \left2[0]~output_o\;

ww_left2(1) <= \left2[1]~output_o\;

ww_left2(2) <= \left2[2]~output_o\;

ww_left2(3) <= \left2[3]~output_o\;

ww_right1(0) <= \right1[0]~output_o\;

ww_right1(1) <= \right1[1]~output_o\;

ww_right1(2) <= \right1[2]~output_o\;

ww_right1(3) <= \right1[3]~output_o\;

ww_right2(0) <= \right2[0]~output_o\;

ww_right2(1) <= \right2[1]~output_o\;

ww_right2(2) <= \right2[2]~output_o\;

ww_right2(3) <= \right2[3]~output_o\;
END structure;


