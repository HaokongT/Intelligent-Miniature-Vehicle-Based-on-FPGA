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

-- DATE "09/09/2025 15:30:10"

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

ENTITY 	everything IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	mode : IN std_logic_vector(1 DOWNTO 0);
	left : OUT std_logic_vector(1 DOWNTO 0);
	right : OUT std_logic_vector(1 DOWNTO 0);
	pwm_value : OUT std_logic_vector(7 DOWNTO 0);
	active : OUT std_logic
	);
END everything;

-- Design Ports Information
-- left[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- active	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF everything IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_left : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_right : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pwm_value : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_active : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \left[0]~output_o\ : std_logic;
SIGNAL \left[1]~output_o\ : std_logic;
SIGNAL \right[0]~output_o\ : std_logic;
SIGNAL \right[1]~output_o\ : std_logic;
SIGNAL \pwm_value[0]~output_o\ : std_logic;
SIGNAL \pwm_value[1]~output_o\ : std_logic;
SIGNAL \pwm_value[2]~output_o\ : std_logic;
SIGNAL \pwm_value[3]~output_o\ : std_logic;
SIGNAL \pwm_value[4]~output_o\ : std_logic;
SIGNAL \pwm_value[5]~output_o\ : std_logic;
SIGNAL \pwm_value[6]~output_o\ : std_logic;
SIGNAL \pwm_value[7]~output_o\ : std_logic;
SIGNAL \active~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \current_state.IDLE~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \left~0_combout\ : std_logic;
SIGNAL \left[0]~reg0_q\ : std_logic;
SIGNAL \timer[0]~34_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \timer[25]~85\ : std_logic;
SIGNAL \timer[26]~86_combout\ : std_logic;
SIGNAL \timer[26]~87\ : std_logic;
SIGNAL \timer[27]~89_combout\ : std_logic;
SIGNAL \timer[27]~90\ : std_logic;
SIGNAL \timer[28]~91_combout\ : std_logic;
SIGNAL \timer[28]~92\ : std_logic;
SIGNAL \timer[29]~93_combout\ : std_logic;
SIGNAL \timer[29]~94\ : std_logic;
SIGNAL \timer[30]~95_combout\ : std_logic;
SIGNAL \timer[30]~96\ : std_logic;
SIGNAL \timer[31]~97_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \current_state~44_combout\ : std_logic;
SIGNAL \current_state~41_combout\ : std_logic;
SIGNAL \current_state.RIGHT_200MS_3~q\ : std_logic;
SIGNAL \current_state~34_combout\ : std_logic;
SIGNAL \current_state~43_combout\ : std_logic;
SIGNAL \current_state~37_combout\ : std_logic;
SIGNAL \current_state.FORWARD_2S_4~q\ : std_logic;
SIGNAL \current_state~38_combout\ : std_logic;
SIGNAL \current_state.RIGHT_200MS_4~q\ : std_logic;
SIGNAL \current_state~42_combout\ : std_logic;
SIGNAL \right~5_combout\ : std_logic;
SIGNAL \current_state~33_combout\ : std_logic;
SIGNAL \current_state.FORWARD_2S~q\ : std_logic;
SIGNAL \current_state~39_combout\ : std_logic;
SIGNAL \current_state.RIGHT_200MS~q\ : std_logic;
SIGNAL \pwm_value~0_combout\ : std_logic;
SIGNAL \timer[9]~88_combout\ : std_logic;
SIGNAL \timer[9]~99_combout\ : std_logic;
SIGNAL \timer[0]~35\ : std_logic;
SIGNAL \timer[1]~36_combout\ : std_logic;
SIGNAL \timer[1]~37\ : std_logic;
SIGNAL \timer[2]~38_combout\ : std_logic;
SIGNAL \timer[2]~39\ : std_logic;
SIGNAL \timer[3]~40_combout\ : std_logic;
SIGNAL \timer[3]~41\ : std_logic;
SIGNAL \timer[4]~42_combout\ : std_logic;
SIGNAL \timer[4]~43\ : std_logic;
SIGNAL \timer[5]~44_combout\ : std_logic;
SIGNAL \timer[5]~45\ : std_logic;
SIGNAL \timer[6]~46_combout\ : std_logic;
SIGNAL \timer[6]~47\ : std_logic;
SIGNAL \timer[7]~48_combout\ : std_logic;
SIGNAL \timer[7]~49\ : std_logic;
SIGNAL \timer[8]~50_combout\ : std_logic;
SIGNAL \timer[8]~51\ : std_logic;
SIGNAL \timer[9]~52_combout\ : std_logic;
SIGNAL \timer[9]~53\ : std_logic;
SIGNAL \timer[10]~54_combout\ : std_logic;
SIGNAL \timer[10]~55\ : std_logic;
SIGNAL \timer[11]~56_combout\ : std_logic;
SIGNAL \timer[11]~57\ : std_logic;
SIGNAL \timer[12]~58_combout\ : std_logic;
SIGNAL \timer[12]~59\ : std_logic;
SIGNAL \timer[13]~60_combout\ : std_logic;
SIGNAL \timer[13]~61\ : std_logic;
SIGNAL \timer[14]~62_combout\ : std_logic;
SIGNAL \timer[14]~63\ : std_logic;
SIGNAL \timer[15]~64_combout\ : std_logic;
SIGNAL \timer[15]~65\ : std_logic;
SIGNAL \timer[16]~66_combout\ : std_logic;
SIGNAL \timer[16]~67\ : std_logic;
SIGNAL \timer[17]~68_combout\ : std_logic;
SIGNAL \timer[17]~69\ : std_logic;
SIGNAL \timer[18]~70_combout\ : std_logic;
SIGNAL \timer[18]~71\ : std_logic;
SIGNAL \timer[19]~72_combout\ : std_logic;
SIGNAL \timer[19]~73\ : std_logic;
SIGNAL \timer[20]~74_combout\ : std_logic;
SIGNAL \timer[20]~75\ : std_logic;
SIGNAL \timer[21]~76_combout\ : std_logic;
SIGNAL \timer[21]~77\ : std_logic;
SIGNAL \timer[22]~78_combout\ : std_logic;
SIGNAL \timer[22]~79\ : std_logic;
SIGNAL \timer[23]~80_combout\ : std_logic;
SIGNAL \timer[23]~81\ : std_logic;
SIGNAL \timer[24]~82_combout\ : std_logic;
SIGNAL \timer[24]~83\ : std_logic;
SIGNAL \timer[25]~84_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \current_state~45_combout\ : std_logic;
SIGNAL \current_state~35_combout\ : std_logic;
SIGNAL \current_state.FORWARD_2S_2~q\ : std_logic;
SIGNAL \current_state~40_combout\ : std_logic;
SIGNAL \current_state.RIGHT_200MS_2~q\ : std_logic;
SIGNAL \current_state~36_combout\ : std_logic;
SIGNAL \current_state.FORWARD_2S_3~q\ : std_logic;
SIGNAL \right~4_combout\ : std_logic;
SIGNAL \right~6_combout\ : std_logic;
SIGNAL \right[0]~reg0_q\ : std_logic;
SIGNAL \pwm_value~1_combout\ : std_logic;
SIGNAL \pwm_value[0]~reg0_q\ : std_logic;
SIGNAL \right~7_combout\ : std_logic;
SIGNAL \pwm_value[2]~reg0_q\ : std_logic;
SIGNAL \active~reg0feeder_combout\ : std_logic;
SIGNAL \active~reg0_q\ : std_logic;
SIGNAL timer : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_pwm_value[2]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_mode <= mode;
left <= ww_left;
right <= ww_right;
pwm_value <= ww_pwm_value;
active <= ww_active;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_pwm_value[2]~reg0_q\ <= NOT \pwm_value[2]~reg0_q\;

-- Location: IOOBUF_X14_Y31_N9
\left[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left[0]~reg0_q\,
	devoe => ww_devoe,
	o => \left[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\left[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \left[1]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\right[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right[0]~reg0_q\,
	devoe => ww_devoe,
	o => \right[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\right[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_value[0]~reg0_q\,
	devoe => ww_devoe,
	o => \right[1]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\pwm_value[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_value[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\pwm_value[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pwm_value[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\pwm_value[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\pwm_value[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_value[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\pwm_value[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_value[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\pwm_value[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\pwm_value[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[6]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\pwm_value[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pwm_value[7]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\active~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \active~reg0_q\,
	devoe => ww_devoe,
	o => \active~output_o\);

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

-- Location: IOIBUF_X20_Y31_N8
\mode[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(0),
	o => \mode[0]~input_o\);

-- Location: IOIBUF_X20_Y31_N1
\mode[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(1),
	o => \mode[1]~input_o\);

-- Location: LCCOMB_X18_Y30_N18
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\mode[1]~input_o\ & !\mode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode[1]~input_o\,
	datad => \mode[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y29_N18
\current_state.IDLE~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.IDLE~feeder_combout\ = \Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~0_combout\,
	combout => \current_state.IDLE~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X19_Y29_N19
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.IDLE~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X19_Y29_N20
\left~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left~0_combout\ = (!\mode[0]~input_o\ & (\mode[1]~input_o\ & ((\left[0]~reg0_q\) # (\current_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \left[0]~reg0_q\,
	datad => \current_state.IDLE~q\,
	combout => \left~0_combout\);

-- Location: FF_X19_Y29_N21
\left[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left[0]~reg0_q\);

-- Location: LCCOMB_X20_Y30_N0
\timer[0]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[0]~34_combout\ = timer(0) $ (VCC)
-- \timer[0]~35\ = CARRY(timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(0),
	datad => VCC,
	combout => \timer[0]~34_combout\,
	cout => \timer[0]~35\);

-- Location: LCCOMB_X19_Y29_N2
\LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (timer(19) & (timer(20) & (timer(21) & timer(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(19),
	datab => timer(20),
	datac => timer(21),
	datad => timer(18),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X19_Y30_N24
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!timer(23) & (!timer(22) & (!timer(24) & !timer(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(23),
	datab => timer(22),
	datac => timer(24),
	datad => timer(25),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y30_N26
\LessThan1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((!timer(10) & (!timer(8) & !timer(9)))) # (!timer(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(10),
	datab => timer(8),
	datac => timer(11),
	datad => timer(9),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y30_N12
\LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!timer(12) & (!timer(13) & (!timer(15) & !timer(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(12),
	datab => timer(13),
	datac => timer(15),
	datad => timer(14),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X19_Y30_N22
\LessThan1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (timer(17)) # ((timer(16) & ((!\LessThan1~3_combout\) # (!\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(17),
	datab => timer(16),
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X20_Y29_N18
\timer[25]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[25]~84_combout\ = (timer(25) & (!\timer[24]~83\)) # (!timer(25) & ((\timer[24]~83\) # (GND)))
-- \timer[25]~85\ = CARRY((!\timer[24]~83\) # (!timer(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(25),
	datad => VCC,
	cin => \timer[24]~83\,
	combout => \timer[25]~84_combout\,
	cout => \timer[25]~85\);

-- Location: LCCOMB_X20_Y29_N20
\timer[26]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[26]~86_combout\ = (timer(26) & (\timer[25]~85\ $ (GND))) # (!timer(26) & (!\timer[25]~85\ & VCC))
-- \timer[26]~87\ = CARRY((timer(26) & !\timer[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(26),
	datad => VCC,
	cin => \timer[25]~85\,
	combout => \timer[26]~86_combout\,
	cout => \timer[26]~87\);

-- Location: FF_X20_Y29_N21
\timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[26]~86_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(26));

-- Location: LCCOMB_X20_Y29_N22
\timer[27]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[27]~89_combout\ = (timer(27) & (!\timer[26]~87\)) # (!timer(27) & ((\timer[26]~87\) # (GND)))
-- \timer[27]~90\ = CARRY((!\timer[26]~87\) # (!timer(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(27),
	datad => VCC,
	cin => \timer[26]~87\,
	combout => \timer[27]~89_combout\,
	cout => \timer[27]~90\);

-- Location: FF_X20_Y29_N23
\timer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[27]~89_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(27));

-- Location: LCCOMB_X20_Y29_N24
\timer[28]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[28]~91_combout\ = (timer(28) & (\timer[27]~90\ $ (GND))) # (!timer(28) & (!\timer[27]~90\ & VCC))
-- \timer[28]~92\ = CARRY((timer(28) & !\timer[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(28),
	datad => VCC,
	cin => \timer[27]~90\,
	combout => \timer[28]~91_combout\,
	cout => \timer[28]~92\);

-- Location: FF_X20_Y29_N25
\timer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[28]~91_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(28));

-- Location: LCCOMB_X20_Y29_N26
\timer[29]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[29]~93_combout\ = (timer(29) & (!\timer[28]~92\)) # (!timer(29) & ((\timer[28]~92\) # (GND)))
-- \timer[29]~94\ = CARRY((!\timer[28]~92\) # (!timer(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(29),
	datad => VCC,
	cin => \timer[28]~92\,
	combout => \timer[29]~93_combout\,
	cout => \timer[29]~94\);

-- Location: FF_X20_Y29_N27
\timer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[29]~93_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(29));

-- Location: LCCOMB_X20_Y29_N28
\timer[30]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[30]~95_combout\ = (timer(30) & (\timer[29]~94\ $ (GND))) # (!timer(30) & (!\timer[29]~94\ & VCC))
-- \timer[30]~96\ = CARRY((timer(30) & !\timer[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(30),
	datad => VCC,
	cin => \timer[29]~94\,
	combout => \timer[30]~95_combout\,
	cout => \timer[30]~96\);

-- Location: FF_X20_Y29_N29
\timer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[30]~95_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(30));

-- Location: LCCOMB_X20_Y29_N30
\timer[31]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[31]~97_combout\ = timer(31) $ (\timer[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(31),
	cin => \timer[30]~96\,
	combout => \timer[31]~97_combout\);

-- Location: FF_X20_Y29_N31
\timer[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[31]~97_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(31));

-- Location: LCCOMB_X19_Y30_N28
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!timer(28) & (!timer(26) & (!timer(27) & !timer(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(28),
	datab => timer(26),
	datac => timer(27),
	datad => timer(29),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y30_N18
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!timer(31) & (!timer(30) & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(31),
	datac => timer(30),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y30_N8
\LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\LessThan1~0_combout\ & (\LessThan0~1_combout\ & ((!\LessThan1~4_combout\) # (!\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X18_Y29_N24
\current_state~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~44_combout\ = (!\mode[0]~input_o\ & (\LessThan1~5_combout\ & \mode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datac => \LessThan1~5_combout\,
	datad => \mode[1]~input_o\,
	combout => \current_state~44_combout\);

-- Location: LCCOMB_X18_Y29_N14
\current_state~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~41_combout\ = (\current_state~45_combout\ & ((\current_state.FORWARD_2S_3~q\) # ((\current_state.RIGHT_200MS_3~q\ & \current_state~44_combout\)))) # (!\current_state~45_combout\ & (((\current_state.RIGHT_200MS_3~q\ & 
-- \current_state~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~45_combout\,
	datab => \current_state.FORWARD_2S_3~q\,
	datac => \current_state.RIGHT_200MS_3~q\,
	datad => \current_state~44_combout\,
	combout => \current_state~41_combout\);

-- Location: FF_X18_Y29_N15
\current_state.RIGHT_200MS_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~41_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RIGHT_200MS_3~q\);

-- Location: LCCOMB_X18_Y29_N18
\current_state~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~34_combout\ = (!\mode[0]~input_o\ & (!\LessThan1~5_combout\ & \mode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datac => \LessThan1~5_combout\,
	datad => \mode[1]~input_o\,
	combout => \current_state~34_combout\);

-- Location: LCCOMB_X18_Y29_N2
\current_state~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~43_combout\ = (!\mode[0]~input_o\ & (\mode[1]~input_o\ & \LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \LessThan0~8_combout\,
	combout => \current_state~43_combout\);

-- Location: LCCOMB_X18_Y29_N8
\current_state~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~37_combout\ = (\current_state.RIGHT_200MS_3~q\ & ((\current_state~34_combout\) # ((\current_state.FORWARD_2S_4~q\ & \current_state~43_combout\)))) # (!\current_state.RIGHT_200MS_3~q\ & (((\current_state.FORWARD_2S_4~q\ & 
-- \current_state~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RIGHT_200MS_3~q\,
	datab => \current_state~34_combout\,
	datac => \current_state.FORWARD_2S_4~q\,
	datad => \current_state~43_combout\,
	combout => \current_state~37_combout\);

-- Location: FF_X18_Y29_N9
\current_state.FORWARD_2S_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~37_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FORWARD_2S_4~q\);

-- Location: LCCOMB_X18_Y29_N20
\current_state~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~38_combout\ = (\current_state~45_combout\ & ((\current_state.FORWARD_2S_4~q\) # ((\current_state.RIGHT_200MS_4~q\ & \current_state~44_combout\)))) # (!\current_state~45_combout\ & (((\current_state.RIGHT_200MS_4~q\ & 
-- \current_state~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~45_combout\,
	datab => \current_state.FORWARD_2S_4~q\,
	datac => \current_state.RIGHT_200MS_4~q\,
	datad => \current_state~44_combout\,
	combout => \current_state~38_combout\);

-- Location: FF_X18_Y29_N21
\current_state.RIGHT_200MS_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~38_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RIGHT_200MS_4~q\);

-- Location: LCCOMB_X18_Y29_N12
\current_state~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~42_combout\ = (!\mode[0]~input_o\ & (\current_state.RIGHT_200MS_4~q\ & (!\LessThan1~5_combout\ & \mode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \current_state.RIGHT_200MS_4~q\,
	datac => \LessThan1~5_combout\,
	datad => \mode[1]~input_o\,
	combout => \current_state~42_combout\);

-- Location: LCCOMB_X19_Y29_N28
\right~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right~5_combout\ = ((\mode[0]~input_o\) # (\current_state.IDLE~q\)) # (!\mode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode[1]~input_o\,
	datac => \mode[0]~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \right~5_combout\);

-- Location: LCCOMB_X18_Y29_N6
\current_state~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~33_combout\ = (\current_state~42_combout\) # (((\current_state.FORWARD_2S~q\ & \current_state~43_combout\)) # (!\right~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~42_combout\,
	datab => \right~5_combout\,
	datac => \current_state.FORWARD_2S~q\,
	datad => \current_state~43_combout\,
	combout => \current_state~33_combout\);

-- Location: FF_X18_Y29_N7
\current_state.FORWARD_2S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~33_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FORWARD_2S~q\);

-- Location: LCCOMB_X18_Y29_N26
\current_state~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~39_combout\ = (\current_state~45_combout\ & ((\current_state.FORWARD_2S~q\) # ((\current_state.RIGHT_200MS~q\ & \current_state~44_combout\)))) # (!\current_state~45_combout\ & (((\current_state.RIGHT_200MS~q\ & 
-- \current_state~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~45_combout\,
	datab => \current_state.FORWARD_2S~q\,
	datac => \current_state.RIGHT_200MS~q\,
	datad => \current_state~44_combout\,
	combout => \current_state~39_combout\);

-- Location: FF_X18_Y29_N27
\current_state.RIGHT_200MS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~39_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RIGHT_200MS~q\);

-- Location: LCCOMB_X18_Y29_N4
\pwm_value~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pwm_value~0_combout\ = (!\current_state.RIGHT_200MS~q\ & (!\current_state.RIGHT_200MS_4~q\ & (!\current_state.RIGHT_200MS_3~q\ & !\current_state.RIGHT_200MS_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RIGHT_200MS~q\,
	datab => \current_state.RIGHT_200MS_4~q\,
	datac => \current_state.RIGHT_200MS_3~q\,
	datad => \current_state.RIGHT_200MS_2~q\,
	combout => \pwm_value~0_combout\);

-- Location: LCCOMB_X19_Y30_N16
\timer[9]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[9]~88_combout\ = (\right~4_combout\ & (!\pwm_value~0_combout\ & (\LessThan1~5_combout\))) # (!\right~4_combout\ & ((\LessThan0~8_combout\) # ((!\pwm_value~0_combout\ & \LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right~4_combout\,
	datab => \pwm_value~0_combout\,
	datac => \LessThan1~5_combout\,
	datad => \LessThan0~8_combout\,
	combout => \timer[9]~88_combout\);

-- Location: LCCOMB_X19_Y30_N30
\timer[9]~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[9]~99_combout\ = (\mode[0]~input_o\) # (((!\timer[9]~88_combout\) # (!\mode[1]~input_o\)) # (!\current_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \current_state.IDLE~q\,
	datac => \mode[1]~input_o\,
	datad => \timer[9]~88_combout\,
	combout => \timer[9]~99_combout\);

-- Location: FF_X20_Y30_N1
\timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[0]~34_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(0));

-- Location: LCCOMB_X20_Y30_N2
\timer[1]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[1]~36_combout\ = (timer(1) & (!\timer[0]~35\)) # (!timer(1) & ((\timer[0]~35\) # (GND)))
-- \timer[1]~37\ = CARRY((!\timer[0]~35\) # (!timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(1),
	datad => VCC,
	cin => \timer[0]~35\,
	combout => \timer[1]~36_combout\,
	cout => \timer[1]~37\);

-- Location: FF_X20_Y30_N3
\timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[1]~36_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(1));

-- Location: LCCOMB_X20_Y30_N4
\timer[2]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[2]~38_combout\ = (timer(2) & (\timer[1]~37\ $ (GND))) # (!timer(2) & (!\timer[1]~37\ & VCC))
-- \timer[2]~39\ = CARRY((timer(2) & !\timer[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(2),
	datad => VCC,
	cin => \timer[1]~37\,
	combout => \timer[2]~38_combout\,
	cout => \timer[2]~39\);

-- Location: FF_X20_Y30_N5
\timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[2]~38_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(2));

-- Location: LCCOMB_X20_Y30_N6
\timer[3]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[3]~40_combout\ = (timer(3) & (!\timer[2]~39\)) # (!timer(3) & ((\timer[2]~39\) # (GND)))
-- \timer[3]~41\ = CARRY((!\timer[2]~39\) # (!timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datad => VCC,
	cin => \timer[2]~39\,
	combout => \timer[3]~40_combout\,
	cout => \timer[3]~41\);

-- Location: FF_X20_Y30_N7
\timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[3]~40_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(3));

-- Location: LCCOMB_X20_Y30_N8
\timer[4]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[4]~42_combout\ = (timer(4) & (\timer[3]~41\ $ (GND))) # (!timer(4) & (!\timer[3]~41\ & VCC))
-- \timer[4]~43\ = CARRY((timer(4) & !\timer[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(4),
	datad => VCC,
	cin => \timer[3]~41\,
	combout => \timer[4]~42_combout\,
	cout => \timer[4]~43\);

-- Location: FF_X20_Y30_N9
\timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[4]~42_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(4));

-- Location: LCCOMB_X20_Y30_N10
\timer[5]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[5]~44_combout\ = (timer(5) & (!\timer[4]~43\)) # (!timer(5) & ((\timer[4]~43\) # (GND)))
-- \timer[5]~45\ = CARRY((!\timer[4]~43\) # (!timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(5),
	datad => VCC,
	cin => \timer[4]~43\,
	combout => \timer[5]~44_combout\,
	cout => \timer[5]~45\);

-- Location: FF_X20_Y30_N11
\timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[5]~44_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(5));

-- Location: LCCOMB_X20_Y30_N12
\timer[6]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[6]~46_combout\ = (timer(6) & (\timer[5]~45\ $ (GND))) # (!timer(6) & (!\timer[5]~45\ & VCC))
-- \timer[6]~47\ = CARRY((timer(6) & !\timer[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(6),
	datad => VCC,
	cin => \timer[5]~45\,
	combout => \timer[6]~46_combout\,
	cout => \timer[6]~47\);

-- Location: FF_X20_Y30_N13
\timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[6]~46_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(6));

-- Location: LCCOMB_X20_Y30_N14
\timer[7]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[7]~48_combout\ = (timer(7) & (!\timer[6]~47\)) # (!timer(7) & ((\timer[6]~47\) # (GND)))
-- \timer[7]~49\ = CARRY((!\timer[6]~47\) # (!timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(7),
	datad => VCC,
	cin => \timer[6]~47\,
	combout => \timer[7]~48_combout\,
	cout => \timer[7]~49\);

-- Location: FF_X20_Y30_N15
\timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[7]~48_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(7));

-- Location: LCCOMB_X20_Y30_N16
\timer[8]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[8]~50_combout\ = (timer(8) & (\timer[7]~49\ $ (GND))) # (!timer(8) & (!\timer[7]~49\ & VCC))
-- \timer[8]~51\ = CARRY((timer(8) & !\timer[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(8),
	datad => VCC,
	cin => \timer[7]~49\,
	combout => \timer[8]~50_combout\,
	cout => \timer[8]~51\);

-- Location: FF_X20_Y30_N17
\timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[8]~50_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(8));

-- Location: LCCOMB_X20_Y30_N18
\timer[9]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[9]~52_combout\ = (timer(9) & (!\timer[8]~51\)) # (!timer(9) & ((\timer[8]~51\) # (GND)))
-- \timer[9]~53\ = CARRY((!\timer[8]~51\) # (!timer(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(9),
	datad => VCC,
	cin => \timer[8]~51\,
	combout => \timer[9]~52_combout\,
	cout => \timer[9]~53\);

-- Location: FF_X20_Y30_N19
\timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[9]~52_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(9));

-- Location: LCCOMB_X20_Y30_N20
\timer[10]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[10]~54_combout\ = (timer(10) & (\timer[9]~53\ $ (GND))) # (!timer(10) & (!\timer[9]~53\ & VCC))
-- \timer[10]~55\ = CARRY((timer(10) & !\timer[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(10),
	datad => VCC,
	cin => \timer[9]~53\,
	combout => \timer[10]~54_combout\,
	cout => \timer[10]~55\);

-- Location: FF_X20_Y30_N21
\timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[10]~54_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(10));

-- Location: LCCOMB_X20_Y30_N22
\timer[11]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[11]~56_combout\ = (timer(11) & (!\timer[10]~55\)) # (!timer(11) & ((\timer[10]~55\) # (GND)))
-- \timer[11]~57\ = CARRY((!\timer[10]~55\) # (!timer(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(11),
	datad => VCC,
	cin => \timer[10]~55\,
	combout => \timer[11]~56_combout\,
	cout => \timer[11]~57\);

-- Location: FF_X20_Y30_N23
\timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[11]~56_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(11));

-- Location: LCCOMB_X20_Y30_N24
\timer[12]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[12]~58_combout\ = (timer(12) & (\timer[11]~57\ $ (GND))) # (!timer(12) & (!\timer[11]~57\ & VCC))
-- \timer[12]~59\ = CARRY((timer(12) & !\timer[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(12),
	datad => VCC,
	cin => \timer[11]~57\,
	combout => \timer[12]~58_combout\,
	cout => \timer[12]~59\);

-- Location: FF_X19_Y30_N21
\timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[12]~58_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(12));

-- Location: LCCOMB_X20_Y30_N26
\timer[13]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[13]~60_combout\ = (timer(13) & (!\timer[12]~59\)) # (!timer(13) & ((\timer[12]~59\) # (GND)))
-- \timer[13]~61\ = CARRY((!\timer[12]~59\) # (!timer(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datad => VCC,
	cin => \timer[12]~59\,
	combout => \timer[13]~60_combout\,
	cout => \timer[13]~61\);

-- Location: FF_X20_Y30_N27
\timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[13]~60_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(13));

-- Location: LCCOMB_X20_Y30_N28
\timer[14]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[14]~62_combout\ = (timer(14) & (\timer[13]~61\ $ (GND))) # (!timer(14) & (!\timer[13]~61\ & VCC))
-- \timer[14]~63\ = CARRY((timer(14) & !\timer[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(14),
	datad => VCC,
	cin => \timer[13]~61\,
	combout => \timer[14]~62_combout\,
	cout => \timer[14]~63\);

-- Location: FF_X20_Y30_N29
\timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[14]~62_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(14));

-- Location: LCCOMB_X20_Y30_N30
\timer[15]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[15]~64_combout\ = (timer(15) & (!\timer[14]~63\)) # (!timer(15) & ((\timer[14]~63\) # (GND)))
-- \timer[15]~65\ = CARRY((!\timer[14]~63\) # (!timer(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(15),
	datad => VCC,
	cin => \timer[14]~63\,
	combout => \timer[15]~64_combout\,
	cout => \timer[15]~65\);

-- Location: FF_X19_Y30_N3
\timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[15]~64_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(15));

-- Location: LCCOMB_X20_Y29_N0
\timer[16]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[16]~66_combout\ = (timer(16) & (\timer[15]~65\ $ (GND))) # (!timer(16) & (!\timer[15]~65\ & VCC))
-- \timer[16]~67\ = CARRY((timer(16) & !\timer[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(16),
	datad => VCC,
	cin => \timer[15]~65\,
	combout => \timer[16]~66_combout\,
	cout => \timer[16]~67\);

-- Location: FF_X20_Y29_N1
\timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[16]~66_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(16));

-- Location: LCCOMB_X20_Y29_N2
\timer[17]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[17]~68_combout\ = (timer(17) & (!\timer[16]~67\)) # (!timer(17) & ((\timer[16]~67\) # (GND)))
-- \timer[17]~69\ = CARRY((!\timer[16]~67\) # (!timer(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(17),
	datad => VCC,
	cin => \timer[16]~67\,
	combout => \timer[17]~68_combout\,
	cout => \timer[17]~69\);

-- Location: FF_X20_Y29_N3
\timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[17]~68_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(17));

-- Location: LCCOMB_X20_Y29_N4
\timer[18]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[18]~70_combout\ = (timer(18) & (\timer[17]~69\ $ (GND))) # (!timer(18) & (!\timer[17]~69\ & VCC))
-- \timer[18]~71\ = CARRY((timer(18) & !\timer[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(18),
	datad => VCC,
	cin => \timer[17]~69\,
	combout => \timer[18]~70_combout\,
	cout => \timer[18]~71\);

-- Location: FF_X20_Y29_N5
\timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[18]~70_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(18));

-- Location: LCCOMB_X20_Y29_N6
\timer[19]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[19]~72_combout\ = (timer(19) & (!\timer[18]~71\)) # (!timer(19) & ((\timer[18]~71\) # (GND)))
-- \timer[19]~73\ = CARRY((!\timer[18]~71\) # (!timer(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(19),
	datad => VCC,
	cin => \timer[18]~71\,
	combout => \timer[19]~72_combout\,
	cout => \timer[19]~73\);

-- Location: FF_X19_Y29_N31
\timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[19]~72_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(19));

-- Location: LCCOMB_X20_Y29_N8
\timer[20]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[20]~74_combout\ = (timer(20) & (\timer[19]~73\ $ (GND))) # (!timer(20) & (!\timer[19]~73\ & VCC))
-- \timer[20]~75\ = CARRY((timer(20) & !\timer[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(20),
	datad => VCC,
	cin => \timer[19]~73\,
	combout => \timer[20]~74_combout\,
	cout => \timer[20]~75\);

-- Location: FF_X19_Y29_N1
\timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[20]~74_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(20));

-- Location: LCCOMB_X20_Y29_N10
\timer[21]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[21]~76_combout\ = (timer(21) & (!\timer[20]~75\)) # (!timer(21) & ((\timer[20]~75\) # (GND)))
-- \timer[21]~77\ = CARRY((!\timer[20]~75\) # (!timer(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(21),
	datad => VCC,
	cin => \timer[20]~75\,
	combout => \timer[21]~76_combout\,
	cout => \timer[21]~77\);

-- Location: FF_X20_Y29_N11
\timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[21]~76_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(21));

-- Location: LCCOMB_X20_Y29_N12
\timer[22]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[22]~78_combout\ = (timer(22) & (\timer[21]~77\ $ (GND))) # (!timer(22) & (!\timer[21]~77\ & VCC))
-- \timer[22]~79\ = CARRY((timer(22) & !\timer[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(22),
	datad => VCC,
	cin => \timer[21]~77\,
	combout => \timer[22]~78_combout\,
	cout => \timer[22]~79\);

-- Location: FF_X20_Y29_N13
\timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[22]~78_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(22));

-- Location: LCCOMB_X20_Y29_N14
\timer[23]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[23]~80_combout\ = (timer(23) & (!\timer[22]~79\)) # (!timer(23) & ((\timer[22]~79\) # (GND)))
-- \timer[23]~81\ = CARRY((!\timer[22]~79\) # (!timer(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(23),
	datad => VCC,
	cin => \timer[22]~79\,
	combout => \timer[23]~80_combout\,
	cout => \timer[23]~81\);

-- Location: FF_X20_Y29_N15
\timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[23]~80_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(23));

-- Location: LCCOMB_X20_Y29_N16
\timer[24]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[24]~82_combout\ = (timer(24) & (\timer[23]~81\ $ (GND))) # (!timer(24) & (!\timer[23]~81\ & VCC))
-- \timer[24]~83\ = CARRY((timer(24) & !\timer[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(24),
	datad => VCC,
	cin => \timer[23]~81\,
	combout => \timer[24]~82_combout\,
	cout => \timer[24]~83\);

-- Location: FF_X20_Y29_N17
\timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[24]~82_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(24));

-- Location: FF_X20_Y29_N19
\timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[25]~84_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[9]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(25));

-- Location: LCCOMB_X19_Y30_N0
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!timer(23) & (!timer(24) & ((!timer(21)) # (!timer(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(23),
	datab => timer(22),
	datac => timer(24),
	datad => timer(21),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X19_Y30_N4
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((!timer(14) & (!timer(16) & !timer(15)))) # (!timer(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(14),
	datab => timer(16),
	datac => timer(15),
	datad => timer(17),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X19_Y30_N14
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!timer(23) & (!timer(19) & (!timer(24) & !timer(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(23),
	datab => timer(19),
	datac => timer(24),
	datad => timer(18),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y30_N20
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((!timer(10) & !timer(9))) # (!timer(11))) # (!timer(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(10),
	datab => timer(9),
	datac => timer(12),
	datad => timer(11),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y30_N2
\LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!timer(16) & (!timer(13) & (!timer(15) & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(16),
	datab => timer(13),
	datac => timer(15),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y30_N10
\LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!timer(20) & (\LessThan0~2_combout\ & ((\LessThan0~5_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(20),
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y30_N6
\LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~1_combout\ & (((\LessThan0~7_combout\) # (\LessThan0~6_combout\)) # (!timer(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(25),
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X18_Y29_N10
\current_state~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~45_combout\ = (!\mode[0]~input_o\ & (\mode[1]~input_o\ & !\LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \LessThan0~8_combout\,
	combout => \current_state~45_combout\);

-- Location: LCCOMB_X18_Y29_N28
\current_state~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~35_combout\ = (\current_state.RIGHT_200MS~q\ & ((\current_state~34_combout\) # ((\current_state.FORWARD_2S_2~q\ & \current_state~43_combout\)))) # (!\current_state.RIGHT_200MS~q\ & (((\current_state.FORWARD_2S_2~q\ & 
-- \current_state~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RIGHT_200MS~q\,
	datab => \current_state~34_combout\,
	datac => \current_state.FORWARD_2S_2~q\,
	datad => \current_state~43_combout\,
	combout => \current_state~35_combout\);

-- Location: FF_X18_Y29_N29
\current_state.FORWARD_2S_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~35_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FORWARD_2S_2~q\);

-- Location: LCCOMB_X18_Y29_N0
\current_state~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~40_combout\ = (\current_state~45_combout\ & ((\current_state.FORWARD_2S_2~q\) # ((\current_state.RIGHT_200MS_2~q\ & \current_state~44_combout\)))) # (!\current_state~45_combout\ & (((\current_state.RIGHT_200MS_2~q\ & 
-- \current_state~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~45_combout\,
	datab => \current_state.FORWARD_2S_2~q\,
	datac => \current_state.RIGHT_200MS_2~q\,
	datad => \current_state~44_combout\,
	combout => \current_state~40_combout\);

-- Location: FF_X18_Y29_N1
\current_state.RIGHT_200MS_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~40_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RIGHT_200MS_2~q\);

-- Location: LCCOMB_X18_Y29_N30
\current_state~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state~36_combout\ = (\current_state.RIGHT_200MS_2~q\ & ((\current_state~34_combout\) # ((\current_state.FORWARD_2S_3~q\ & \current_state~43_combout\)))) # (!\current_state.RIGHT_200MS_2~q\ & (((\current_state.FORWARD_2S_3~q\ & 
-- \current_state~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RIGHT_200MS_2~q\,
	datab => \current_state~34_combout\,
	datac => \current_state.FORWARD_2S_3~q\,
	datad => \current_state~43_combout\,
	combout => \current_state~36_combout\);

-- Location: FF_X18_Y29_N31
\current_state.FORWARD_2S_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~36_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FORWARD_2S_3~q\);

-- Location: LCCOMB_X18_Y29_N22
\right~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right~4_combout\ = (!\current_state.FORWARD_2S_3~q\ & (!\current_state.FORWARD_2S_2~q\ & (!\current_state.FORWARD_2S_4~q\ & !\current_state.FORWARD_2S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.FORWARD_2S_3~q\,
	datab => \current_state.FORWARD_2S_2~q\,
	datac => \current_state.FORWARD_2S_4~q\,
	datad => \current_state.FORWARD_2S~q\,
	combout => \right~4_combout\);

-- Location: LCCOMB_X18_Y29_N16
\right~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right~6_combout\ = (!\mode[0]~input_o\ & (\mode[1]~input_o\ & !\right~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datac => \mode[1]~input_o\,
	datad => \right~4_combout\,
	combout => \right~6_combout\);

-- Location: FF_X18_Y29_N17
\right[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \right~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right[0]~reg0_q\);

-- Location: LCCOMB_X19_Y29_N26
\pwm_value~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pwm_value~1_combout\ = (\Equal0~0_combout\ & (((\pwm_value[0]~reg0_q\ & !\current_state.IDLE~q\)) # (!\pwm_value~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \pwm_value~0_combout\,
	datac => \pwm_value[0]~reg0_q\,
	datad => \current_state.IDLE~q\,
	combout => \pwm_value~1_combout\);

-- Location: FF_X19_Y29_N27
\pwm_value[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_value~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[0]~reg0_q\);

-- Location: LCCOMB_X19_Y29_N24
\right~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right~7_combout\ = (\mode[1]~input_o\ & (!\mode[0]~input_o\ & \right~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode[1]~input_o\,
	datac => \mode[0]~input_o\,
	datad => \right~4_combout\,
	combout => \right~7_combout\);

-- Location: FF_X19_Y29_N25
\pwm_value[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \right~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[2]~reg0_q\);

-- Location: LCCOMB_X18_Y30_N24
\active~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \active~reg0feeder_combout\ = \Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~0_combout\,
	combout => \active~reg0feeder_combout\);

-- Location: FF_X18_Y30_N25
\active~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \active~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \active~reg0_q\);

ww_left(0) <= \left[0]~output_o\;

ww_left(1) <= \left[1]~output_o\;

ww_right(0) <= \right[0]~output_o\;

ww_right(1) <= \right[1]~output_o\;

ww_pwm_value(0) <= \pwm_value[0]~output_o\;

ww_pwm_value(1) <= \pwm_value[1]~output_o\;

ww_pwm_value(2) <= \pwm_value[2]~output_o\;

ww_pwm_value(3) <= \pwm_value[3]~output_o\;

ww_pwm_value(4) <= \pwm_value[4]~output_o\;

ww_pwm_value(5) <= \pwm_value[5]~output_o\;

ww_pwm_value(6) <= \pwm_value[6]~output_o\;

ww_pwm_value(7) <= \pwm_value[7]~output_o\;

ww_active <= \active~output_o\;
END structure;


