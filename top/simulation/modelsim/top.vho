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

-- DATE "09/02/2025 08:16:56"

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

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	infrared_a : IN std_logic;
	infrared_b : IN std_logic;
	infrared_c : IN std_logic;
	infrared_d : IN std_logic;
	echo1 : IN std_logic;
	echo2 : IN std_logic;
	echo3 : IN std_logic;
	trig1 : OUT std_logic;
	trig2 : OUT std_logic;
	trig3 : OUT std_logic;
	left1 : OUT std_logic_vector(3 DOWNTO 0);
	left2 : OUT std_logic_vector(3 DOWNTO 0);
	right1 : OUT std_logic_vector(3 DOWNTO 0);
	right2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- trig1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trig2	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trig3	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left1[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left1[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left1[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left1[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left2[0]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left2[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left2[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left2[3]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right1[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right1[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right1[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right1[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right2[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right2[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right2[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right2[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- echo3	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- echo2	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- echo1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- infrared_d	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- infrared_c	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- infrared_a	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- infrared_b	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
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
SIGNAL ww_infrared_a : std_logic;
SIGNAL ww_infrared_b : std_logic;
SIGNAL ww_infrared_c : std_logic;
SIGNAL ww_infrared_d : std_logic;
SIGNAL ww_echo1 : std_logic;
SIGNAL ww_echo2 : std_logic;
SIGNAL ww_echo3 : std_logic;
SIGNAL ww_trig1 : std_logic;
SIGNAL ww_trig2 : std_logic;
SIGNAL ww_trig3 : std_logic;
SIGNAL ww_left1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_left2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_right1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_right2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \echo3~input_o\ : std_logic;
SIGNAL \echo2~input_o\ : std_logic;
SIGNAL \echo1~input_o\ : std_logic;
SIGNAL \infrared_d~input_o\ : std_logic;
SIGNAL \infrared_c~input_o\ : std_logic;
SIGNAL \infrared_a~input_o\ : std_logic;
SIGNAL \infrared_b~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
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
SIGNAL \xiaoche_instance|Add0~0_combout\ : std_logic;
SIGNAL \xiaoche_instance|count~8_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~1\ : std_logic;
SIGNAL \xiaoche_instance|Add0~2_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~3\ : std_logic;
SIGNAL \xiaoche_instance|Add0~4_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~5\ : std_logic;
SIGNAL \xiaoche_instance|Add0~6_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~7\ : std_logic;
SIGNAL \xiaoche_instance|Add0~8_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~9\ : std_logic;
SIGNAL \xiaoche_instance|Add0~10_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~11\ : std_logic;
SIGNAL \xiaoche_instance|Add0~12_combout\ : std_logic;
SIGNAL \xiaoche_instance|count~0_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~13\ : std_logic;
SIGNAL \xiaoche_instance|Add0~14_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~15\ : std_logic;
SIGNAL \xiaoche_instance|Add0~16_combout\ : std_logic;
SIGNAL \xiaoche_instance|count~1_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~17\ : std_logic;
SIGNAL \xiaoche_instance|Add0~18_combout\ : std_logic;
SIGNAL \xiaoche_instance|count~2_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~19\ : std_logic;
SIGNAL \xiaoche_instance|Add0~20_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~21\ : std_logic;
SIGNAL \xiaoche_instance|Add0~22_combout\ : std_logic;
SIGNAL \xiaoche_instance|count~3_combout\ : std_logic;
SIGNAL \xiaoche_instance|Equal0~7_combout\ : std_logic;
SIGNAL \xiaoche_instance|Equal0~6_combout\ : std_logic;
SIGNAL \xiaoche_instance|Equal0~5_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~35\ : std_logic;
SIGNAL \xiaoche_instance|Add0~36_combout\ : std_logic;
SIGNAL \xiaoche_instance|count~5_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~37\ : std_logic;
SIGNAL \xiaoche_instance|Add0~38_combout\ : std_logic;
SIGNAL \xiaoche_instance|count~6_combout\ : std_logic;
SIGNAL \xiaoche_instance|Equal0~8_combout\ : std_logic;
SIGNAL \xiaoche_instance|Equal0~9_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~23\ : std_logic;
SIGNAL \xiaoche_instance|Add0~24_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~25\ : std_logic;
SIGNAL \xiaoche_instance|Add0~26_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~27\ : std_logic;
SIGNAL \xiaoche_instance|Add0~28_combout\ : std_logic;
SIGNAL \xiaoche_instance|count~4_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~29\ : std_logic;
SIGNAL \xiaoche_instance|Add0~30_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~31\ : std_logic;
SIGNAL \xiaoche_instance|Add0~32_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~33\ : std_logic;
SIGNAL \xiaoche_instance|Add0~34_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~39\ : std_logic;
SIGNAL \xiaoche_instance|Add0~40_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~41\ : std_logic;
SIGNAL \xiaoche_instance|Add0~42_combout\ : std_logic;
SIGNAL \xiaoche_instance|Equal0~1_combout\ : std_logic;
SIGNAL \xiaoche_instance|Equal0~0_combout\ : std_logic;
SIGNAL \xiaoche_instance|Equal0~2_combout\ : std_logic;
SIGNAL \xiaoche_instance|Equal0~3_combout\ : std_logic;
SIGNAL \xiaoche_instance|Equal0~4_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~43\ : std_logic;
SIGNAL \xiaoche_instance|Add0~44_combout\ : std_logic;
SIGNAL \xiaoche_instance|count~7_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~45\ : std_logic;
SIGNAL \xiaoche_instance|Add0~46_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~47\ : std_logic;
SIGNAL \xiaoche_instance|Add0~48_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~49\ : std_logic;
SIGNAL \xiaoche_instance|Add0~50_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~51\ : std_logic;
SIGNAL \xiaoche_instance|Add0~52_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~53\ : std_logic;
SIGNAL \xiaoche_instance|Add0~54_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~55\ : std_logic;
SIGNAL \xiaoche_instance|Add0~56_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~57\ : std_logic;
SIGNAL \xiaoche_instance|Add0~58_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~59\ : std_logic;
SIGNAL \xiaoche_instance|Add0~60_combout\ : std_logic;
SIGNAL \xiaoche_instance|Add0~61\ : std_logic;
SIGNAL \xiaoche_instance|Add0~62_combout\ : std_logic;
SIGNAL \xiaoche_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \xiaoche_instance|LessThan0~1_combout\ : std_logic;
SIGNAL \xiaoche_instance|LessThan0~2_combout\ : std_logic;
SIGNAL \xiaoche_instance|LessThan0~3_combout\ : std_logic;
SIGNAL \xiaoche_instance|LessThan0~4_combout\ : std_logic;
SIGNAL \xiaoche_instance|count\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_infrared_a <= infrared_a;
ww_infrared_b <= infrared_b;
ww_infrared_c <= infrared_c;
ww_infrared_d <= infrared_d;
ww_echo1 <= echo1;
ww_echo2 <= echo2;
ww_echo3 <= echo3;
trig1 <= ww_trig1;
trig2 <= ww_trig2;
trig3 <= ww_trig3;
left1 <= ww_left1;
left2 <= ww_left2;
right1 <= ww_right1;
right2 <= ww_right2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X12_Y0_N2
\trig1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xiaoche_instance|LessThan0~4_combout\,
	devoe => ww_devoe,
	o => \trig1~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\trig2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xiaoche_instance|LessThan0~4_combout\,
	devoe => ww_devoe,
	o => \trig2~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\trig3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xiaoche_instance|LessThan0~4_combout\,
	devoe => ww_devoe,
	o => \trig3~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\left1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \left1[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\left1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \left1[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\left1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \left1[2]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\left1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \left1[3]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\left2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \left2[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\left2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \left2[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\left2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \left2[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X33_Y27_N2
\right1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \right1[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\right1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \right1[1]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\right1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \right1[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\right1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \right1[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\right2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \right2[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\right2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \right2[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\right2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \right2[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\right2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: LCCOMB_X11_Y2_N0
\xiaoche_instance|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~0_combout\ = \xiaoche_instance|count\(0) $ (VCC)
-- \xiaoche_instance|Add0~1\ = CARRY(\xiaoche_instance|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(0),
	datad => VCC,
	combout => \xiaoche_instance|Add0~0_combout\,
	cout => \xiaoche_instance|Add0~1\);

-- Location: LCCOMB_X12_Y2_N12
\xiaoche_instance|count~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|count~8_combout\ = (\xiaoche_instance|Add0~0_combout\ & ((!\xiaoche_instance|Equal0~9_combout\) # (!\xiaoche_instance|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|Equal0~4_combout\,
	datac => \xiaoche_instance|Add0~0_combout\,
	datad => \xiaoche_instance|Equal0~9_combout\,
	combout => \xiaoche_instance|count~8_combout\);

-- Location: FF_X11_Y2_N13
\xiaoche_instance|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \xiaoche_instance|count~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(0));

-- Location: LCCOMB_X11_Y2_N2
\xiaoche_instance|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~2_combout\ = (\xiaoche_instance|count\(1) & (!\xiaoche_instance|Add0~1\)) # (!\xiaoche_instance|count\(1) & ((\xiaoche_instance|Add0~1\) # (GND)))
-- \xiaoche_instance|Add0~3\ = CARRY((!\xiaoche_instance|Add0~1\) # (!\xiaoche_instance|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(1),
	datad => VCC,
	cin => \xiaoche_instance|Add0~1\,
	combout => \xiaoche_instance|Add0~2_combout\,
	cout => \xiaoche_instance|Add0~3\);

-- Location: FF_X11_Y2_N3
\xiaoche_instance|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(1));

-- Location: LCCOMB_X11_Y2_N4
\xiaoche_instance|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~4_combout\ = (\xiaoche_instance|count\(2) & (\xiaoche_instance|Add0~3\ $ (GND))) # (!\xiaoche_instance|count\(2) & (!\xiaoche_instance|Add0~3\ & VCC))
-- \xiaoche_instance|Add0~5\ = CARRY((\xiaoche_instance|count\(2) & !\xiaoche_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(2),
	datad => VCC,
	cin => \xiaoche_instance|Add0~3\,
	combout => \xiaoche_instance|Add0~4_combout\,
	cout => \xiaoche_instance|Add0~5\);

-- Location: FF_X11_Y2_N5
\xiaoche_instance|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(2));

-- Location: LCCOMB_X11_Y2_N6
\xiaoche_instance|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~6_combout\ = (\xiaoche_instance|count\(3) & (!\xiaoche_instance|Add0~5\)) # (!\xiaoche_instance|count\(3) & ((\xiaoche_instance|Add0~5\) # (GND)))
-- \xiaoche_instance|Add0~7\ = CARRY((!\xiaoche_instance|Add0~5\) # (!\xiaoche_instance|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(3),
	datad => VCC,
	cin => \xiaoche_instance|Add0~5\,
	combout => \xiaoche_instance|Add0~6_combout\,
	cout => \xiaoche_instance|Add0~7\);

-- Location: FF_X11_Y2_N7
\xiaoche_instance|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(3));

-- Location: LCCOMB_X11_Y2_N8
\xiaoche_instance|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~8_combout\ = (\xiaoche_instance|count\(4) & (\xiaoche_instance|Add0~7\ $ (GND))) # (!\xiaoche_instance|count\(4) & (!\xiaoche_instance|Add0~7\ & VCC))
-- \xiaoche_instance|Add0~9\ = CARRY((\xiaoche_instance|count\(4) & !\xiaoche_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(4),
	datad => VCC,
	cin => \xiaoche_instance|Add0~7\,
	combout => \xiaoche_instance|Add0~8_combout\,
	cout => \xiaoche_instance|Add0~9\);

-- Location: FF_X11_Y2_N9
\xiaoche_instance|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(4));

-- Location: LCCOMB_X11_Y2_N10
\xiaoche_instance|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~10_combout\ = (\xiaoche_instance|count\(5) & (!\xiaoche_instance|Add0~9\)) # (!\xiaoche_instance|count\(5) & ((\xiaoche_instance|Add0~9\) # (GND)))
-- \xiaoche_instance|Add0~11\ = CARRY((!\xiaoche_instance|Add0~9\) # (!\xiaoche_instance|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(5),
	datad => VCC,
	cin => \xiaoche_instance|Add0~9\,
	combout => \xiaoche_instance|Add0~10_combout\,
	cout => \xiaoche_instance|Add0~11\);

-- Location: FF_X11_Y2_N11
\xiaoche_instance|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(5));

-- Location: LCCOMB_X11_Y2_N12
\xiaoche_instance|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~12_combout\ = (\xiaoche_instance|count\(6) & (\xiaoche_instance|Add0~11\ $ (GND))) # (!\xiaoche_instance|count\(6) & (!\xiaoche_instance|Add0~11\ & VCC))
-- \xiaoche_instance|Add0~13\ = CARRY((\xiaoche_instance|count\(6) & !\xiaoche_instance|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(6),
	datad => VCC,
	cin => \xiaoche_instance|Add0~11\,
	combout => \xiaoche_instance|Add0~12_combout\,
	cout => \xiaoche_instance|Add0~13\);

-- Location: LCCOMB_X10_Y2_N18
\xiaoche_instance|count~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|count~0_combout\ = (\xiaoche_instance|Add0~12_combout\ & ((!\xiaoche_instance|Equal0~4_combout\) # (!\xiaoche_instance|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|Equal0~9_combout\,
	datac => \xiaoche_instance|Equal0~4_combout\,
	datad => \xiaoche_instance|Add0~12_combout\,
	combout => \xiaoche_instance|count~0_combout\);

-- Location: FF_X10_Y2_N19
\xiaoche_instance|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(6));

-- Location: LCCOMB_X11_Y2_N14
\xiaoche_instance|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~14_combout\ = (\xiaoche_instance|count\(7) & (!\xiaoche_instance|Add0~13\)) # (!\xiaoche_instance|count\(7) & ((\xiaoche_instance|Add0~13\) # (GND)))
-- \xiaoche_instance|Add0~15\ = CARRY((!\xiaoche_instance|Add0~13\) # (!\xiaoche_instance|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(7),
	datad => VCC,
	cin => \xiaoche_instance|Add0~13\,
	combout => \xiaoche_instance|Add0~14_combout\,
	cout => \xiaoche_instance|Add0~15\);

-- Location: FF_X11_Y2_N15
\xiaoche_instance|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(7));

-- Location: LCCOMB_X11_Y2_N16
\xiaoche_instance|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~16_combout\ = (\xiaoche_instance|count\(8) & (\xiaoche_instance|Add0~15\ $ (GND))) # (!\xiaoche_instance|count\(8) & (!\xiaoche_instance|Add0~15\ & VCC))
-- \xiaoche_instance|Add0~17\ = CARRY((\xiaoche_instance|count\(8) & !\xiaoche_instance|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(8),
	datad => VCC,
	cin => \xiaoche_instance|Add0~15\,
	combout => \xiaoche_instance|Add0~16_combout\,
	cout => \xiaoche_instance|Add0~17\);

-- Location: LCCOMB_X10_Y2_N12
\xiaoche_instance|count~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|count~1_combout\ = (\xiaoche_instance|Add0~16_combout\ & ((!\xiaoche_instance|Equal0~4_combout\) # (!\xiaoche_instance|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|Equal0~9_combout\,
	datac => \xiaoche_instance|Equal0~4_combout\,
	datad => \xiaoche_instance|Add0~16_combout\,
	combout => \xiaoche_instance|count~1_combout\);

-- Location: FF_X10_Y2_N13
\xiaoche_instance|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(8));

-- Location: LCCOMB_X11_Y2_N18
\xiaoche_instance|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~18_combout\ = (\xiaoche_instance|count\(9) & (!\xiaoche_instance|Add0~17\)) # (!\xiaoche_instance|count\(9) & ((\xiaoche_instance|Add0~17\) # (GND)))
-- \xiaoche_instance|Add0~19\ = CARRY((!\xiaoche_instance|Add0~17\) # (!\xiaoche_instance|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(9),
	datad => VCC,
	cin => \xiaoche_instance|Add0~17\,
	combout => \xiaoche_instance|Add0~18_combout\,
	cout => \xiaoche_instance|Add0~19\);

-- Location: LCCOMB_X10_Y2_N8
\xiaoche_instance|count~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|count~2_combout\ = (\xiaoche_instance|Add0~18_combout\ & ((!\xiaoche_instance|Equal0~4_combout\) # (!\xiaoche_instance|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|Equal0~9_combout\,
	datac => \xiaoche_instance|Equal0~4_combout\,
	datad => \xiaoche_instance|Add0~18_combout\,
	combout => \xiaoche_instance|count~2_combout\);

-- Location: FF_X10_Y2_N9
\xiaoche_instance|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(9));

-- Location: LCCOMB_X11_Y2_N20
\xiaoche_instance|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~20_combout\ = (\xiaoche_instance|count\(10) & (\xiaoche_instance|Add0~19\ $ (GND))) # (!\xiaoche_instance|count\(10) & (!\xiaoche_instance|Add0~19\ & VCC))
-- \xiaoche_instance|Add0~21\ = CARRY((\xiaoche_instance|count\(10) & !\xiaoche_instance|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(10),
	datad => VCC,
	cin => \xiaoche_instance|Add0~19\,
	combout => \xiaoche_instance|Add0~20_combout\,
	cout => \xiaoche_instance|Add0~21\);

-- Location: FF_X11_Y2_N21
\xiaoche_instance|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(10));

-- Location: LCCOMB_X11_Y2_N22
\xiaoche_instance|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~22_combout\ = (\xiaoche_instance|count\(11) & (!\xiaoche_instance|Add0~21\)) # (!\xiaoche_instance|count\(11) & ((\xiaoche_instance|Add0~21\) # (GND)))
-- \xiaoche_instance|Add0~23\ = CARRY((!\xiaoche_instance|Add0~21\) # (!\xiaoche_instance|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(11),
	datad => VCC,
	cin => \xiaoche_instance|Add0~21\,
	combout => \xiaoche_instance|Add0~22_combout\,
	cout => \xiaoche_instance|Add0~23\);

-- Location: LCCOMB_X10_Y2_N6
\xiaoche_instance|count~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|count~3_combout\ = (\xiaoche_instance|Add0~22_combout\ & ((!\xiaoche_instance|Equal0~4_combout\) # (!\xiaoche_instance|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|Equal0~9_combout\,
	datac => \xiaoche_instance|Equal0~4_combout\,
	datad => \xiaoche_instance|Add0~22_combout\,
	combout => \xiaoche_instance|count~3_combout\);

-- Location: FF_X10_Y2_N7
\xiaoche_instance|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(11));

-- Location: LCCOMB_X10_Y2_N26
\xiaoche_instance|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Equal0~7_combout\ = (\xiaoche_instance|count\(8) & (\xiaoche_instance|count\(14) & (\xiaoche_instance|count\(9) & \xiaoche_instance|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(8),
	datab => \xiaoche_instance|count\(14),
	datac => \xiaoche_instance|count\(9),
	datad => \xiaoche_instance|count\(11),
	combout => \xiaoche_instance|Equal0~7_combout\);

-- Location: LCCOMB_X10_Y2_N28
\xiaoche_instance|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Equal0~6_combout\ = (!\xiaoche_instance|count\(4) & (!\xiaoche_instance|count\(5) & (!\xiaoche_instance|count\(7) & \xiaoche_instance|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(4),
	datab => \xiaoche_instance|count\(5),
	datac => \xiaoche_instance|count\(7),
	datad => \xiaoche_instance|count\(6),
	combout => \xiaoche_instance|Equal0~6_combout\);

-- Location: LCCOMB_X10_Y2_N30
\xiaoche_instance|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Equal0~5_combout\ = (!\xiaoche_instance|count\(3) & (!\xiaoche_instance|count\(1) & (!\xiaoche_instance|count\(0) & !\xiaoche_instance|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(3),
	datab => \xiaoche_instance|count\(1),
	datac => \xiaoche_instance|count\(0),
	datad => \xiaoche_instance|count\(2),
	combout => \xiaoche_instance|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y1_N2
\xiaoche_instance|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~34_combout\ = (\xiaoche_instance|count\(17) & (!\xiaoche_instance|Add0~33\)) # (!\xiaoche_instance|count\(17) & ((\xiaoche_instance|Add0~33\) # (GND)))
-- \xiaoche_instance|Add0~35\ = CARRY((!\xiaoche_instance|Add0~33\) # (!\xiaoche_instance|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(17),
	datad => VCC,
	cin => \xiaoche_instance|Add0~33\,
	combout => \xiaoche_instance|Add0~34_combout\,
	cout => \xiaoche_instance|Add0~35\);

-- Location: LCCOMB_X11_Y1_N4
\xiaoche_instance|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~36_combout\ = (\xiaoche_instance|count\(18) & (\xiaoche_instance|Add0~35\ $ (GND))) # (!\xiaoche_instance|count\(18) & (!\xiaoche_instance|Add0~35\ & VCC))
-- \xiaoche_instance|Add0~37\ = CARRY((\xiaoche_instance|count\(18) & !\xiaoche_instance|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(18),
	datad => VCC,
	cin => \xiaoche_instance|Add0~35\,
	combout => \xiaoche_instance|Add0~36_combout\,
	cout => \xiaoche_instance|Add0~37\);

-- Location: LCCOMB_X12_Y2_N20
\xiaoche_instance|count~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|count~5_combout\ = (\xiaoche_instance|Add0~36_combout\ & ((!\xiaoche_instance|Equal0~9_combout\) # (!\xiaoche_instance|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|Equal0~4_combout\,
	datac => \xiaoche_instance|Add0~36_combout\,
	datad => \xiaoche_instance|Equal0~9_combout\,
	combout => \xiaoche_instance|count~5_combout\);

-- Location: FF_X12_Y2_N21
\xiaoche_instance|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(18));

-- Location: LCCOMB_X11_Y1_N6
\xiaoche_instance|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~38_combout\ = (\xiaoche_instance|count\(19) & (!\xiaoche_instance|Add0~37\)) # (!\xiaoche_instance|count\(19) & ((\xiaoche_instance|Add0~37\) # (GND)))
-- \xiaoche_instance|Add0~39\ = CARRY((!\xiaoche_instance|Add0~37\) # (!\xiaoche_instance|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(19),
	datad => VCC,
	cin => \xiaoche_instance|Add0~37\,
	combout => \xiaoche_instance|Add0~38_combout\,
	cout => \xiaoche_instance|Add0~39\);

-- Location: LCCOMB_X12_Y2_N10
\xiaoche_instance|count~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|count~6_combout\ = (\xiaoche_instance|Add0~38_combout\ & ((!\xiaoche_instance|Equal0~9_combout\) # (!\xiaoche_instance|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|Equal0~4_combout\,
	datac => \xiaoche_instance|Add0~38_combout\,
	datad => \xiaoche_instance|Equal0~9_combout\,
	combout => \xiaoche_instance|count~6_combout\);

-- Location: FF_X12_Y2_N11
\xiaoche_instance|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(19));

-- Location: LCCOMB_X10_Y2_N20
\xiaoche_instance|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Equal0~8_combout\ = (!\xiaoche_instance|count\(31) & (\xiaoche_instance|count\(22) & (\xiaoche_instance|count\(18) & \xiaoche_instance|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(31),
	datab => \xiaoche_instance|count\(22),
	datac => \xiaoche_instance|count\(18),
	datad => \xiaoche_instance|count\(19),
	combout => \xiaoche_instance|Equal0~8_combout\);

-- Location: LCCOMB_X10_Y2_N10
\xiaoche_instance|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Equal0~9_combout\ = (\xiaoche_instance|Equal0~7_combout\ & (\xiaoche_instance|Equal0~6_combout\ & (\xiaoche_instance|Equal0~5_combout\ & \xiaoche_instance|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|Equal0~7_combout\,
	datab => \xiaoche_instance|Equal0~6_combout\,
	datac => \xiaoche_instance|Equal0~5_combout\,
	datad => \xiaoche_instance|Equal0~8_combout\,
	combout => \xiaoche_instance|Equal0~9_combout\);

-- Location: LCCOMB_X11_Y2_N24
\xiaoche_instance|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~24_combout\ = (\xiaoche_instance|count\(12) & (\xiaoche_instance|Add0~23\ $ (GND))) # (!\xiaoche_instance|count\(12) & (!\xiaoche_instance|Add0~23\ & VCC))
-- \xiaoche_instance|Add0~25\ = CARRY((\xiaoche_instance|count\(12) & !\xiaoche_instance|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(12),
	datad => VCC,
	cin => \xiaoche_instance|Add0~23\,
	combout => \xiaoche_instance|Add0~24_combout\,
	cout => \xiaoche_instance|Add0~25\);

-- Location: FF_X11_Y2_N25
\xiaoche_instance|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(12));

-- Location: LCCOMB_X11_Y2_N26
\xiaoche_instance|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~26_combout\ = (\xiaoche_instance|count\(13) & (!\xiaoche_instance|Add0~25\)) # (!\xiaoche_instance|count\(13) & ((\xiaoche_instance|Add0~25\) # (GND)))
-- \xiaoche_instance|Add0~27\ = CARRY((!\xiaoche_instance|Add0~25\) # (!\xiaoche_instance|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(13),
	datad => VCC,
	cin => \xiaoche_instance|Add0~25\,
	combout => \xiaoche_instance|Add0~26_combout\,
	cout => \xiaoche_instance|Add0~27\);

-- Location: FF_X11_Y2_N27
\xiaoche_instance|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(13));

-- Location: LCCOMB_X11_Y2_N28
\xiaoche_instance|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~28_combout\ = (\xiaoche_instance|count\(14) & (\xiaoche_instance|Add0~27\ $ (GND))) # (!\xiaoche_instance|count\(14) & (!\xiaoche_instance|Add0~27\ & VCC))
-- \xiaoche_instance|Add0~29\ = CARRY((\xiaoche_instance|count\(14) & !\xiaoche_instance|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(14),
	datad => VCC,
	cin => \xiaoche_instance|Add0~27\,
	combout => \xiaoche_instance|Add0~28_combout\,
	cout => \xiaoche_instance|Add0~29\);

-- Location: LCCOMB_X10_Y2_N16
\xiaoche_instance|count~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|count~4_combout\ = (\xiaoche_instance|Add0~28_combout\ & ((!\xiaoche_instance|Equal0~4_combout\) # (!\xiaoche_instance|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|Equal0~9_combout\,
	datac => \xiaoche_instance|Equal0~4_combout\,
	datad => \xiaoche_instance|Add0~28_combout\,
	combout => \xiaoche_instance|count~4_combout\);

-- Location: FF_X10_Y2_N17
\xiaoche_instance|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(14));

-- Location: LCCOMB_X11_Y2_N30
\xiaoche_instance|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~30_combout\ = (\xiaoche_instance|count\(15) & (!\xiaoche_instance|Add0~29\)) # (!\xiaoche_instance|count\(15) & ((\xiaoche_instance|Add0~29\) # (GND)))
-- \xiaoche_instance|Add0~31\ = CARRY((!\xiaoche_instance|Add0~29\) # (!\xiaoche_instance|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(15),
	datad => VCC,
	cin => \xiaoche_instance|Add0~29\,
	combout => \xiaoche_instance|Add0~30_combout\,
	cout => \xiaoche_instance|Add0~31\);

-- Location: FF_X11_Y2_N31
\xiaoche_instance|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(15));

-- Location: LCCOMB_X11_Y1_N0
\xiaoche_instance|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~32_combout\ = (\xiaoche_instance|count\(16) & (\xiaoche_instance|Add0~31\ $ (GND))) # (!\xiaoche_instance|count\(16) & (!\xiaoche_instance|Add0~31\ & VCC))
-- \xiaoche_instance|Add0~33\ = CARRY((\xiaoche_instance|count\(16) & !\xiaoche_instance|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(16),
	datad => VCC,
	cin => \xiaoche_instance|Add0~31\,
	combout => \xiaoche_instance|Add0~32_combout\,
	cout => \xiaoche_instance|Add0~33\);

-- Location: FF_X11_Y1_N1
\xiaoche_instance|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(16));

-- Location: FF_X11_Y1_N3
\xiaoche_instance|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(17));

-- Location: LCCOMB_X11_Y1_N8
\xiaoche_instance|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~40_combout\ = (\xiaoche_instance|count\(20) & (\xiaoche_instance|Add0~39\ $ (GND))) # (!\xiaoche_instance|count\(20) & (!\xiaoche_instance|Add0~39\ & VCC))
-- \xiaoche_instance|Add0~41\ = CARRY((\xiaoche_instance|count\(20) & !\xiaoche_instance|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(20),
	datad => VCC,
	cin => \xiaoche_instance|Add0~39\,
	combout => \xiaoche_instance|Add0~40_combout\,
	cout => \xiaoche_instance|Add0~41\);

-- Location: FF_X11_Y1_N9
\xiaoche_instance|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(20));

-- Location: LCCOMB_X11_Y1_N10
\xiaoche_instance|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~42_combout\ = (\xiaoche_instance|count\(21) & (!\xiaoche_instance|Add0~41\)) # (!\xiaoche_instance|count\(21) & ((\xiaoche_instance|Add0~41\) # (GND)))
-- \xiaoche_instance|Add0~43\ = CARRY((!\xiaoche_instance|Add0~41\) # (!\xiaoche_instance|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(21),
	datad => VCC,
	cin => \xiaoche_instance|Add0~41\,
	combout => \xiaoche_instance|Add0~42_combout\,
	cout => \xiaoche_instance|Add0~43\);

-- Location: FF_X11_Y1_N11
\xiaoche_instance|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(21));

-- Location: LCCOMB_X12_Y1_N0
\xiaoche_instance|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Equal0~1_combout\ = (!\xiaoche_instance|count\(17) & (!\xiaoche_instance|count\(20) & (!\xiaoche_instance|count\(16) & !\xiaoche_instance|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(17),
	datab => \xiaoche_instance|count\(20),
	datac => \xiaoche_instance|count\(16),
	datad => \xiaoche_instance|count\(21),
	combout => \xiaoche_instance|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y2_N0
\xiaoche_instance|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Equal0~0_combout\ = (!\xiaoche_instance|count\(13) & (!\xiaoche_instance|count\(12) & (!\xiaoche_instance|count\(15) & !\xiaoche_instance|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(13),
	datab => \xiaoche_instance|count\(12),
	datac => \xiaoche_instance|count\(15),
	datad => \xiaoche_instance|count\(10),
	combout => \xiaoche_instance|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y1_N10
\xiaoche_instance|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Equal0~2_combout\ = (!\xiaoche_instance|count\(23) & (!\xiaoche_instance|count\(26) & (!\xiaoche_instance|count\(24) & !\xiaoche_instance|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(23),
	datab => \xiaoche_instance|count\(26),
	datac => \xiaoche_instance|count\(24),
	datad => \xiaoche_instance|count\(25),
	combout => \xiaoche_instance|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y1_N20
\xiaoche_instance|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Equal0~3_combout\ = (!\xiaoche_instance|count\(30) & (!\xiaoche_instance|count\(28) & (!\xiaoche_instance|count\(29) & !\xiaoche_instance|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(30),
	datab => \xiaoche_instance|count\(28),
	datac => \xiaoche_instance|count\(29),
	datad => \xiaoche_instance|count\(27),
	combout => \xiaoche_instance|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y2_N6
\xiaoche_instance|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Equal0~4_combout\ = (\xiaoche_instance|Equal0~1_combout\ & (\xiaoche_instance|Equal0~0_combout\ & (\xiaoche_instance|Equal0~2_combout\ & \xiaoche_instance|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|Equal0~1_combout\,
	datab => \xiaoche_instance|Equal0~0_combout\,
	datac => \xiaoche_instance|Equal0~2_combout\,
	datad => \xiaoche_instance|Equal0~3_combout\,
	combout => \xiaoche_instance|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y1_N12
\xiaoche_instance|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~44_combout\ = (\xiaoche_instance|count\(22) & (\xiaoche_instance|Add0~43\ $ (GND))) # (!\xiaoche_instance|count\(22) & (!\xiaoche_instance|Add0~43\ & VCC))
-- \xiaoche_instance|Add0~45\ = CARRY((\xiaoche_instance|count\(22) & !\xiaoche_instance|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(22),
	datad => VCC,
	cin => \xiaoche_instance|Add0~43\,
	combout => \xiaoche_instance|Add0~44_combout\,
	cout => \xiaoche_instance|Add0~45\);

-- Location: LCCOMB_X10_Y2_N0
\xiaoche_instance|count~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|count~7_combout\ = (\xiaoche_instance|Add0~44_combout\ & ((!\xiaoche_instance|Equal0~9_combout\) # (!\xiaoche_instance|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|Equal0~4_combout\,
	datac => \xiaoche_instance|Add0~44_combout\,
	datad => \xiaoche_instance|Equal0~9_combout\,
	combout => \xiaoche_instance|count~7_combout\);

-- Location: FF_X10_Y2_N1
\xiaoche_instance|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(22));

-- Location: LCCOMB_X11_Y1_N14
\xiaoche_instance|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~46_combout\ = (\xiaoche_instance|count\(23) & (!\xiaoche_instance|Add0~45\)) # (!\xiaoche_instance|count\(23) & ((\xiaoche_instance|Add0~45\) # (GND)))
-- \xiaoche_instance|Add0~47\ = CARRY((!\xiaoche_instance|Add0~45\) # (!\xiaoche_instance|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(23),
	datad => VCC,
	cin => \xiaoche_instance|Add0~45\,
	combout => \xiaoche_instance|Add0~46_combout\,
	cout => \xiaoche_instance|Add0~47\);

-- Location: FF_X11_Y1_N15
\xiaoche_instance|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(23));

-- Location: LCCOMB_X11_Y1_N16
\xiaoche_instance|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~48_combout\ = (\xiaoche_instance|count\(24) & (\xiaoche_instance|Add0~47\ $ (GND))) # (!\xiaoche_instance|count\(24) & (!\xiaoche_instance|Add0~47\ & VCC))
-- \xiaoche_instance|Add0~49\ = CARRY((\xiaoche_instance|count\(24) & !\xiaoche_instance|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(24),
	datad => VCC,
	cin => \xiaoche_instance|Add0~47\,
	combout => \xiaoche_instance|Add0~48_combout\,
	cout => \xiaoche_instance|Add0~49\);

-- Location: FF_X11_Y1_N17
\xiaoche_instance|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(24));

-- Location: LCCOMB_X11_Y1_N18
\xiaoche_instance|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~50_combout\ = (\xiaoche_instance|count\(25) & (!\xiaoche_instance|Add0~49\)) # (!\xiaoche_instance|count\(25) & ((\xiaoche_instance|Add0~49\) # (GND)))
-- \xiaoche_instance|Add0~51\ = CARRY((!\xiaoche_instance|Add0~49\) # (!\xiaoche_instance|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(25),
	datad => VCC,
	cin => \xiaoche_instance|Add0~49\,
	combout => \xiaoche_instance|Add0~50_combout\,
	cout => \xiaoche_instance|Add0~51\);

-- Location: FF_X11_Y1_N19
\xiaoche_instance|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(25));

-- Location: LCCOMB_X11_Y1_N20
\xiaoche_instance|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~52_combout\ = (\xiaoche_instance|count\(26) & (\xiaoche_instance|Add0~51\ $ (GND))) # (!\xiaoche_instance|count\(26) & (!\xiaoche_instance|Add0~51\ & VCC))
-- \xiaoche_instance|Add0~53\ = CARRY((\xiaoche_instance|count\(26) & !\xiaoche_instance|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(26),
	datad => VCC,
	cin => \xiaoche_instance|Add0~51\,
	combout => \xiaoche_instance|Add0~52_combout\,
	cout => \xiaoche_instance|Add0~53\);

-- Location: FF_X11_Y1_N21
\xiaoche_instance|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(26));

-- Location: LCCOMB_X11_Y1_N22
\xiaoche_instance|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~54_combout\ = (\xiaoche_instance|count\(27) & (!\xiaoche_instance|Add0~53\)) # (!\xiaoche_instance|count\(27) & ((\xiaoche_instance|Add0~53\) # (GND)))
-- \xiaoche_instance|Add0~55\ = CARRY((!\xiaoche_instance|Add0~53\) # (!\xiaoche_instance|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(27),
	datad => VCC,
	cin => \xiaoche_instance|Add0~53\,
	combout => \xiaoche_instance|Add0~54_combout\,
	cout => \xiaoche_instance|Add0~55\);

-- Location: FF_X11_Y1_N23
\xiaoche_instance|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(27));

-- Location: LCCOMB_X11_Y1_N24
\xiaoche_instance|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~56_combout\ = (\xiaoche_instance|count\(28) & (\xiaoche_instance|Add0~55\ $ (GND))) # (!\xiaoche_instance|count\(28) & (!\xiaoche_instance|Add0~55\ & VCC))
-- \xiaoche_instance|Add0~57\ = CARRY((\xiaoche_instance|count\(28) & !\xiaoche_instance|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(28),
	datad => VCC,
	cin => \xiaoche_instance|Add0~55\,
	combout => \xiaoche_instance|Add0~56_combout\,
	cout => \xiaoche_instance|Add0~57\);

-- Location: FF_X11_Y1_N25
\xiaoche_instance|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(28));

-- Location: LCCOMB_X11_Y1_N26
\xiaoche_instance|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~58_combout\ = (\xiaoche_instance|count\(29) & (!\xiaoche_instance|Add0~57\)) # (!\xiaoche_instance|count\(29) & ((\xiaoche_instance|Add0~57\) # (GND)))
-- \xiaoche_instance|Add0~59\ = CARRY((!\xiaoche_instance|Add0~57\) # (!\xiaoche_instance|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(29),
	datad => VCC,
	cin => \xiaoche_instance|Add0~57\,
	combout => \xiaoche_instance|Add0~58_combout\,
	cout => \xiaoche_instance|Add0~59\);

-- Location: FF_X11_Y1_N27
\xiaoche_instance|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(29));

-- Location: LCCOMB_X11_Y1_N28
\xiaoche_instance|Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~60_combout\ = (\xiaoche_instance|count\(30) & (\xiaoche_instance|Add0~59\ $ (GND))) # (!\xiaoche_instance|count\(30) & (!\xiaoche_instance|Add0~59\ & VCC))
-- \xiaoche_instance|Add0~61\ = CARRY((\xiaoche_instance|count\(30) & !\xiaoche_instance|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xiaoche_instance|count\(30),
	datad => VCC,
	cin => \xiaoche_instance|Add0~59\,
	combout => \xiaoche_instance|Add0~60_combout\,
	cout => \xiaoche_instance|Add0~61\);

-- Location: FF_X11_Y1_N29
\xiaoche_instance|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(30));

-- Location: LCCOMB_X11_Y1_N30
\xiaoche_instance|Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|Add0~62_combout\ = \xiaoche_instance|count\(31) $ (\xiaoche_instance|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(31),
	cin => \xiaoche_instance|Add0~61\,
	combout => \xiaoche_instance|Add0~62_combout\);

-- Location: FF_X11_Y1_N31
\xiaoche_instance|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xiaoche_instance|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xiaoche_instance|count\(31));

-- Location: LCCOMB_X10_Y2_N4
\xiaoche_instance|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|LessThan0~0_combout\ = ((!\xiaoche_instance|count\(4) & ((!\xiaoche_instance|count\(3)) # (!\xiaoche_instance|count\(2))))) # (!\xiaoche_instance|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(2),
	datab => \xiaoche_instance|count\(5),
	datac => \xiaoche_instance|count\(4),
	datad => \xiaoche_instance|count\(3),
	combout => \xiaoche_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y2_N14
\xiaoche_instance|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|LessThan0~1_combout\ = ((!\xiaoche_instance|count\(7) & (\xiaoche_instance|LessThan0~0_combout\ & !\xiaoche_instance|count\(6)))) # (!\xiaoche_instance|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(8),
	datab => \xiaoche_instance|count\(7),
	datac => \xiaoche_instance|LessThan0~0_combout\,
	datad => \xiaoche_instance|count\(6),
	combout => \xiaoche_instance|LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y2_N22
\xiaoche_instance|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|LessThan0~2_combout\ = (!\xiaoche_instance|count\(11) & (!\xiaoche_instance|count\(9) & (!\xiaoche_instance|count\(18) & !\xiaoche_instance|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(11),
	datab => \xiaoche_instance|count\(9),
	datac => \xiaoche_instance|count\(18),
	datad => \xiaoche_instance|count\(14),
	combout => \xiaoche_instance|LessThan0~2_combout\);

-- Location: LCCOMB_X10_Y2_N2
\xiaoche_instance|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|LessThan0~3_combout\ = (!\xiaoche_instance|count\(19) & (\xiaoche_instance|LessThan0~1_combout\ & (\xiaoche_instance|LessThan0~2_combout\ & !\xiaoche_instance|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(19),
	datab => \xiaoche_instance|LessThan0~1_combout\,
	datac => \xiaoche_instance|LessThan0~2_combout\,
	datad => \xiaoche_instance|count\(22),
	combout => \xiaoche_instance|LessThan0~3_combout\);

-- Location: LCCOMB_X10_Y2_N24
\xiaoche_instance|LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xiaoche_instance|LessThan0~4_combout\ = (\xiaoche_instance|count\(31)) # ((\xiaoche_instance|LessThan0~3_combout\ & \xiaoche_instance|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xiaoche_instance|count\(31),
	datab => \xiaoche_instance|LessThan0~3_combout\,
	datac => \xiaoche_instance|Equal0~4_combout\,
	combout => \xiaoche_instance|LessThan0~4_combout\);

-- Location: IOIBUF_X33_Y11_N1
\echo3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo3,
	o => \echo3~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\echo2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo2,
	o => \echo2~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\echo1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo1,
	o => \echo1~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\infrared_d~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_infrared_d,
	o => \infrared_d~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\infrared_c~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_infrared_c,
	o => \infrared_c~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\infrared_a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_infrared_a,
	o => \infrared_a~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\infrared_b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_infrared_b,
	o => \infrared_b~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

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


