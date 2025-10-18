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

-- DATE "09/10/2025 08:25:04"

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

ENTITY 	boche IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	mode : IN std_logic_vector(1 DOWNTO 0);
	left : OUT std_logic_vector(1 DOWNTO 0);
	right : OUT std_logic_vector(1 DOWNTO 0);
	pwm_value : OUT std_logic_vector(7 DOWNTO 0);
	active : OUT std_logic
	);
END boche;

-- Design Ports Information
-- left[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[5]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- active	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF boche IS
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
SIGNAL \timer[0]~32_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.IDLE~feeder_combout\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.FORWARD_2S~q\ : std_logic;
SIGNAL \timer[12]~57\ : std_logic;
SIGNAL \timer[13]~58_combout\ : std_logic;
SIGNAL \timer[13]~59\ : std_logic;
SIGNAL \timer[14]~60_combout\ : std_logic;
SIGNAL \timer[14]~61\ : std_logic;
SIGNAL \timer[15]~62_combout\ : std_logic;
SIGNAL \timer[15]~63\ : std_logic;
SIGNAL \timer[16]~64_combout\ : std_logic;
SIGNAL \timer[16]~65\ : std_logic;
SIGNAL \timer[17]~66_combout\ : std_logic;
SIGNAL \timer[17]~67\ : std_logic;
SIGNAL \timer[18]~68_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \timer[18]~69\ : std_logic;
SIGNAL \timer[19]~70_combout\ : std_logic;
SIGNAL \timer[19]~71\ : std_logic;
SIGNAL \timer[20]~72_combout\ : std_logic;
SIGNAL \timer[20]~73\ : std_logic;
SIGNAL \timer[21]~74_combout\ : std_logic;
SIGNAL \timer[21]~75\ : std_logic;
SIGNAL \timer[22]~76_combout\ : std_logic;
SIGNAL \timer[22]~77\ : std_logic;
SIGNAL \timer[23]~78_combout\ : std_logic;
SIGNAL \timer[23]~79\ : std_logic;
SIGNAL \timer[24]~80_combout\ : std_logic;
SIGNAL \timer[24]~81\ : std_logic;
SIGNAL \timer[25]~82_combout\ : std_logic;
SIGNAL \timer[25]~83\ : std_logic;
SIGNAL \timer[26]~84_combout\ : std_logic;
SIGNAL \timer[26]~85\ : std_logic;
SIGNAL \timer[27]~90_combout\ : std_logic;
SIGNAL \timer[27]~91\ : std_logic;
SIGNAL \timer[28]~92_combout\ : std_logic;
SIGNAL \timer[28]~93\ : std_logic;
SIGNAL \timer[29]~94_combout\ : std_logic;
SIGNAL \timer[29]~95\ : std_logic;
SIGNAL \timer[30]~96_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \timer[30]~97\ : std_logic;
SIGNAL \timer[31]~98_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.RIGHT_200MS~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \current_state.FORWARD_2S_2~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \current_state.RIGHT_200MS_2~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \current_state.FORWARD_2S_3~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \current_state.RIGHT_200MS_3~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \current_state.FORWARD_2S_4~q\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \timer[10]~86_combout\ : std_logic;
SIGNAL \timer[10]~87_combout\ : std_logic;
SIGNAL \timer[10]~88_combout\ : std_logic;
SIGNAL \timer[10]~89_combout\ : std_logic;
SIGNAL \timer[0]~33\ : std_logic;
SIGNAL \timer[1]~34_combout\ : std_logic;
SIGNAL \timer[1]~35\ : std_logic;
SIGNAL \timer[2]~36_combout\ : std_logic;
SIGNAL \timer[2]~37\ : std_logic;
SIGNAL \timer[3]~38_combout\ : std_logic;
SIGNAL \timer[3]~39\ : std_logic;
SIGNAL \timer[4]~40_combout\ : std_logic;
SIGNAL \timer[4]~41\ : std_logic;
SIGNAL \timer[5]~42_combout\ : std_logic;
SIGNAL \timer[5]~43\ : std_logic;
SIGNAL \timer[6]~44_combout\ : std_logic;
SIGNAL \timer[6]~45\ : std_logic;
SIGNAL \timer[7]~46_combout\ : std_logic;
SIGNAL \timer[7]~47\ : std_logic;
SIGNAL \timer[8]~48_combout\ : std_logic;
SIGNAL \timer[8]~49\ : std_logic;
SIGNAL \timer[9]~50_combout\ : std_logic;
SIGNAL \timer[9]~51\ : std_logic;
SIGNAL \timer[10]~52_combout\ : std_logic;
SIGNAL \timer[10]~53\ : std_logic;
SIGNAL \timer[11]~54_combout\ : std_logic;
SIGNAL \timer[11]~55\ : std_logic;
SIGNAL \timer[12]~56_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \current_state.RIGHT_200MS_4~q\ : std_logic;
SIGNAL \current_state.stop~0_combout\ : std_logic;
SIGNAL \current_state.stop~q\ : std_logic;
SIGNAL \left[0]~1_combout\ : std_logic;
SIGNAL \left[0]~0_combout\ : std_logic;
SIGNAL \left[0]~reg0_q\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \right[0]~reg0_q\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \right[1]~reg0_q\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \pwm_value[1]~reg0_q\ : std_logic;
SIGNAL \pwm_value[3]~reg0_q\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \pwm_value[4]~reg0_q\ : std_logic;
SIGNAL \active~reg0feeder_combout\ : std_logic;
SIGNAL \active~reg0_q\ : std_logic;
SIGNAL timer : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_pwm_value[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pwm_value[1]~reg0_q\ : std_logic;

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
\ALT_INV_pwm_value[3]~reg0_q\ <= NOT \pwm_value[3]~reg0_q\;
\ALT_INV_pwm_value[1]~reg0_q\ <= NOT \pwm_value[1]~reg0_q\;

-- Location: IOOBUF_X33_Y15_N2
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

-- Location: IOOBUF_X26_Y31_N9
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X33_Y14_N9
\right[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right[1]~reg0_q\,
	devoe => ww_devoe,
	o => \right[1]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\pwm_value[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pwm_value[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\pwm_value[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\pwm_value[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\pwm_value[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[3]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\pwm_value[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_value[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\pwm_value[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\pwm_value[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X33_Y15_N9
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

-- Location: LCCOMB_X25_Y14_N0
\timer[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[0]~32_combout\ = timer(0) $ (VCC)
-- \timer[0]~33\ = CARRY(timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(0),
	datad => VCC,
	combout => \timer[0]~32_combout\,
	cout => \timer[0]~33\);

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

-- Location: LCCOMB_X27_Y13_N0
\current_state.IDLE~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.IDLE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \current_state.IDLE~feeder_combout\);

-- Location: IOIBUF_X33_Y12_N1
\mode[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(1),
	o => \mode[1]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\mode[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(0),
	o => \mode[0]~input_o\);

-- Location: LCCOMB_X27_Y13_N8
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

-- Location: FF_X27_Y13_N1
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
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X27_Y14_N20
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((\current_state.FORWARD_2S~q\ & \LessThan0~8_combout\)) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.IDLE~q\,
	datac => \current_state.FORWARD_2S~q\,
	datad => \LessThan0~8_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X27_Y14_N21
\current_state.FORWARD_2S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FORWARD_2S~q\);

-- Location: LCCOMB_X25_Y14_N24
\timer[12]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[12]~56_combout\ = (timer(12) & (\timer[11]~55\ $ (GND))) # (!timer(12) & (!\timer[11]~55\ & VCC))
-- \timer[12]~57\ = CARRY((timer(12) & !\timer[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(12),
	datad => VCC,
	cin => \timer[11]~55\,
	combout => \timer[12]~56_combout\,
	cout => \timer[12]~57\);

-- Location: LCCOMB_X25_Y14_N26
\timer[13]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[13]~58_combout\ = (timer(13) & (!\timer[12]~57\)) # (!timer(13) & ((\timer[12]~57\) # (GND)))
-- \timer[13]~59\ = CARRY((!\timer[12]~57\) # (!timer(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datad => VCC,
	cin => \timer[12]~57\,
	combout => \timer[13]~58_combout\,
	cout => \timer[13]~59\);

-- Location: FF_X25_Y14_N27
\timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[13]~58_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(13));

-- Location: LCCOMB_X25_Y14_N28
\timer[14]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[14]~60_combout\ = (timer(14) & (\timer[13]~59\ $ (GND))) # (!timer(14) & (!\timer[13]~59\ & VCC))
-- \timer[14]~61\ = CARRY((timer(14) & !\timer[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(14),
	datad => VCC,
	cin => \timer[13]~59\,
	combout => \timer[14]~60_combout\,
	cout => \timer[14]~61\);

-- Location: FF_X25_Y14_N29
\timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[14]~60_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(14));

-- Location: LCCOMB_X25_Y14_N30
\timer[15]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[15]~62_combout\ = (timer(15) & (!\timer[14]~61\)) # (!timer(15) & ((\timer[14]~61\) # (GND)))
-- \timer[15]~63\ = CARRY((!\timer[14]~61\) # (!timer(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(15),
	datad => VCC,
	cin => \timer[14]~61\,
	combout => \timer[15]~62_combout\,
	cout => \timer[15]~63\);

-- Location: FF_X25_Y14_N31
\timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[15]~62_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(15));

-- Location: LCCOMB_X25_Y13_N0
\timer[16]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[16]~64_combout\ = (timer(16) & (\timer[15]~63\ $ (GND))) # (!timer(16) & (!\timer[15]~63\ & VCC))
-- \timer[16]~65\ = CARRY((timer(16) & !\timer[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(16),
	datad => VCC,
	cin => \timer[15]~63\,
	combout => \timer[16]~64_combout\,
	cout => \timer[16]~65\);

-- Location: FF_X25_Y13_N1
\timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[16]~64_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(16));

-- Location: LCCOMB_X25_Y13_N2
\timer[17]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[17]~66_combout\ = (timer(17) & (!\timer[16]~65\)) # (!timer(17) & ((\timer[16]~65\) # (GND)))
-- \timer[17]~67\ = CARRY((!\timer[16]~65\) # (!timer(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(17),
	datad => VCC,
	cin => \timer[16]~65\,
	combout => \timer[17]~66_combout\,
	cout => \timer[17]~67\);

-- Location: FF_X25_Y13_N3
\timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[17]~66_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(17));

-- Location: LCCOMB_X25_Y13_N4
\timer[18]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[18]~68_combout\ = (timer(18) & (\timer[17]~67\ $ (GND))) # (!timer(18) & (!\timer[17]~67\ & VCC))
-- \timer[18]~69\ = CARRY((timer(18) & !\timer[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(18),
	datad => VCC,
	cin => \timer[17]~67\,
	combout => \timer[18]~68_combout\,
	cout => \timer[18]~69\);

-- Location: FF_X25_Y13_N5
\timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[18]~68_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(18));

-- Location: LCCOMB_X26_Y13_N4
\LessThan1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!timer(16) & (!timer(18) & !timer(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(16),
	datac => timer(18),
	datad => timer(17),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X25_Y13_N6
\timer[19]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[19]~70_combout\ = (timer(19) & (!\timer[18]~69\)) # (!timer(19) & ((\timer[18]~69\) # (GND)))
-- \timer[19]~71\ = CARRY((!\timer[18]~69\) # (!timer(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(19),
	datad => VCC,
	cin => \timer[18]~69\,
	combout => \timer[19]~70_combout\,
	cout => \timer[19]~71\);

-- Location: FF_X24_Y14_N17
\timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[19]~70_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(19));

-- Location: LCCOMB_X25_Y13_N8
\timer[20]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[20]~72_combout\ = (timer(20) & (\timer[19]~71\ $ (GND))) # (!timer(20) & (!\timer[19]~71\ & VCC))
-- \timer[20]~73\ = CARRY((timer(20) & !\timer[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(20),
	datad => VCC,
	cin => \timer[19]~71\,
	combout => \timer[20]~72_combout\,
	cout => \timer[20]~73\);

-- Location: FF_X26_Y14_N19
\timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[20]~72_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(20));

-- Location: LCCOMB_X25_Y13_N10
\timer[21]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[21]~74_combout\ = (timer(21) & (!\timer[20]~73\)) # (!timer(21) & ((\timer[20]~73\) # (GND)))
-- \timer[21]~75\ = CARRY((!\timer[20]~73\) # (!timer(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(21),
	datad => VCC,
	cin => \timer[20]~73\,
	combout => \timer[21]~74_combout\,
	cout => \timer[21]~75\);

-- Location: FF_X24_Y14_N19
\timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[21]~74_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(21));

-- Location: LCCOMB_X25_Y13_N12
\timer[22]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[22]~76_combout\ = (timer(22) & (\timer[21]~75\ $ (GND))) # (!timer(22) & (!\timer[21]~75\ & VCC))
-- \timer[22]~77\ = CARRY((timer(22) & !\timer[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(22),
	datad => VCC,
	cin => \timer[21]~75\,
	combout => \timer[22]~76_combout\,
	cout => \timer[22]~77\);

-- Location: FF_X25_Y13_N13
\timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[22]~76_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(22));

-- Location: LCCOMB_X25_Y13_N14
\timer[23]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[23]~78_combout\ = (timer(23) & (!\timer[22]~77\)) # (!timer(23) & ((\timer[22]~77\) # (GND)))
-- \timer[23]~79\ = CARRY((!\timer[22]~77\) # (!timer(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(23),
	datad => VCC,
	cin => \timer[22]~77\,
	combout => \timer[23]~78_combout\,
	cout => \timer[23]~79\);

-- Location: FF_X24_Y14_N13
\timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[23]~78_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(23));

-- Location: LCCOMB_X25_Y13_N16
\timer[24]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[24]~80_combout\ = (timer(24) & (\timer[23]~79\ $ (GND))) # (!timer(24) & (!\timer[23]~79\ & VCC))
-- \timer[24]~81\ = CARRY((timer(24) & !\timer[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(24),
	datad => VCC,
	cin => \timer[23]~79\,
	combout => \timer[24]~80_combout\,
	cout => \timer[24]~81\);

-- Location: FF_X25_Y13_N17
\timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[24]~80_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(24));

-- Location: LCCOMB_X25_Y13_N18
\timer[25]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[25]~82_combout\ = (timer(25) & (!\timer[24]~81\)) # (!timer(25) & ((\timer[24]~81\) # (GND)))
-- \timer[25]~83\ = CARRY((!\timer[24]~81\) # (!timer(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(25),
	datad => VCC,
	cin => \timer[24]~81\,
	combout => \timer[25]~82_combout\,
	cout => \timer[25]~83\);

-- Location: FF_X26_Y14_N13
\timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[25]~82_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(25));

-- Location: LCCOMB_X25_Y13_N20
\timer[26]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[26]~84_combout\ = (timer(26) & (\timer[25]~83\ $ (GND))) # (!timer(26) & (!\timer[25]~83\ & VCC))
-- \timer[26]~85\ = CARRY((timer(26) & !\timer[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(26),
	datad => VCC,
	cin => \timer[25]~83\,
	combout => \timer[26]~84_combout\,
	cout => \timer[26]~85\);

-- Location: FF_X25_Y13_N21
\timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[26]~84_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(26));

-- Location: LCCOMB_X25_Y13_N22
\timer[27]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[27]~90_combout\ = (timer(27) & (!\timer[26]~85\)) # (!timer(27) & ((\timer[26]~85\) # (GND)))
-- \timer[27]~91\ = CARRY((!\timer[26]~85\) # (!timer(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(27),
	datad => VCC,
	cin => \timer[26]~85\,
	combout => \timer[27]~90_combout\,
	cout => \timer[27]~91\);

-- Location: FF_X25_Y13_N23
\timer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[27]~90_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(27));

-- Location: LCCOMB_X25_Y13_N24
\timer[28]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[28]~92_combout\ = (timer(28) & (\timer[27]~91\ $ (GND))) # (!timer(28) & (!\timer[27]~91\ & VCC))
-- \timer[28]~93\ = CARRY((timer(28) & !\timer[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(28),
	datad => VCC,
	cin => \timer[27]~91\,
	combout => \timer[28]~92_combout\,
	cout => \timer[28]~93\);

-- Location: FF_X25_Y13_N25
\timer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[28]~92_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(28));

-- Location: LCCOMB_X25_Y13_N26
\timer[29]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[29]~94_combout\ = (timer(29) & (!\timer[28]~93\)) # (!timer(29) & ((\timer[28]~93\) # (GND)))
-- \timer[29]~95\ = CARRY((!\timer[28]~93\) # (!timer(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(29),
	datad => VCC,
	cin => \timer[28]~93\,
	combout => \timer[29]~94_combout\,
	cout => \timer[29]~95\);

-- Location: FF_X25_Y13_N27
\timer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[29]~94_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(29));

-- Location: LCCOMB_X25_Y13_N28
\timer[30]~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[30]~96_combout\ = (timer(30) & (\timer[29]~95\ $ (GND))) # (!timer(30) & (!\timer[29]~95\ & VCC))
-- \timer[30]~97\ = CARRY((timer(30) & !\timer[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(30),
	datad => VCC,
	cin => \timer[29]~95\,
	combout => \timer[30]~96_combout\,
	cout => \timer[30]~97\);

-- Location: FF_X25_Y13_N29
\timer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[30]~96_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(30));

-- Location: LCCOMB_X26_Y14_N8
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!timer(28) & (!timer(27) & (!timer(26) & !timer(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(28),
	datab => timer(27),
	datac => timer(26),
	datad => timer(29),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y13_N30
\timer[31]~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[31]~98_combout\ = timer(31) $ (\timer[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(31),
	cin => \timer[30]~97\,
	combout => \timer[31]~98_combout\);

-- Location: FF_X25_Y13_N31
\timer[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[31]~98_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(31));

-- Location: LCCOMB_X26_Y14_N14
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!timer(30) & (\LessThan0~0_combout\ & !timer(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(30),
	datac => \LessThan0~0_combout\,
	datad => timer(31),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y14_N10
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (timer(21)) # ((timer(22)) # ((timer(19) & timer(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(19),
	datab => timer(21),
	datac => timer(20),
	datad => timer(22),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!timer(24) & (!timer(25) & ((!\LessThan1~0_combout\) # (!timer(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(24),
	datab => timer(23),
	datac => timer(25),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X26_Y14_N4
\LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (timer(22)) # ((timer(21)) # ((timer(25)) # (timer(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(22),
	datab => timer(21),
	datac => timer(25),
	datad => timer(24),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y14_N2
\LessThan1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((!timer(8) & !timer(7))) # (!timer(9))) # (!timer(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(8),
	datab => timer(7),
	datac => timer(10),
	datad => timer(9),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X24_Y14_N20
\LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (timer(14)) # ((timer(12) & ((timer(11)) # (!\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(12),
	datab => timer(14),
	datac => timer(11),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X26_Y14_N6
\LessThan1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!\LessThan1~3_combout\ & (((!timer(13) & !\LessThan1~5_combout\)) # (!timer(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datab => timer(15),
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X26_Y14_N24
\LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (\LessThan0~1_combout\ & ((\LessThan1~1_combout\) # ((\LessThan1~2_combout\ & \LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X27_Y14_N22
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\LessThan0~8_combout\ & (((\current_state.RIGHT_200MS~q\ & \LessThan1~7_combout\)))) # (!\LessThan0~8_combout\ & ((\current_state.FORWARD_2S~q\) # ((\current_state.RIGHT_200MS~q\ & \LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \current_state.FORWARD_2S~q\,
	datac => \current_state.RIGHT_200MS~q\,
	datad => \LessThan1~7_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X27_Y14_N23
\current_state.RIGHT_200MS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RIGHT_200MS~q\);

-- Location: LCCOMB_X27_Y14_N16
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\LessThan0~8_combout\ & ((\current_state.FORWARD_2S_2~q\) # ((\current_state.RIGHT_200MS~q\ & !\LessThan1~7_combout\)))) # (!\LessThan0~8_combout\ & (\current_state.RIGHT_200MS~q\ & ((!\LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \current_state.RIGHT_200MS~q\,
	datac => \current_state.FORWARD_2S_2~q\,
	datad => \LessThan1~7_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X27_Y14_N17
\current_state.FORWARD_2S_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FORWARD_2S_2~q\);

-- Location: LCCOMB_X27_Y14_N18
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\LessThan0~8_combout\ & (((\current_state.RIGHT_200MS_2~q\ & \LessThan1~7_combout\)))) # (!\LessThan0~8_combout\ & ((\current_state.FORWARD_2S_2~q\) # ((\current_state.RIGHT_200MS_2~q\ & \LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \current_state.FORWARD_2S_2~q\,
	datac => \current_state.RIGHT_200MS_2~q\,
	datad => \LessThan1~7_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X27_Y14_N19
\current_state.RIGHT_200MS_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RIGHT_200MS_2~q\);

-- Location: LCCOMB_X27_Y14_N10
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\LessThan0~8_combout\ & ((\current_state.FORWARD_2S_3~q\) # ((\current_state.RIGHT_200MS_2~q\ & !\LessThan1~7_combout\)))) # (!\LessThan0~8_combout\ & (\current_state.RIGHT_200MS_2~q\ & ((!\LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \current_state.RIGHT_200MS_2~q\,
	datac => \current_state.FORWARD_2S_3~q\,
	datad => \LessThan1~7_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X27_Y14_N11
\current_state.FORWARD_2S_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FORWARD_2S_3~q\);

-- Location: LCCOMB_X27_Y14_N8
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\LessThan0~8_combout\ & (\LessThan1~7_combout\ & (\current_state.RIGHT_200MS_3~q\))) # (!\LessThan0~8_combout\ & ((\current_state.FORWARD_2S_3~q\) # ((\LessThan1~7_combout\ & \current_state.RIGHT_200MS_3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \LessThan1~7_combout\,
	datac => \current_state.RIGHT_200MS_3~q\,
	datad => \current_state.FORWARD_2S_3~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X27_Y14_N9
\current_state.RIGHT_200MS_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RIGHT_200MS_3~q\);

-- Location: LCCOMB_X27_Y14_N14
\Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\LessThan0~8_combout\ & ((\current_state.FORWARD_2S_4~q\) # ((\current_state.RIGHT_200MS_3~q\ & !\LessThan1~7_combout\)))) # (!\LessThan0~8_combout\ & (\current_state.RIGHT_200MS_3~q\ & ((!\LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \current_state.RIGHT_200MS_3~q\,
	datac => \current_state.FORWARD_2S_4~q\,
	datad => \LessThan1~7_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X27_Y14_N15
\current_state.FORWARD_2S_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FORWARD_2S_4~q\);

-- Location: LCCOMB_X27_Y14_N4
\Selector44~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (!\current_state.FORWARD_2S_3~q\ & (!\current_state.FORWARD_2S_2~q\ & (!\current_state.FORWARD_2S_4~q\ & !\current_state.FORWARD_2S~q\)))

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
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X27_Y14_N6
\Selector43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (!\current_state.RIGHT_200MS_4~q\ & (!\current_state.RIGHT_200MS_3~q\ & (!\current_state.RIGHT_200MS~q\ & !\current_state.RIGHT_200MS_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RIGHT_200MS_4~q\,
	datab => \current_state.RIGHT_200MS_3~q\,
	datac => \current_state.RIGHT_200MS~q\,
	datad => \current_state.RIGHT_200MS_2~q\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X26_Y14_N0
\LessThan2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!timer(24) & (!timer(23) & ((!timer(22)) # (!timer(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(24),
	datab => timer(21),
	datac => timer(23),
	datad => timer(22),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y14_N10
\LessThan2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ((!timer(14) & (!timer(16) & !timer(15)))) # (!timer(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(17),
	datab => timer(14),
	datac => timer(16),
	datad => timer(15),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X26_Y14_N18
\LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!timer(19) & (!timer(23) & (!timer(20) & !timer(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(19),
	datab => timer(23),
	datac => timer(20),
	datad => timer(18),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X24_Y14_N24
\LessThan2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (((!timer(10) & !timer(9))) # (!timer(11))) # (!timer(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(12),
	datab => timer(11),
	datac => timer(10),
	datad => timer(9),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X24_Y14_N30
\LessThan2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!timer(13) & (!timer(15) & (!timer(16) & \LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datab => timer(15),
	datac => timer(16),
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X26_Y14_N16
\timer[10]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[10]~86_combout\ = (\LessThan2~1_combout\ & (!timer(24) & ((\LessThan2~4_combout\) # (\LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => \LessThan2~1_combout\,
	datac => timer(24),
	datad => \LessThan2~3_combout\,
	combout => \timer[10]~86_combout\);

-- Location: LCCOMB_X26_Y14_N26
\timer[10]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[10]~87_combout\ = (\LessThan0~1_combout\ & (((\LessThan2~0_combout\) # (\timer[10]~86_combout\)) # (!timer(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(25),
	datab => \LessThan2~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \timer[10]~86_combout\,
	combout => \timer[10]~87_combout\);

-- Location: LCCOMB_X26_Y14_N20
\timer[10]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[10]~88_combout\ = (\current_state.stop~q\ & (((\timer[10]~87_combout\)))) # (!\current_state.stop~q\ & (!\Selector43~0_combout\ & ((\LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.stop~q\,
	datab => \Selector43~0_combout\,
	datac => \timer[10]~87_combout\,
	datad => \LessThan1~7_combout\,
	combout => \timer[10]~88_combout\);

-- Location: LCCOMB_X26_Y14_N30
\timer[10]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[10]~89_combout\ = ((!\timer[10]~88_combout\ & ((\Selector44~0_combout\) # (!\LessThan0~8_combout\)))) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~0_combout\,
	datab => \current_state.IDLE~q\,
	datac => \LessThan0~8_combout\,
	datad => \timer[10]~88_combout\,
	combout => \timer[10]~89_combout\);

-- Location: FF_X25_Y14_N1
\timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[0]~32_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(0));

-- Location: LCCOMB_X25_Y14_N2
\timer[1]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[1]~34_combout\ = (timer(1) & (!\timer[0]~33\)) # (!timer(1) & ((\timer[0]~33\) # (GND)))
-- \timer[1]~35\ = CARRY((!\timer[0]~33\) # (!timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(1),
	datad => VCC,
	cin => \timer[0]~33\,
	combout => \timer[1]~34_combout\,
	cout => \timer[1]~35\);

-- Location: FF_X25_Y14_N3
\timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[1]~34_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(1));

-- Location: LCCOMB_X25_Y14_N4
\timer[2]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[2]~36_combout\ = (timer(2) & (\timer[1]~35\ $ (GND))) # (!timer(2) & (!\timer[1]~35\ & VCC))
-- \timer[2]~37\ = CARRY((timer(2) & !\timer[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(2),
	datad => VCC,
	cin => \timer[1]~35\,
	combout => \timer[2]~36_combout\,
	cout => \timer[2]~37\);

-- Location: FF_X25_Y14_N5
\timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[2]~36_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(2));

-- Location: LCCOMB_X25_Y14_N6
\timer[3]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[3]~38_combout\ = (timer(3) & (!\timer[2]~37\)) # (!timer(3) & ((\timer[2]~37\) # (GND)))
-- \timer[3]~39\ = CARRY((!\timer[2]~37\) # (!timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datad => VCC,
	cin => \timer[2]~37\,
	combout => \timer[3]~38_combout\,
	cout => \timer[3]~39\);

-- Location: FF_X25_Y14_N7
\timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[3]~38_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(3));

-- Location: LCCOMB_X25_Y14_N8
\timer[4]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[4]~40_combout\ = (timer(4) & (\timer[3]~39\ $ (GND))) # (!timer(4) & (!\timer[3]~39\ & VCC))
-- \timer[4]~41\ = CARRY((timer(4) & !\timer[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(4),
	datad => VCC,
	cin => \timer[3]~39\,
	combout => \timer[4]~40_combout\,
	cout => \timer[4]~41\);

-- Location: FF_X25_Y14_N9
\timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[4]~40_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(4));

-- Location: LCCOMB_X25_Y14_N10
\timer[5]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[5]~42_combout\ = (timer(5) & (!\timer[4]~41\)) # (!timer(5) & ((\timer[4]~41\) # (GND)))
-- \timer[5]~43\ = CARRY((!\timer[4]~41\) # (!timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(5),
	datad => VCC,
	cin => \timer[4]~41\,
	combout => \timer[5]~42_combout\,
	cout => \timer[5]~43\);

-- Location: FF_X25_Y14_N11
\timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[5]~42_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(5));

-- Location: LCCOMB_X25_Y14_N12
\timer[6]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[6]~44_combout\ = (timer(6) & (\timer[5]~43\ $ (GND))) # (!timer(6) & (!\timer[5]~43\ & VCC))
-- \timer[6]~45\ = CARRY((timer(6) & !\timer[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(6),
	datad => VCC,
	cin => \timer[5]~43\,
	combout => \timer[6]~44_combout\,
	cout => \timer[6]~45\);

-- Location: FF_X25_Y14_N13
\timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[6]~44_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(6));

-- Location: LCCOMB_X25_Y14_N14
\timer[7]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[7]~46_combout\ = (timer(7) & (!\timer[6]~45\)) # (!timer(7) & ((\timer[6]~45\) # (GND)))
-- \timer[7]~47\ = CARRY((!\timer[6]~45\) # (!timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(7),
	datad => VCC,
	cin => \timer[6]~45\,
	combout => \timer[7]~46_combout\,
	cout => \timer[7]~47\);

-- Location: FF_X25_Y14_N15
\timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[7]~46_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(7));

-- Location: LCCOMB_X25_Y14_N16
\timer[8]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[8]~48_combout\ = (timer(8) & (\timer[7]~47\ $ (GND))) # (!timer(8) & (!\timer[7]~47\ & VCC))
-- \timer[8]~49\ = CARRY((timer(8) & !\timer[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(8),
	datad => VCC,
	cin => \timer[7]~47\,
	combout => \timer[8]~48_combout\,
	cout => \timer[8]~49\);

-- Location: FF_X25_Y14_N17
\timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[8]~48_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(8));

-- Location: LCCOMB_X25_Y14_N18
\timer[9]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[9]~50_combout\ = (timer(9) & (!\timer[8]~49\)) # (!timer(9) & ((\timer[8]~49\) # (GND)))
-- \timer[9]~51\ = CARRY((!\timer[8]~49\) # (!timer(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(9),
	datad => VCC,
	cin => \timer[8]~49\,
	combout => \timer[9]~50_combout\,
	cout => \timer[9]~51\);

-- Location: FF_X25_Y14_N19
\timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[9]~50_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(9));

-- Location: LCCOMB_X25_Y14_N20
\timer[10]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[10]~52_combout\ = (timer(10) & (\timer[9]~51\ $ (GND))) # (!timer(10) & (!\timer[9]~51\ & VCC))
-- \timer[10]~53\ = CARRY((timer(10) & !\timer[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(10),
	datad => VCC,
	cin => \timer[9]~51\,
	combout => \timer[10]~52_combout\,
	cout => \timer[10]~53\);

-- Location: FF_X25_Y14_N21
\timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[10]~52_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(10));

-- Location: LCCOMB_X25_Y14_N22
\timer[11]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[11]~54_combout\ = (timer(11) & (!\timer[10]~53\)) # (!timer(11) & ((\timer[10]~53\) # (GND)))
-- \timer[11]~55\ = CARRY((!\timer[10]~53\) # (!timer(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(11),
	datad => VCC,
	cin => \timer[10]~53\,
	combout => \timer[11]~54_combout\,
	cout => \timer[11]~55\);

-- Location: FF_X24_Y14_N5
\timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[11]~54_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(11));

-- Location: FF_X24_Y14_N27
\timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer[12]~56_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \timer[10]~89_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(12));

-- Location: LCCOMB_X24_Y14_N22
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!timer(11) & ((!timer(9)) # (!timer(10))))) # (!timer(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(12),
	datab => timer(11),
	datac => timer(10),
	datad => timer(9),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y14_N8
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (timer(16)) # ((timer(14)) # ((timer(20)) # (timer(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(16),
	datab => timer(14),
	datac => timer(20),
	datad => timer(15),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y14_N6
\LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!timer(23) & (!\LessThan0~3_combout\ & ((\LessThan0~2_combout\) # (!timer(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => timer(23),
	datac => \LessThan0~3_combout\,
	datad => timer(13),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X26_Y14_N2
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (timer(19) & (timer(17) & timer(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(19),
	datac => timer(17),
	datad => timer(18),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X26_Y14_N12
\LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (timer(21) & ((timer(20)) # (\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(20),
	datab => timer(21),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X26_Y14_N28
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ((!timer(23) & ((!\LessThan0~6_combout\) # (!timer(22))))) # (!timer(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(22),
	datab => timer(23),
	datac => timer(24),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X26_Y14_N22
\LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!timer(25) & (\LessThan0~1_combout\ & ((\LessThan0~4_combout\) # (\LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => timer(25),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X27_Y14_N12
\Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\LessThan0~8_combout\ & (((\current_state.RIGHT_200MS_4~q\ & \LessThan1~7_combout\)))) # (!\LessThan0~8_combout\ & ((\current_state.FORWARD_2S_4~q\) # ((\current_state.RIGHT_200MS_4~q\ & \LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \current_state.FORWARD_2S_4~q\,
	datac => \current_state.RIGHT_200MS_4~q\,
	datad => \LessThan1~7_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X27_Y14_N13
\current_state.RIGHT_200MS_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RIGHT_200MS_4~q\);

-- Location: LCCOMB_X27_Y14_N30
\current_state.stop~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.stop~0_combout\ = (\current_state.stop~q\) # ((\current_state.RIGHT_200MS_4~q\ & (\Equal0~0_combout\ & !\LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RIGHT_200MS_4~q\,
	datab => \Equal0~0_combout\,
	datac => \current_state.stop~q\,
	datad => \LessThan1~7_combout\,
	combout => \current_state.stop~0_combout\);

-- Location: FF_X27_Y14_N31
\current_state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.stop~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.stop~q\);

-- Location: LCCOMB_X27_Y13_N24
\left[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left[0]~1_combout\ = !\current_state.stop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.stop~q\,
	combout => \left[0]~1_combout\);

-- Location: LCCOMB_X27_Y13_N14
\left[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left[0]~0_combout\ = (\current_state.IDLE~q\ & (\mode[1]~input_o\ & !\mode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.IDLE~q\,
	datac => \mode[1]~input_o\,
	datad => \mode[0]~input_o\,
	combout => \left[0]~0_combout\);

-- Location: FF_X27_Y13_N25
\left[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left[0]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \left[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left[0]~reg0_q\);

-- Location: LCCOMB_X27_Y13_N26
\Selector44~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = ((!\current_state.IDLE~q\ & \right[0]~reg0_q\)) # (!\Selector44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~0_combout\,
	datab => \current_state.IDLE~q\,
	datac => \right[0]~reg0_q\,
	combout => \Selector44~1_combout\);

-- Location: FF_X27_Y13_N27
\right[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector44~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right[0]~reg0_q\);

-- Location: LCCOMB_X27_Y14_N28
\Selector43~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = ((!\current_state.IDLE~q\ & \right[1]~reg0_q\)) # (!\Selector43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.IDLE~q\,
	datac => \right[1]~reg0_q\,
	datad => \Selector43~0_combout\,
	combout => \Selector43~1_combout\);

-- Location: FF_X27_Y14_N29
\right[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector43~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right[1]~reg0_q\);

-- Location: LCCOMB_X27_Y14_N24
\Selector50~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\current_state.FORWARD_2S_3~q\) # ((\current_state.FORWARD_2S~q\) # ((!\pwm_value[1]~reg0_q\ & !\current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.FORWARD_2S_3~q\,
	datab => \current_state.FORWARD_2S~q\,
	datac => \pwm_value[1]~reg0_q\,
	datad => \current_state.IDLE~q\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X27_Y14_N26
\Selector50~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (!\current_state.RIGHT_200MS~q\ & (!\current_state.RIGHT_200MS_3~q\ & !\Selector50~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RIGHT_200MS~q\,
	datac => \current_state.RIGHT_200MS_3~q\,
	datad => \Selector50~0_combout\,
	combout => \Selector50~1_combout\);

-- Location: FF_X27_Y14_N27
\pwm_value[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector50~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[1]~reg0_q\);

-- Location: FF_X27_Y13_N21
\pwm_value[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_state.stop~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \left[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[3]~reg0_q\);

-- Location: LCCOMB_X27_Y14_N2
\Selector47~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\current_state.FORWARD_2S_2~q\) # ((\current_state.FORWARD_2S_4~q\) # ((\pwm_value[4]~reg0_q\ & !\current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_value[4]~reg0_q\,
	datab => \current_state.FORWARD_2S_2~q\,
	datac => \current_state.FORWARD_2S_4~q\,
	datad => \current_state.IDLE~q\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X27_Y14_N0
\Selector47~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\current_state.RIGHT_200MS_4~q\) # ((\current_state.RIGHT_200MS_2~q\) # (\Selector47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RIGHT_200MS_4~q\,
	datab => \current_state.RIGHT_200MS_2~q\,
	datad => \Selector47~0_combout\,
	combout => \Selector47~1_combout\);

-- Location: FF_X27_Y14_N1
\pwm_value[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector47~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[4]~reg0_q\);

-- Location: LCCOMB_X27_Y13_N10
\active~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \active~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \active~reg0feeder_combout\);

-- Location: FF_X27_Y13_N11
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
	ena => \Equal0~0_combout\,
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


