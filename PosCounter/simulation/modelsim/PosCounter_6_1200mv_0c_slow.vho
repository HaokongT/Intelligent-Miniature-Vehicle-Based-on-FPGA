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

-- DATE "09/03/2025 14:53:15"

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

ENTITY 	PosCounter IS
    PORT (
	clk_1m : IN std_logic;
	rst : IN std_logic;
	echo : IN std_logic;
	dis_count : OUT std_logic_vector(19 DOWNTO 0)
	);
END PosCounter;

-- Design Ports Information
-- dis_count[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[9]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[10]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[13]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[14]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[15]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[16]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[17]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[18]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_count[19]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1m	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- echo	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PosCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_1m : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_echo : std_logic;
SIGNAL ww_dis_count : std_logic_vector(19 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1m~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dis_count[0]~output_o\ : std_logic;
SIGNAL \dis_count[1]~output_o\ : std_logic;
SIGNAL \dis_count[2]~output_o\ : std_logic;
SIGNAL \dis_count[3]~output_o\ : std_logic;
SIGNAL \dis_count[4]~output_o\ : std_logic;
SIGNAL \dis_count[5]~output_o\ : std_logic;
SIGNAL \dis_count[6]~output_o\ : std_logic;
SIGNAL \dis_count[7]~output_o\ : std_logic;
SIGNAL \dis_count[8]~output_o\ : std_logic;
SIGNAL \dis_count[9]~output_o\ : std_logic;
SIGNAL \dis_count[10]~output_o\ : std_logic;
SIGNAL \dis_count[11]~output_o\ : std_logic;
SIGNAL \dis_count[12]~output_o\ : std_logic;
SIGNAL \dis_count[13]~output_o\ : std_logic;
SIGNAL \dis_count[14]~output_o\ : std_logic;
SIGNAL \dis_count[15]~output_o\ : std_logic;
SIGNAL \dis_count[16]~output_o\ : std_logic;
SIGNAL \dis_count[17]~output_o\ : std_logic;
SIGNAL \dis_count[18]~output_o\ : std_logic;
SIGNAL \dis_count[19]~output_o\ : std_logic;
SIGNAL \clk_1m~input_o\ : std_logic;
SIGNAL \clk_1m~inputclkctrl_outclk\ : std_logic;
SIGNAL \echo~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \echo_reg1~q\ : std_logic;
SIGNAL \echo_reg2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \curr_state.S1~0_combout\ : std_logic;
SIGNAL \curr_state.S1~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \curr_state.S2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \curr_state.S0~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \finish~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \dis_reg[19]~feeder_combout\ : std_logic;
SIGNAL \dis_reg[15]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~210_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~211_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~201_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~200_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[39]~203_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[39]~202_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~204_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~205_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~207_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~206_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~209_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~208_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~352_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~212_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~353_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~213_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~354_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~214_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~215_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~355_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~217_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~216_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~219_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~218_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~356_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~223_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~224_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~225_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~227_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~226_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~220_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~316_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~317_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~221_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~318_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~222_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~228_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~319_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~320_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~229_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~321_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~230_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~231_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~357_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~232_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~233_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~235_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~234_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~323_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~237_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~324_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~238_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~239_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~358_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~241_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~240_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[63]~243_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[63]~242_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~236_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~322_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~244_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~325_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~245_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~326_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~246_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~327_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~359_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~247_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[71]~248_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[71]~249_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~251_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~250_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~328_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~252_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~253_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~329_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~254_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~330_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[79]~360_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[79]~255_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~256_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~257_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~259_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~258_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~331_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~260_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~332_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~261_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~333_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~262_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~263_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~361_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~264_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~265_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~266_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~267_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~270_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~336_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~271_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~362_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~272_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~273_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~275_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~274_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~334_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~268_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[95]~269_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[95]~335_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~277_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~338_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~278_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~339_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~363_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~279_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~281_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~280_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[98]~282_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[98]~283_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~337_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~276_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~284_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~340_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[109]~341_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[109]~285_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~342_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~286_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~364_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~287_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~289_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~288_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~290_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~291_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~292_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~343_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~293_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~344_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~345_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~294_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~295_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~365_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~297_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~296_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~298_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~299_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~347_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~301_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~348_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~302_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~303_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~366_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~305_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~304_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~307_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~306_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~300_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~346_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~308_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~349_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~350_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~309_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~351_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~310_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~311_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~367_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~312_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~313_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~315_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~314_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\ : std_logic;
SIGNAL dis_reg : std_logic_vector(19 DOWNTO 0);
SIGNAL count : std_logic_vector(19 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_19_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_18_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_17_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_16_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_14_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_12_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_10_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~10_combout\ : std_logic;

BEGIN

ww_clk_1m <= clk_1m;
ww_rst <= rst;
ww_echo <= echo;
dis_count <= ww_dis_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk_1m~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1m~input_o\);
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_19_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_18_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_17_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_16_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_14_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_12_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_10_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~10_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\;

-- Location: IOOBUF_X14_Y31_N2
\dis_count[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_19_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\dis_count[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_18_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\dis_count[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_17_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\dis_count[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_16_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[3]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\dis_count[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[4]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\dis_count[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_14_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[5]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\dis_count[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[6]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\dis_count[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_12_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[7]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\dis_count[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[8]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\dis_count[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_10_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[9]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\dis_count[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[10]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\dis_count[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[11]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\dis_count[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[12]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\dis_count[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~12_combout\,
	devoe => ww_devoe,
	o => \dis_count[13]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\dis_count[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~10_combout\,
	devoe => ww_devoe,
	o => \dis_count[14]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\dis_count[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dis_count[15]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\dis_count[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dis_count[16]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\dis_count[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dis_count[17]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dis_count[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dis_count[18]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\dis_count[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dis_count[19]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk_1m~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_1m,
	o => \clk_1m~input_o\);

-- Location: CLKCTRL_G17
\clk_1m~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1m~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1m~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y31_N1
\echo~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo,
	o => \echo~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X25_Y23_N13
echo_reg1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => \echo~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \echo_reg1~q\);

-- Location: FF_X25_Y23_N7
echo_reg2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => \echo_reg1~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \echo_reg2~q\);

-- Location: LCCOMB_X24_Y22_N10
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\curr_state.S1~q\ & (!\echo_reg1~q\ & \echo_reg2~q\)) # (!\curr_state.S1~q\ & (\echo_reg1~q\ & !\echo_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.S1~q\,
	datab => \echo_reg1~q\,
	datad => \echo_reg2~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X24_Y22_N26
\curr_state.S1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \curr_state.S1~0_combout\ = (\Selector1~0_combout\ & (!\curr_state.S0~q\)) # (!\Selector1~0_combout\ & ((\curr_state.S2~q\ & (!\curr_state.S0~q\)) # (!\curr_state.S2~q\ & ((\curr_state.S1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \curr_state.S0~q\,
	datac => \curr_state.S1~q\,
	datad => \curr_state.S2~q\,
	combout => \curr_state.S1~0_combout\);

-- Location: FF_X24_Y22_N27
\curr_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \curr_state.S1~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.S1~q\);

-- Location: LCCOMB_X24_Y22_N24
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\curr_state.S1~q\ & ((\curr_state.S2~q\) # ((!\echo_reg1~q\ & \echo_reg2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.S1~q\,
	datab => \echo_reg1~q\,
	datac => \curr_state.S2~q\,
	datad => \echo_reg2~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X24_Y22_N25
\curr_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.S2~q\);

-- Location: LCCOMB_X24_Y22_N28
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\curr_state.S2~q\ & ((\curr_state.S0~q\) # (\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \curr_state.S2~q\,
	datac => \curr_state.S0~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X24_Y22_N29
\curr_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.S0~q\);

-- Location: LCCOMB_X24_Y22_N2
\Selector22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\curr_state.S0~q\ & (\echo_reg1~q\ & !\echo_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \curr_state.S0~q\,
	datac => \echo_reg1~q\,
	datad => \echo_reg2~q\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X25_Y23_N6
finish : cycloneiv_lcell_comb
-- Equation(s):
-- \finish~combout\ = (\echo_reg2~q\ & !\echo_reg1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \echo_reg2~q\,
	datad => \echo_reg1~q\,
	combout => \finish~combout\);

-- Location: LCCOMB_X25_Y23_N12
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\finish~combout\ & (count(0) & VCC)) # (!\finish~combout\ & (count(0) $ (VCC)))
-- \Add0~1\ = CARRY((!\finish~combout\ & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \finish~combout\,
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X26_Y23_N10
\Selector22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\Add0~0_combout\ & ((\curr_state.S1~q\) # ((count(0) & \Selector22~0_combout\)))) # (!\Add0~0_combout\ & (((count(0) & \Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \curr_state.S1~q\,
	datac => count(0),
	datad => \Selector22~0_combout\,
	combout => \Selector22~1_combout\);

-- Location: FF_X25_Y23_N17
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => \Selector22~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X25_Y23_N14
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

-- Location: LCCOMB_X25_Y23_N8
\Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\curr_state.S1~q\ & ((\Add0~2_combout\) # ((count(1) & \Selector22~0_combout\)))) # (!\curr_state.S1~q\ & (((count(1) & \Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.S1~q\,
	datab => \Add0~2_combout\,
	datac => count(1),
	datad => \Selector22~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X25_Y23_N9
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X25_Y23_N16
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

-- Location: LCCOMB_X25_Y23_N4
\Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Add0~4_combout\ & ((\curr_state.S1~q\) # ((count(2) & \Selector22~0_combout\)))) # (!\Add0~4_combout\ & (((count(2) & \Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \curr_state.S1~q\,
	datac => count(2),
	datad => \Selector22~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X25_Y23_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X25_Y23_N18
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X25_Y23_N2
\Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\curr_state.S1~q\ & ((\Add0~6_combout\) # ((count(3) & \Selector22~0_combout\)))) # (!\curr_state.S1~q\ & (((count(3) & \Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.S1~q\,
	datab => \Add0~6_combout\,
	datac => count(3),
	datad => \Selector22~0_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X25_Y23_N3
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X25_Y23_N20
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X24_Y23_N14
\Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Add0~8_combout\ & ((\curr_state.S1~q\) # ((count(4) & \Selector22~0_combout\)))) # (!\Add0~8_combout\ & (((count(4) & \Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \curr_state.S1~q\,
	datac => count(4),
	datad => \Selector22~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X24_Y23_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X25_Y23_N22
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X25_Y23_N0
\Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Add0~10_combout\ & ((\curr_state.S1~q\) # ((count(5) & \Selector22~0_combout\)))) # (!\Add0~10_combout\ & (((count(5) & \Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \curr_state.S1~q\,
	datac => count(5),
	datad => \Selector22~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X25_Y23_N1
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X25_Y23_N24
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X25_Y23_N10
\Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\curr_state.S1~q\ & ((\Add0~12_combout\) # ((count(6) & \Selector22~0_combout\)))) # (!\curr_state.S1~q\ & (((count(6) & \Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.S1~q\,
	datab => \Add0~12_combout\,
	datac => count(6),
	datad => \Selector22~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X25_Y23_N11
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X25_Y23_N26
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X26_Y23_N4
\Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Add0~14_combout\ & ((\curr_state.S1~q\) # ((count(7) & \Selector22~0_combout\)))) # (!\Add0~14_combout\ & (((count(7) & \Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \curr_state.S1~q\,
	datac => count(7),
	datad => \Selector22~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X26_Y23_N5
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X25_Y23_N28
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X26_Y23_N30
\Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Selector22~0_combout\ & ((count(8)) # ((\curr_state.S1~q\ & \Add0~16_combout\)))) # (!\Selector22~0_combout\ & (\curr_state.S1~q\ & ((\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \curr_state.S1~q\,
	datac => count(8),
	datad => \Add0~16_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X26_Y23_N31
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X25_Y23_N30
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X26_Y23_N20
\Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Selector22~0_combout\ & ((count(9)) # ((\curr_state.S1~q\ & \Add0~18_combout\)))) # (!\Selector22~0_combout\ & (\curr_state.S1~q\ & ((\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \curr_state.S1~q\,
	datac => count(9),
	datad => \Add0~18_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X26_Y23_N21
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X25_Y22_N0
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

-- Location: LCCOMB_X25_Y22_N28
\Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Selector22~0_combout\ & ((count(10)) # ((\curr_state.S1~q\ & \Add0~20_combout\)))) # (!\Selector22~0_combout\ & (\curr_state.S1~q\ & ((\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \curr_state.S1~q\,
	datac => count(10),
	datad => \Add0~20_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X25_Y22_N29
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X25_Y22_N2
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

-- Location: LCCOMB_X25_Y22_N30
\Selector11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Selector22~0_combout\ & ((count(11)) # ((\curr_state.S1~q\ & \Add0~22_combout\)))) # (!\Selector22~0_combout\ & (\curr_state.S1~q\ & ((\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \curr_state.S1~q\,
	datac => count(11),
	datad => \Add0~22_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X25_Y22_N31
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X25_Y22_N4
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X25_Y22_N22
\Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Selector22~0_combout\ & ((count(12)) # ((\curr_state.S1~q\ & \Add0~24_combout\)))) # (!\Selector22~0_combout\ & (\curr_state.S1~q\ & ((\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \curr_state.S1~q\,
	datac => count(12),
	datad => \Add0~24_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X25_Y22_N23
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X25_Y22_N6
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

-- Location: LCCOMB_X24_Y22_N12
\Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\curr_state.S1~q\ & ((\Add0~26_combout\) # ((\Selector22~0_combout\ & count(13))))) # (!\curr_state.S1~q\ & (\Selector22~0_combout\ & (count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.S1~q\,
	datab => \Selector22~0_combout\,
	datac => count(13),
	datad => \Add0~26_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X24_Y22_N13
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X25_Y22_N8
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X25_Y22_N24
\Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Selector22~0_combout\ & ((count(14)) # ((\curr_state.S1~q\ & \Add0~28_combout\)))) # (!\Selector22~0_combout\ & (\curr_state.S1~q\ & ((\Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \curr_state.S1~q\,
	datac => count(14),
	datad => \Add0~28_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X25_Y22_N25
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: FF_X22_Y22_N21
\dis_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(14),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(14));

-- Location: LCCOMB_X25_Y22_N10
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X24_Y22_N6
\Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\curr_state.S1~q\ & ((\Add0~30_combout\) # ((\Selector22~0_combout\ & count(15))))) # (!\curr_state.S1~q\ & (\Selector22~0_combout\ & (count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.S1~q\,
	datab => \Selector22~0_combout\,
	datac => count(15),
	datad => \Add0~30_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X24_Y22_N7
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X25_Y22_N12
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X24_Y22_N16
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\curr_state.S1~q\ & ((\Add0~32_combout\) # ((\Selector22~0_combout\ & count(16))))) # (!\curr_state.S1~q\ & (\Selector22~0_combout\ & (count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.S1~q\,
	datab => \Selector22~0_combout\,
	datac => count(16),
	datad => \Add0~32_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X24_Y22_N17
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X25_Y22_N14
\Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X25_Y22_N26
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector22~0_combout\ & ((count(17)) # ((\curr_state.S1~q\ & \Add0~34_combout\)))) # (!\Selector22~0_combout\ & (\curr_state.S1~q\ & ((\Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \curr_state.S1~q\,
	datac => count(17),
	datad => \Add0~34_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X25_Y22_N27
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X25_Y22_N16
\Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X24_Y22_N14
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\curr_state.S1~q\ & ((\Add0~36_combout\) # ((\Selector22~0_combout\ & count(18))))) # (!\curr_state.S1~q\ & (\Selector22~0_combout\ & (count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.S1~q\,
	datab => \Selector22~0_combout\,
	datac => count(18),
	datad => \Add0~36_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X24_Y22_N15
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X25_Y22_N18
\Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \Add0~37\ $ (count(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(19),
	cin => \Add0~37\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X25_Y22_N20
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector22~0_combout\ & ((count(19)) # ((\curr_state.S1~q\ & \Add0~38_combout\)))) # (!\Selector22~0_combout\ & (\curr_state.S1~q\ & ((\Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \curr_state.S1~q\,
	datac => count(19),
	datad => \Add0~38_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X25_Y22_N21
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X24_Y22_N0
\dis_reg[19]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dis_reg[19]~feeder_combout\ = count(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(19),
	combout => \dis_reg[19]~feeder_combout\);

-- Location: FF_X24_Y22_N1
\dis_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \dis_reg[19]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(19));

-- Location: FF_X22_Y22_N13
\dis_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(18),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(18));

-- Location: FF_X22_Y22_N1
\dis_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(17),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(17));

-- Location: FF_X22_Y22_N3
\dis_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(16),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(16));

-- Location: LCCOMB_X24_Y22_N30
\dis_reg[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dis_reg[15]~feeder_combout\ = count(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(15),
	combout => \dis_reg[15]~feeder_combout\);

-- Location: FF_X24_Y22_N31
\dis_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	d => \dis_reg[15]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(15));

-- Location: LCCOMB_X21_Y22_N14
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = dis_reg(15) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(dis_reg(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dis_reg(15),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X21_Y22_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (dis_reg(16) & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!dis_reg(16) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!dis_reg(16) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dis_reg(16),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X21_Y22_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (dis_reg(17) & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!dis_reg(17) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((dis_reg(17) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dis_reg(17),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X21_Y22_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (dis_reg(18) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)) # (!dis_reg(18) & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\) # (!dis_reg(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dis_reg(18),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X21_Y22_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (dis_reg(19) & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND))) # (!dis_reg(19) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((dis_reg(19) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dis_reg(19),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X21_Y22_N24
\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X21_Y22_N2
\Div0|auto_generated|divider|divider|StageOut[35]~210\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~210_combout\ = (dis_reg(14) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(14),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~210_combout\);

-- Location: LCCOMB_X21_Y22_N28
\Div0|auto_generated|divider|divider|StageOut[35]~211\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~211_combout\ = (dis_reg(14) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(14),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~211_combout\);

-- Location: LCCOMB_X22_Y22_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[35]~210_combout\) # (\Div0|auto_generated|divider|divider|StageOut[35]~211_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[35]~210_combout\) # (\Div0|auto_generated|divider|divider|StageOut[35]~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[35]~210_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[35]~211_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X24_Y22_N22
\Div0|auto_generated|divider|divider|StageOut[40]~201\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~201_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~201_combout\);

-- Location: LCCOMB_X24_Y22_N4
\Div0|auto_generated|divider|divider|StageOut[40]~200\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~200_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & dis_reg(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => dis_reg(19),
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~200_combout\);

-- Location: LCCOMB_X21_Y22_N10
\Div0|auto_generated|divider|divider|StageOut[39]~203\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[39]~203_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[39]~203_combout\);

-- Location: LCCOMB_X21_Y22_N0
\Div0|auto_generated|divider|divider|StageOut[39]~202\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[39]~202_combout\ = (dis_reg(18) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(18),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[39]~202_combout\);

-- Location: LCCOMB_X21_Y22_N12
\Div0|auto_generated|divider|divider|StageOut[38]~204\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~204_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & dis_reg(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => dis_reg(17),
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~204_combout\);

-- Location: LCCOMB_X22_Y22_N28
\Div0|auto_generated|divider|divider|StageOut[38]~205\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~205_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~205_combout\);

-- Location: LCCOMB_X21_Y22_N4
\Div0|auto_generated|divider|divider|StageOut[37]~207\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~207_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~207_combout\);

-- Location: LCCOMB_X21_Y22_N6
\Div0|auto_generated|divider|divider|StageOut[37]~206\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~206_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & dis_reg(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => dis_reg(16),
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~206_combout\);

-- Location: LCCOMB_X21_Y22_N8
\Div0|auto_generated|divider|divider|StageOut[36]~209\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~209_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~209_combout\);

-- Location: LCCOMB_X21_Y22_N30
\Div0|auto_generated|divider|divider|StageOut[36]~208\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~208_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & dis_reg(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => dis_reg(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~208_combout\);

-- Location: LCCOMB_X22_Y22_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[36]~209_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[36]~208_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~209_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[36]~208_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[36]~209_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~208_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~209_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~208_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X22_Y22_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[37]~207_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~206_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[37]~207_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~206_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~207_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~207_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~206_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X22_Y22_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[38]~204_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[38]~204_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[38]~205_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[38]~205_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[38]~204_combout\ & !\Div0|auto_generated|divider|divider|StageOut[38]~205_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[38]~204_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~205_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X22_Y22_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[39]~203_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[39]~202_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[39]~203_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[39]~202_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[39]~203_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[39]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[39]~203_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[39]~202_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X22_Y22_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[40]~201_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[40]~200_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~201_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~200_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X22_Y22_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X22_Y22_N10
\Div0|auto_generated|divider|divider|StageOut[47]~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~352_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((dis_reg(18)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => dis_reg(18),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~352_combout\);

-- Location: LCCOMB_X22_Y22_N6
\Div0|auto_generated|divider|divider|StageOut[47]~212\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~212_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~212_combout\);

-- Location: LCCOMB_X22_Y22_N0
\Div0|auto_generated|divider|divider|StageOut[46]~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~353_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((dis_reg(17)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => dis_reg(17),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~353_combout\);

-- Location: LCCOMB_X22_Y21_N16
\Div0|auto_generated|divider|divider|StageOut[46]~213\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~213_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~213_combout\);

-- Location: LCCOMB_X22_Y22_N8
\Div0|auto_generated|divider|divider|StageOut[45]~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~354_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (dis_reg(16))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dis_reg(16),
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~354_combout\);

-- Location: LCCOMB_X23_Y22_N8
\Div0|auto_generated|divider|divider|StageOut[45]~214\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~214_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~214_combout\);

-- Location: LCCOMB_X23_Y22_N30
\Div0|auto_generated|divider|divider|StageOut[44]~215\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~215_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~215_combout\);

-- Location: LCCOMB_X21_Y22_N26
\Div0|auto_generated|divider|divider|StageOut[44]~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~355_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (dis_reg(15))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dis_reg(15),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~355_combout\);

-- Location: LCCOMB_X22_Y22_N2
\Div0|auto_generated|divider|divider|StageOut[43]~217\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~217_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~217_combout\);

-- Location: LCCOMB_X22_Y22_N4
\Div0|auto_generated|divider|divider|StageOut[43]~216\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~216_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & dis_reg(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => dis_reg(14),
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~216_combout\);

-- Location: FF_X23_Y22_N21
\dis_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(13),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(13));

-- Location: LCCOMB_X22_Y21_N0
\Div0|auto_generated|divider|divider|StageOut[42]~219\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~219_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & dis_reg(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => dis_reg(13),
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~219_combout\);

-- Location: LCCOMB_X22_Y21_N2
\Div0|auto_generated|divider|divider|StageOut[42]~218\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~218_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & dis_reg(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => dis_reg(13),
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~218_combout\);

-- Location: LCCOMB_X23_Y22_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[42]~219_combout\) # (\Div0|auto_generated|divider|divider|StageOut[42]~218_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[42]~219_combout\) # (\Div0|auto_generated|divider|divider|StageOut[42]~218_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~219_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~218_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X23_Y22_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[43]~217_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[43]~216_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[43]~217_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[43]~216_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[43]~217_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[43]~216_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~217_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[43]~216_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X23_Y22_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[44]~215_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[44]~355_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[44]~215_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[44]~355_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[44]~215_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[44]~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[44]~215_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[44]~355_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X23_Y22_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[45]~354_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[45]~354_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[45]~214_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[45]~214_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[45]~354_combout\ & !\Div0|auto_generated|divider|divider|StageOut[45]~214_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~354_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~214_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X23_Y22_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[46]~353_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[46]~213_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[46]~353_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[46]~213_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[46]~353_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[46]~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[46]~353_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[46]~213_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X23_Y22_N26
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[47]~352_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[47]~212_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[47]~352_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[47]~212_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X23_Y22_N28
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\);

-- Location: LCCOMB_X22_Y22_N30
\Div0|auto_generated|divider|divider|StageOut[51]~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~356_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((dis_reg(14)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => dis_reg(14),
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~356_combout\);

-- Location: LCCOMB_X23_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[51]~223\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~223_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~223_combout\);

-- Location: LCCOMB_X23_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[50]~224\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~224_combout\ = (dis_reg(13) & \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dis_reg(13),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~224_combout\);

-- Location: LCCOMB_X23_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[50]~225\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~225_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~225_combout\);

-- Location: FF_X25_Y22_N13
\dis_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(12),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(12));

-- Location: LCCOMB_X24_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[49]~227\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~227_combout\ = (dis_reg(12) & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(12),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~227_combout\);

-- Location: LCCOMB_X24_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[49]~226\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~226_combout\ = (dis_reg(12) & \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(12),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~226_combout\);

-- Location: LCCOMB_X23_Y23_N8
\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[49]~227_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~226_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~227_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~226_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~227_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~226_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X23_Y23_N10
\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[50]~224_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[50]~225_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~224_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[50]~225_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[50]~224_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~225_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~224_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~225_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X23_Y23_N12
\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[51]~356_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[51]~223_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[51]~356_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[51]~223_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~356_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[51]~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~356_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~223_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X23_Y22_N4
\Div0|auto_generated|divider|divider|StageOut[54]~220\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~220_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~220_combout\);

-- Location: LCCOMB_X22_Y22_N26
\Div0|auto_generated|divider|divider|StageOut[54]~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~316_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[46]~353_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[46]~353_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~316_combout\);

-- Location: LCCOMB_X23_Y22_N14
\Div0|auto_generated|divider|divider|StageOut[53]~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~317_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[45]~354_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[45]~354_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~317_combout\);

-- Location: LCCOMB_X23_Y22_N10
\Div0|auto_generated|divider|divider|StageOut[53]~221\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~221_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~221_combout\);

-- Location: LCCOMB_X23_Y22_N12
\Div0|auto_generated|divider|divider|StageOut[52]~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~318_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[44]~355_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[44]~355_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~318_combout\);

-- Location: LCCOMB_X23_Y22_N0
\Div0|auto_generated|divider|divider|StageOut[52]~222\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~222_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~222_combout\);

-- Location: LCCOMB_X23_Y23_N14
\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[52]~318_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[52]~318_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~222_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[52]~222_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[52]~318_combout\ & !\Div0|auto_generated|divider|divider|StageOut[52]~222_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~318_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~222_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X23_Y23_N16
\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[53]~317_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~221_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[53]~317_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~221_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~317_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~317_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~221_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X23_Y23_N18
\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[54]~220_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~316_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~220_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~316_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\);

-- Location: LCCOMB_X23_Y23_N20
\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\);

-- Location: LCCOMB_X24_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[61]~228\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~228_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~228_combout\);

-- Location: LCCOMB_X23_Y22_N2
\Div0|auto_generated|divider|divider|StageOut[61]~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~319_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~317_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[53]~317_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~319_combout\);

-- Location: LCCOMB_X23_Y22_N6
\Div0|auto_generated|divider|divider|StageOut[60]~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~320_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~318_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~318_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~320_combout\);

-- Location: LCCOMB_X24_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[60]~229\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~229_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~229_combout\);

-- Location: LCCOMB_X23_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[59]~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~321_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~356_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~356_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~321_combout\);

-- Location: LCCOMB_X23_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[59]~230\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~230_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~230_combout\);

-- Location: LCCOMB_X23_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[58]~231\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~231_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~231_combout\);

-- Location: LCCOMB_X23_Y23_N6
\Div0|auto_generated|divider|divider|StageOut[58]~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~357_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & ((dis_reg(13)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => dis_reg(13),
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~357_combout\);

-- Location: LCCOMB_X25_Y24_N16
\Div0|auto_generated|divider|divider|StageOut[57]~232\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~232_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & dis_reg(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => dis_reg(12),
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~232_combout\);

-- Location: LCCOMB_X24_Y23_N20
\Div0|auto_generated|divider|divider|StageOut[57]~233\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~233_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~233_combout\);

-- Location: FF_X25_Y22_N1
\dis_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(11),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(11));

-- Location: LCCOMB_X24_Y23_N22
\Div0|auto_generated|divider|divider|StageOut[56]~235\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~235_combout\ = (dis_reg(11) & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dis_reg(11),
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~235_combout\);

-- Location: LCCOMB_X25_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[56]~234\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~234_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & dis_reg(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => dis_reg(11),
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~234_combout\);

-- Location: LCCOMB_X24_Y23_N0
\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[56]~235_combout\) # (\Div0|auto_generated|divider|divider|StageOut[56]~234_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[56]~235_combout\) # (\Div0|auto_generated|divider|divider|StageOut[56]~234_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[56]~235_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[56]~234_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X24_Y23_N2
\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[57]~232_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[57]~233_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[57]~232_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[57]~233_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[57]~232_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[57]~233_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[57]~232_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[57]~233_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X24_Y23_N4
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[58]~231_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[58]~357_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[58]~231_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[58]~357_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[58]~231_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[58]~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[58]~231_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[58]~357_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X24_Y23_N6
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[59]~321_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[59]~321_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[59]~230_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[59]~230_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[59]~321_combout\ & !\Div0|auto_generated|divider|divider|StageOut[59]~230_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[59]~321_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~230_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X24_Y23_N8
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[60]~320_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~229_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[60]~320_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~229_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[60]~320_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[60]~320_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[60]~229_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\);

-- Location: LCCOMB_X24_Y23_N10
\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[61]~228_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[61]~319_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[61]~228_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[61]~319_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\);

-- Location: LCCOMB_X24_Y23_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\);

-- Location: LCCOMB_X23_Y23_N22
\Div0|auto_generated|divider|divider|StageOut[67]~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~323_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[59]~321_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[59]~321_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~323_combout\);

-- Location: LCCOMB_X24_Y22_N20
\Div0|auto_generated|divider|divider|StageOut[67]~237\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~237_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~237_combout\);

-- Location: LCCOMB_X23_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[66]~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~324_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[58]~357_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[58]~357_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~324_combout\);

-- Location: LCCOMB_X24_Y27_N28
\Div0|auto_generated|divider|divider|StageOut[66]~238\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~238_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~238_combout\);

-- Location: LCCOMB_X24_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[65]~239\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~239_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~239_combout\);

-- Location: LCCOMB_X24_Y23_N18
\Div0|auto_generated|divider|divider|StageOut[65]~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~358_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & ((dis_reg(12)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datac => dis_reg(12),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~358_combout\);

-- Location: LCCOMB_X24_Y27_N26
\Div0|auto_generated|divider|divider|StageOut[64]~241\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~241_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~241_combout\);

-- Location: LCCOMB_X24_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[64]~240\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~240_combout\ = (dis_reg(11) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dis_reg(11),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~240_combout\);

-- Location: FF_X24_Y22_N11
\dis_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(10),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(10));

-- Location: LCCOMB_X24_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[63]~243\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[63]~243_combout\ = (dis_reg(10) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dis_reg(10),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[63]~243_combout\);

-- Location: LCCOMB_X24_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[63]~242\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[63]~242_combout\ = (dis_reg(10) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dis_reg(10),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[63]~242_combout\);

-- Location: LCCOMB_X24_Y27_N4
\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[63]~243_combout\) # (\Div0|auto_generated|divider|divider|StageOut[63]~242_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[63]~243_combout\) # (\Div0|auto_generated|divider|divider|StageOut[63]~242_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[63]~243_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[63]~242_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X24_Y27_N6
\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[64]~241_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[64]~240_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[64]~241_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[64]~240_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[64]~241_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[64]~240_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[64]~241_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[64]~240_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X24_Y27_N8
\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[65]~239_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[65]~358_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[65]~239_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[65]~358_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[65]~239_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[65]~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[65]~239_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[65]~358_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X24_Y27_N10
\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[66]~324_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[66]~324_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~238_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[66]~238_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[66]~324_combout\ & !\Div0|auto_generated|divider|divider|StageOut[66]~238_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[66]~324_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[66]~238_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X24_Y27_N12
\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[67]~323_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[67]~237_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[67]~323_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[67]~237_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~323_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[67]~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[67]~323_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[67]~237_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\);

-- Location: LCCOMB_X24_Y23_N16
\Div0|auto_generated|divider|divider|StageOut[68]~236\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~236_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~236_combout\);

-- Location: LCCOMB_X24_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[68]~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~322_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[60]~320_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[60]~320_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~322_combout\);

-- Location: LCCOMB_X24_Y27_N14
\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[68]~236_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[68]~322_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[68]~236_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[68]~322_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11_cout\);

-- Location: LCCOMB_X24_Y27_N16
\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\);

-- Location: LCCOMB_X24_Y27_N2
\Div0|auto_generated|divider|divider|StageOut[75]~244\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~244_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~244_combout\);

-- Location: LCCOMB_X24_Y27_N20
\Div0|auto_generated|divider|divider|StageOut[75]~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~325_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~323_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[67]~323_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~325_combout\);

-- Location: LCCOMB_X25_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[74]~245\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~245_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~245_combout\);

-- Location: LCCOMB_X24_Y27_N22
\Div0|auto_generated|divider|divider|StageOut[74]~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~326_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~324_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[66]~324_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~326_combout\);

-- Location: LCCOMB_X24_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[73]~246\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~246_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~246_combout\);

-- Location: LCCOMB_X24_Y27_N24
\Div0|auto_generated|divider|divider|StageOut[73]~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~327_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[65]~358_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[65]~358_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~327_combout\);

-- Location: LCCOMB_X24_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[72]~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~359_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & ((dis_reg(11)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datac => dis_reg(11),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~359_combout\);

-- Location: LCCOMB_X25_Y27_N2
\Div0|auto_generated|divider|divider|StageOut[72]~247\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~247_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~247_combout\);

-- Location: LCCOMB_X24_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[71]~248\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[71]~248_combout\ = (dis_reg(10) & \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dis_reg(10),
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[71]~248_combout\);

-- Location: LCCOMB_X24_Y27_N18
\Div0|auto_generated|divider|divider|StageOut[71]~249\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[71]~249_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[71]~249_combout\);

-- Location: FF_X25_Y23_N31
\dis_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(9),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(9));

-- Location: LCCOMB_X25_Y27_N6
\Div0|auto_generated|divider|divider|StageOut[70]~251\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~251_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & dis_reg(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datad => dis_reg(9),
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~251_combout\);

-- Location: LCCOMB_X25_Y27_N28
\Div0|auto_generated|divider|divider|StageOut[70]~250\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~250_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & dis_reg(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datad => dis_reg(9),
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~250_combout\);

-- Location: LCCOMB_X25_Y27_N10
\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[70]~251_combout\) # (\Div0|auto_generated|divider|divider|StageOut[70]~250_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[70]~251_combout\) # (\Div0|auto_generated|divider|divider|StageOut[70]~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[70]~251_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[70]~250_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X25_Y27_N12
\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[71]~248_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[71]~249_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[71]~248_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[71]~249_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[71]~248_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[71]~249_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[71]~248_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[71]~249_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X25_Y27_N14
\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[72]~359_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[72]~247_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[72]~359_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[72]~247_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[72]~359_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[72]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[72]~359_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[72]~247_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X25_Y27_N16
\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[73]~246_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[73]~246_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[73]~327_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[73]~327_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[73]~246_combout\ & !\Div0|auto_generated|divider|divider|StageOut[73]~327_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[73]~246_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[73]~327_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X25_Y27_N18
\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[74]~245_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[74]~326_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[74]~245_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[74]~326_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~245_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[74]~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[74]~245_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[74]~326_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\);

-- Location: LCCOMB_X25_Y27_N20
\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[75]~244_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[75]~325_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[75]~244_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[75]~325_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\);

-- Location: LCCOMB_X25_Y27_N22
\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\);

-- Location: LCCOMB_X25_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[82]~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~328_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~326_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[74]~326_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~328_combout\);

-- Location: LCCOMB_X24_Y26_N20
\Div0|auto_generated|divider|divider|StageOut[82]~252\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~252_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~252_combout\);

-- Location: LCCOMB_X25_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[81]~253\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~253_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~253_combout\);

-- Location: LCCOMB_X24_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[81]~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~329_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[73]~327_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[73]~327_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~329_combout\);

-- Location: LCCOMB_X25_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[80]~254\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~254_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~254_combout\);

-- Location: LCCOMB_X25_Y27_N24
\Div0|auto_generated|divider|divider|StageOut[80]~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~330_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[72]~359_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[72]~359_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~330_combout\);

-- Location: LCCOMB_X24_Y26_N14
\Div0|auto_generated|divider|divider|StageOut[79]~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[79]~360_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & (dis_reg(10))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dis_reg(10),
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[79]~360_combout\);

-- Location: LCCOMB_X25_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[79]~255\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[79]~255_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[79]~255_combout\);

-- Location: LCCOMB_X25_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[78]~256\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~256_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & dis_reg(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datad => dis_reg(9),
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~256_combout\);

-- Location: LCCOMB_X25_Y27_N8
\Div0|auto_generated|divider|divider|StageOut[78]~257\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~257_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~257_combout\);

-- Location: FF_X25_Y23_N25
\dis_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(8),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(8));

-- Location: LCCOMB_X24_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[77]~259\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~259_combout\ = (dis_reg(8) & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~259_combout\);

-- Location: LCCOMB_X24_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[77]~258\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~258_combout\ = (dis_reg(8) & \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~258_combout\);

-- Location: LCCOMB_X25_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[77]~259_combout\) # (\Div0|auto_generated|divider|divider|StageOut[77]~258_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[77]~259_combout\) # (\Div0|auto_generated|divider|divider|StageOut[77]~258_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[77]~259_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[77]~258_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X25_Y26_N18
\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[78]~256_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[78]~257_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[78]~256_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[78]~257_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[78]~256_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[78]~257_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[78]~256_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[78]~257_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X25_Y26_N20
\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[79]~360_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[79]~255_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[79]~360_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[79]~255_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[79]~360_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[79]~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[79]~360_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[79]~255_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X25_Y26_N22
\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[80]~254_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[80]~254_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[80]~330_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[80]~330_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[80]~254_combout\ & !\Div0|auto_generated|divider|divider|StageOut[80]~330_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[80]~254_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[80]~330_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\);

-- Location: LCCOMB_X25_Y26_N24
\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[81]~253_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[81]~329_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[81]~253_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[81]~329_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[81]~253_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[81]~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[81]~253_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[81]~329_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\);

-- Location: LCCOMB_X25_Y26_N26
\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[82]~328_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[82]~252_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[82]~328_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[82]~252_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11_cout\);

-- Location: LCCOMB_X25_Y26_N28
\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\);

-- Location: LCCOMB_X25_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[89]~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~331_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[81]~329_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[81]~329_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~331_combout\);

-- Location: LCCOMB_X25_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[89]~260\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~260_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~260_combout\);

-- Location: LCCOMB_X25_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[88]~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~332_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[80]~330_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[80]~330_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~332_combout\);

-- Location: LCCOMB_X25_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[88]~261\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~261_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~261_combout\);

-- Location: LCCOMB_X25_Y26_N14
\Div0|auto_generated|divider|divider|StageOut[87]~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~333_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[79]~360_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[79]~360_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~333_combout\);

-- Location: LCCOMB_X26_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[87]~262\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~262_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~262_combout\);

-- Location: LCCOMB_X26_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[86]~263\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~263_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~263_combout\);

-- Location: LCCOMB_X25_Y27_N26
\Div0|auto_generated|divider|divider|StageOut[86]~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~361_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & (dis_reg(9))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datab => dis_reg(9),
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~361_combout\);

-- Location: LCCOMB_X24_Y26_N18
\Div0|auto_generated|divider|divider|StageOut[85]~264\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~264_combout\ = (dis_reg(8) & \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~264_combout\);

-- Location: LCCOMB_X24_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[85]~265\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~265_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~265_combout\);

-- Location: FF_X25_Y23_N15
\dis_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(7),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(7));

-- Location: LCCOMB_X24_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[84]~266\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~266_combout\ = (dis_reg(7) & \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~266_combout\);

-- Location: LCCOMB_X24_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[84]~267\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~267_combout\ = (dis_reg(7) & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~267_combout\);

-- Location: LCCOMB_X26_Y26_N14
\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[84]~266_combout\) # (\Div0|auto_generated|divider|divider|StageOut[84]~267_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[84]~266_combout\) # (\Div0|auto_generated|divider|divider|StageOut[84]~267_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[84]~266_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[84]~267_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X26_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[85]~264_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[85]~265_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[85]~264_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[85]~265_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[85]~264_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[85]~265_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[85]~264_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[85]~265_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X26_Y26_N18
\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[86]~263_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[86]~361_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[86]~263_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[86]~361_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[86]~263_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[86]~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[86]~263_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[86]~361_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X26_Y26_N20
\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[87]~333_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[87]~333_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[87]~262_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[87]~262_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[87]~333_combout\ & !\Div0|auto_generated|divider|divider|StageOut[87]~262_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[87]~333_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[87]~262_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\);

-- Location: LCCOMB_X26_Y26_N22
\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[88]~332_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[88]~261_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[88]~332_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[88]~261_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[88]~332_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[88]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[88]~332_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[88]~261_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\);

-- Location: LCCOMB_X26_Y26_N24
\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[89]~331_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[89]~260_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[89]~331_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[89]~260_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11_cout\);

-- Location: LCCOMB_X26_Y26_N26
\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\);

-- Location: LCCOMB_X26_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[94]~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~270_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~270_combout\);

-- Location: LCCOMB_X26_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[94]~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~336_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[86]~361_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[86]~361_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~336_combout\);

-- Location: LCCOMB_X23_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[93]~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[93]~271_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[93]~271_combout\);

-- Location: LCCOMB_X24_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[93]~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[93]~362_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ & ((dis_reg(8)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	datac => dis_reg(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[93]~362_combout\);

-- Location: LCCOMB_X24_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[92]~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~272_combout\ = (dis_reg(7) & \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~272_combout\);

-- Location: LCCOMB_X23_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[92]~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~273_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~273_combout\);

-- Location: FF_X24_Y23_N21
\dis_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(6),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(6));

-- Location: LCCOMB_X23_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[91]~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~275_combout\ = (dis_reg(6) & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~275_combout\);

-- Location: LCCOMB_X23_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[91]~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~274_combout\ = (dis_reg(6) & \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~274_combout\);

-- Location: LCCOMB_X23_Y26_N8
\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[91]~275_combout\) # (\Div0|auto_generated|divider|divider|StageOut[91]~274_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[91]~275_combout\) # (\Div0|auto_generated|divider|divider|StageOut[91]~274_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[91]~275_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[91]~274_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X23_Y26_N10
\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[92]~272_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[92]~273_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[92]~272_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[92]~273_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[92]~272_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[92]~273_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[92]~272_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[92]~273_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X23_Y26_N12
\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[93]~271_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[93]~362_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[93]~271_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[93]~362_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[93]~271_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[93]~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[93]~271_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[93]~362_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X23_Y26_N14
\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[94]~270_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[94]~270_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[94]~336_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[94]~336_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[94]~270_combout\ & !\Div0|auto_generated|divider|divider|StageOut[94]~336_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[94]~270_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[94]~336_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\);

-- Location: LCCOMB_X25_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[96]~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~334_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[88]~332_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[88]~332_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~334_combout\);

-- Location: LCCOMB_X26_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[96]~268\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~268_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~268_combout\);

-- Location: LCCOMB_X26_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[95]~269\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[95]~269_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[95]~269_combout\);

-- Location: LCCOMB_X26_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[95]~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[95]~335_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[87]~333_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[87]~333_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[95]~335_combout\);

-- Location: LCCOMB_X23_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[95]~269_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[95]~335_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[95]~269_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[95]~335_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[95]~269_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[95]~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[95]~269_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[95]~335_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\);

-- Location: LCCOMB_X23_Y26_N18
\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[96]~334_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[96]~268_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[96]~334_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[96]~268_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11_cout\);

-- Location: LCCOMB_X23_Y26_N20
\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\);

-- Location: LCCOMB_X22_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[102]~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~277_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~277_combout\);

-- Location: LCCOMB_X26_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[102]~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~338_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[94]~336_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[94]~336_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~338_combout\);

-- Location: LCCOMB_X22_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[101]~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~278_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~278_combout\);

-- Location: LCCOMB_X23_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[101]~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~339_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[93]~362_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[93]~362_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~339_combout\);

-- Location: LCCOMB_X24_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[100]~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~363_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ & ((dis_reg(7)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	datac => dis_reg(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~363_combout\);

-- Location: LCCOMB_X22_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[100]~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~279_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~279_combout\);

-- Location: LCCOMB_X23_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[99]~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~281_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~281_combout\);

-- Location: LCCOMB_X23_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[99]~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~280_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ & dis_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	datac => dis_reg(6),
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~280_combout\);

-- Location: FF_X25_Y23_N29
\dis_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(5),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(5));

-- Location: LCCOMB_X22_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[98]~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[98]~282_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ & dis_reg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	datad => dis_reg(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[98]~282_combout\);

-- Location: LCCOMB_X22_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[98]~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[98]~283_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ & dis_reg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	datad => dis_reg(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[98]~283_combout\);

-- Location: LCCOMB_X22_Y26_N14
\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[98]~282_combout\) # (\Div0|auto_generated|divider|divider|StageOut[98]~283_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[98]~282_combout\) # (\Div0|auto_generated|divider|divider|StageOut[98]~283_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[98]~282_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[98]~283_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\);

-- Location: LCCOMB_X22_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[99]~281_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[99]~280_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[99]~281_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[99]~280_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[99]~281_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[99]~280_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[99]~281_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[99]~280_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\);

-- Location: LCCOMB_X22_Y26_N18
\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[100]~363_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[100]~279_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[100]~363_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[100]~279_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[100]~363_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[100]~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[100]~363_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[100]~279_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\);

-- Location: LCCOMB_X22_Y26_N20
\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[101]~278_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[101]~278_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[101]~339_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[101]~339_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[101]~278_combout\ & !\Div0|auto_generated|divider|divider|StageOut[101]~339_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[101]~278_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~339_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\);

-- Location: LCCOMB_X22_Y26_N22
\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[102]~277_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[102]~338_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[102]~277_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[102]~338_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[102]~277_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[102]~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[102]~277_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[102]~338_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\);

-- Location: LCCOMB_X26_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[103]~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~337_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[95]~335_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[95]~335_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~337_combout\);

-- Location: LCCOMB_X23_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[103]~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~276_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~276_combout\);

-- Location: LCCOMB_X22_Y26_N24
\Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[103]~337_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[103]~276_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[103]~337_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[103]~276_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11_cout\);

-- Location: LCCOMB_X22_Y26_N26
\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\);

-- Location: LCCOMB_X22_Y25_N8
\Div0|auto_generated|divider|divider|StageOut[110]~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~284_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~284_combout\);

-- Location: LCCOMB_X22_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[110]~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~340_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[102]~338_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[102]~338_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~340_combout\);

-- Location: LCCOMB_X22_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[109]~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[109]~341_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[101]~339_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~339_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[109]~341_combout\);

-- Location: LCCOMB_X22_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[109]~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[109]~285_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[109]~285_combout\);

-- Location: LCCOMB_X22_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[108]~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~342_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[100]~363_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[100]~363_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~342_combout\);

-- Location: LCCOMB_X22_Y25_N2
\Div0|auto_generated|divider|divider|StageOut[108]~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~286_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~286_combout\);

-- Location: LCCOMB_X23_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[107]~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~364_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ & ((dis_reg(6)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datac => dis_reg(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~364_combout\);

-- Location: LCCOMB_X22_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[107]~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~287_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~287_combout\);

-- Location: LCCOMB_X22_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[106]~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~289_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~289_combout\);

-- Location: LCCOMB_X22_Y27_N18
\Div0|auto_generated|divider|divider|StageOut[106]~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~288_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & dis_reg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datad => dis_reg(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~288_combout\);

-- Location: FF_X24_Y23_N27
\dis_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(4),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(4));

-- Location: LCCOMB_X22_Y27_N8
\Div0|auto_generated|divider|divider|StageOut[105]~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~290_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & dis_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datad => dis_reg(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~290_combout\);

-- Location: LCCOMB_X22_Y27_N6
\Div0|auto_generated|divider|divider|StageOut[105]~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~291_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & dis_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datad => dis_reg(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~291_combout\);

-- Location: LCCOMB_X22_Y25_N10
\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[105]~290_combout\) # (\Div0|auto_generated|divider|divider|StageOut[105]~291_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[105]~290_combout\) # (\Div0|auto_generated|divider|divider|StageOut[105]~291_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[105]~290_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~291_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\);

-- Location: LCCOMB_X22_Y25_N12
\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[106]~289_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[106]~288_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[106]~289_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[106]~288_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[106]~289_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[106]~288_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[106]~289_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[106]~288_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\);

-- Location: LCCOMB_X22_Y25_N14
\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[107]~364_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~287_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[107]~364_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~287_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~364_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[107]~364_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[107]~287_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\);

-- Location: LCCOMB_X22_Y25_N16
\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[108]~342_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[108]~342_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[108]~286_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[108]~286_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[108]~342_combout\ & !\Div0|auto_generated|divider|divider|StageOut[108]~286_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[108]~342_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[108]~286_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\);

-- Location: LCCOMB_X22_Y25_N18
\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[109]~341_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[109]~285_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[109]~341_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[109]~285_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[109]~341_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[109]~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[109]~341_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[109]~285_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\);

-- Location: LCCOMB_X22_Y25_N20
\Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[110]~284_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[110]~340_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[110]~284_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[110]~340_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11_cout\);

-- Location: LCCOMB_X22_Y25_N22
\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\);

-- Location: LCCOMB_X22_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[117]~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~292_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~292_combout\);

-- Location: LCCOMB_X22_Y27_N12
\Div0|auto_generated|divider|divider|StageOut[117]~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~343_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[109]~341_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[109]~341_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~343_combout\);

-- Location: LCCOMB_X22_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[116]~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~293_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~293_combout\);

-- Location: LCCOMB_X22_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[116]~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~344_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[108]~342_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[108]~342_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~344_combout\);

-- Location: LCCOMB_X22_Y25_N6
\Div0|auto_generated|divider|divider|StageOut[115]~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~345_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~364_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[107]~364_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~345_combout\);

-- Location: LCCOMB_X22_Y25_N24
\Div0|auto_generated|divider|divider|StageOut[115]~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~294_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~294_combout\);

-- Location: LCCOMB_X23_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[114]~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~295_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~295_combout\);

-- Location: LCCOMB_X22_Y27_N14
\Div0|auto_generated|divider|divider|StageOut[114]~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~365_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & ((dis_reg(5)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	datad => dis_reg(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~365_combout\);

-- Location: LCCOMB_X22_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[113]~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~297_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~297_combout\);

-- Location: LCCOMB_X22_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[113]~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~296_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & dis_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datac => dis_reg(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~296_combout\);

-- Location: FF_X24_Y23_N13
\dis_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(3),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(3));

-- Location: LCCOMB_X24_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[112]~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~298_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & dis_reg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datad => dis_reg(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~298_combout\);

-- Location: LCCOMB_X23_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[112]~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~299_combout\ = (dis_reg(3) & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dis_reg(3),
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~299_combout\);

-- Location: LCCOMB_X22_Y24_N0
\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[112]~298_combout\) # (\Div0|auto_generated|divider|divider|StageOut[112]~299_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[112]~298_combout\) # (\Div0|auto_generated|divider|divider|StageOut[112]~299_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[112]~298_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[112]~299_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\);

-- Location: LCCOMB_X22_Y24_N2
\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[113]~297_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[113]~296_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~297_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[113]~296_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[113]~297_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~296_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[113]~297_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[113]~296_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\);

-- Location: LCCOMB_X22_Y24_N4
\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[114]~295_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~365_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[114]~295_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~365_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~295_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~295_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[114]~365_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\);

-- Location: LCCOMB_X22_Y24_N6
\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[115]~345_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[115]~345_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[115]~294_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[115]~294_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[115]~345_combout\ & !\Div0|auto_generated|divider|divider|StageOut[115]~294_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[115]~345_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[115]~294_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\);

-- Location: LCCOMB_X22_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[116]~293_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~344_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[116]~293_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~344_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~293_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[116]~293_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[116]~344_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\);

-- Location: LCCOMB_X22_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[117]~292_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[117]~343_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[117]~292_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~343_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\);

-- Location: LCCOMB_X22_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\);

-- Location: LCCOMB_X22_Y25_N26
\Div0|auto_generated|divider|divider|StageOut[123]~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~347_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[115]~345_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[115]~345_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~347_combout\);

-- Location: LCCOMB_X23_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[123]~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~301_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~301_combout\);

-- Location: LCCOMB_X22_Y24_N14
\Div0|auto_generated|divider|divider|StageOut[122]~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~348_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~365_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[114]~365_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~348_combout\);

-- Location: LCCOMB_X23_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[122]~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~302_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~302_combout\);

-- Location: LCCOMB_X23_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[121]~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~303_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~303_combout\);

-- Location: LCCOMB_X22_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[121]~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~366_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & ((dis_reg(4)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	datab => dis_reg(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~366_combout\);

-- Location: LCCOMB_X23_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[120]~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~305_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~305_combout\);

-- Location: LCCOMB_X23_Y27_N16
\Div0|auto_generated|divider|divider|StageOut[120]~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~304_combout\ = (dis_reg(3) & \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dis_reg(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~304_combout\);

-- Location: FF_X25_Y23_N19
\dis_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(2),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(2));

-- Location: LCCOMB_X22_Y24_N16
\Div0|auto_generated|divider|divider|StageOut[119]~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~307_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ & dis_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	datad => dis_reg(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~307_combout\);

-- Location: LCCOMB_X22_Y24_N18
\Div0|auto_generated|divider|divider|StageOut[119]~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~306_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ & dis_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	datad => dis_reg(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~306_combout\);

-- Location: LCCOMB_X23_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[119]~307_combout\) # (\Div0|auto_generated|divider|divider|StageOut[119]~306_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[119]~307_combout\) # (\Div0|auto_generated|divider|divider|StageOut[119]~306_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[119]~307_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[119]~306_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\);

-- Location: LCCOMB_X23_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[120]~305_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[120]~304_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[120]~305_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[120]~304_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[120]~305_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[120]~304_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[120]~305_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[120]~304_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\);

-- Location: LCCOMB_X23_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[121]~303_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[121]~366_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[121]~303_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[121]~366_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[121]~303_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[121]~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[121]~303_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[121]~366_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\);

-- Location: LCCOMB_X23_Y24_N14
\Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[122]~348_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[122]~348_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[122]~302_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[122]~302_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[122]~348_combout\ & !\Div0|auto_generated|divider|divider|StageOut[122]~302_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[122]~348_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[122]~302_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\);

-- Location: LCCOMB_X23_Y24_N16
\Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[123]~347_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[123]~301_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[123]~347_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[123]~301_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[123]~347_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[123]~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[123]~347_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[123]~301_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9\);

-- Location: LCCOMB_X22_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[124]~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~300_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~300_combout\);

-- Location: LCCOMB_X22_Y25_N4
\Div0|auto_generated|divider|divider|StageOut[124]~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~346_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~344_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[116]~344_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~346_combout\);

-- Location: LCCOMB_X23_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[124]~300_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[124]~346_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[124]~300_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[124]~346_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~11_cout\);

-- Location: LCCOMB_X23_Y24_N20
\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\);

-- Location: LCCOMB_X24_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[131]~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~308_combout\ = (\Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~308_combout\);

-- Location: LCCOMB_X22_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[131]~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~349_combout\ = (\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[123]~347_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[123]~347_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~349_combout\);

-- Location: LCCOMB_X23_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[130]~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~350_combout\ = (\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[122]~348_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[122]~348_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~350_combout\);

-- Location: LCCOMB_X24_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[130]~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~309_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~309_combout\);

-- Location: LCCOMB_X23_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[129]~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~351_combout\ = (\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[121]~366_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[121]~366_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~351_combout\);

-- Location: LCCOMB_X24_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[129]~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~310_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~310_combout\);

-- Location: LCCOMB_X24_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[128]~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~311_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~311_combout\);

-- Location: LCCOMB_X23_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[128]~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~367_combout\ = (\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ & ((dis_reg(3)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datac => dis_reg(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~367_combout\);

-- Location: LCCOMB_X24_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[127]~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~312_combout\ = (\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & dis_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datac => dis_reg(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~312_combout\);

-- Location: LCCOMB_X24_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[127]~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~313_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~313_combout\);

-- Location: FF_X24_Y23_N23
\dis_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~inputclkctrl_outclk\,
	asdata => count(1),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \curr_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dis_reg(1));

-- Location: LCCOMB_X24_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[126]~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~315_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & dis_reg(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datac => dis_reg(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~315_combout\);

-- Location: LCCOMB_X24_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[126]~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~314_combout\ = (\Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ & dis_reg(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datac => dis_reg(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~314_combout\);

-- Location: LCCOMB_X24_Y24_N6
\Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[126]~315_combout\) # (\Div0|auto_generated|divider|divider|StageOut[126]~314_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[126]~315_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[126]~314_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\);

-- Location: LCCOMB_X24_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[127]~312_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[127]~313_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[127]~312_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[127]~313_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3_cout\);

-- Location: LCCOMB_X24_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[128]~311_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[128]~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~311_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[128]~367_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5_cout\);

-- Location: LCCOMB_X24_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[129]~351_combout\ & !\Div0|auto_generated|divider|divider|StageOut[129]~310_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~351_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[129]~310_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y24_N14
\Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[130]~350_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[130]~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[130]~350_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[130]~309_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\);

-- Location: LCCOMB_X24_Y24_N16
\Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[131]~308_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[131]~349_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[131]~308_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[131]~349_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11_cout\);

-- Location: LCCOMB_X24_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\);

ww_dis_count(0) <= \dis_count[0]~output_o\;

ww_dis_count(1) <= \dis_count[1]~output_o\;

ww_dis_count(2) <= \dis_count[2]~output_o\;

ww_dis_count(3) <= \dis_count[3]~output_o\;

ww_dis_count(4) <= \dis_count[4]~output_o\;

ww_dis_count(5) <= \dis_count[5]~output_o\;

ww_dis_count(6) <= \dis_count[6]~output_o\;

ww_dis_count(7) <= \dis_count[7]~output_o\;

ww_dis_count(8) <= \dis_count[8]~output_o\;

ww_dis_count(9) <= \dis_count[9]~output_o\;

ww_dis_count(10) <= \dis_count[10]~output_o\;

ww_dis_count(11) <= \dis_count[11]~output_o\;

ww_dis_count(12) <= \dis_count[12]~output_o\;

ww_dis_count(13) <= \dis_count[13]~output_o\;

ww_dis_count(14) <= \dis_count[14]~output_o\;

ww_dis_count(15) <= \dis_count[15]~output_o\;

ww_dis_count(16) <= \dis_count[16]~output_o\;

ww_dis_count(17) <= \dis_count[17]~output_o\;

ww_dis_count(18) <= \dis_count[18]~output_o\;

ww_dis_count(19) <= \dis_count[19]~output_o\;
END structure;


