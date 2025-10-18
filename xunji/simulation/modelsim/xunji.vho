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

-- DATE "09/08/2025 10:14:31"

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

ENTITY 	xunji IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	track1 : IN std_logic;
	track2 : IN std_logic;
	track3 : IN std_logic;
	track4 : IN std_logic;
	left_dir : BUFFER std_logic_vector(1 DOWNTO 0);
	right_dir : BUFFER std_logic_vector(1 DOWNTO 0);
	pwm_value : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END xunji;

-- Design Ports Information
-- left_dir[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left_dir[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_dir[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_dir[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_value[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- track1	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- track2	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- track3	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- track4	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF xunji IS
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
SIGNAL ww_track1 : std_logic;
SIGNAL ww_track2 : std_logic;
SIGNAL ww_track3 : std_logic;
SIGNAL ww_track4 : std_logic;
SIGNAL ww_left_dir : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_right_dir : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pwm_value : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \left_dir[0]~output_o\ : std_logic;
SIGNAL \left_dir[1]~output_o\ : std_logic;
SIGNAL \right_dir[0]~output_o\ : std_logic;
SIGNAL \right_dir[1]~output_o\ : std_logic;
SIGNAL \pwm_value[0]~output_o\ : std_logic;
SIGNAL \pwm_value[1]~output_o\ : std_logic;
SIGNAL \pwm_value[2]~output_o\ : std_logic;
SIGNAL \pwm_value[3]~output_o\ : std_logic;
SIGNAL \pwm_value[4]~output_o\ : std_logic;
SIGNAL \pwm_value[5]~output_o\ : std_logic;
SIGNAL \pwm_value[6]~output_o\ : std_logic;
SIGNAL \pwm_value[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \track1~input_o\ : std_logic;
SIGNAL \track3~input_o\ : std_logic;
SIGNAL \track2~input_o\ : std_logic;
SIGNAL \pwm_value~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \left_dir[0]~reg0_q\ : std_logic;
SIGNAL \track4~input_o\ : std_logic;
SIGNAL \left_dir~0_combout\ : std_logic;
SIGNAL \left_dir[1]~reg0_q\ : std_logic;
SIGNAL \right_dir~0_combout\ : std_logic;
SIGNAL \right_dir[0]~reg0_q\ : std_logic;
SIGNAL \right_dir~1_combout\ : std_logic;
SIGNAL \right_dir[1]~reg0_q\ : std_logic;
SIGNAL \pwm_value~1_combout\ : std_logic;
SIGNAL \pwm_value[0]~reg0_q\ : std_logic;
SIGNAL \pwm_value~2_combout\ : std_logic;
SIGNAL \pwm_value[1]~reg0feeder_combout\ : std_logic;
SIGNAL \pwm_value[1]~reg0_q\ : std_logic;
SIGNAL \pwm_value[3]~reg0_q\ : std_logic;
SIGNAL \left_dir~1_combout\ : std_logic;
SIGNAL \pwm_value[4]~reg0_q\ : std_logic;
SIGNAL \pwm_value[5]~reg0feeder_combout\ : std_logic;
SIGNAL \pwm_value[5]~reg0_q\ : std_logic;
SIGNAL \pwm_value[6]~reg0feeder_combout\ : std_logic;
SIGNAL \pwm_value[6]~reg0_q\ : std_logic;
SIGNAL \pwm_value[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pwm_value[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pwm_value[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pwm_value[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pwm_value[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pwm_value[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pwm_value[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pwm_value[0]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_track1 <= track1;
ww_track2 <= track2;
ww_track3 <= track3;
ww_track4 <= track4;
left_dir <= ww_left_dir;
right_dir <= ww_right_dir;
pwm_value <= ww_pwm_value;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_pwm_value[7]~reg0_q\ <= NOT \pwm_value[7]~reg0_q\;
\ALT_INV_pwm_value[6]~reg0_q\ <= NOT \pwm_value[6]~reg0_q\;
\ALT_INV_pwm_value[5]~reg0_q\ <= NOT \pwm_value[5]~reg0_q\;
\ALT_INV_pwm_value[4]~reg0_q\ <= NOT \pwm_value[4]~reg0_q\;
\ALT_INV_pwm_value[3]~reg0_q\ <= NOT \pwm_value[3]~reg0_q\;
\ALT_INV_pwm_value[1]~reg0_q\ <= NOT \pwm_value[1]~reg0_q\;
\ALT_INV_pwm_value[0]~reg0_q\ <= NOT \pwm_value[0]~reg0_q\;

-- Location: IOOBUF_X14_Y0_N9
\left_dir[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_dir[0]~reg0_q\,
	devoe => ww_devoe,
	o => \left_dir[0]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\left_dir[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_dir[1]~reg0_q\,
	devoe => ww_devoe,
	o => \left_dir[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\right_dir[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_dir[0]~reg0_q\,
	devoe => ww_devoe,
	o => \right_dir[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\right_dir[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_dir[1]~reg0_q\,
	devoe => ww_devoe,
	o => \right_dir[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\pwm_value[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[0]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
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

-- Location: IOOBUF_X33_Y14_N9
\pwm_value[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pwm_value[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
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

-- Location: IOOBUF_X24_Y0_N2
\pwm_value[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[4]~reg0_q\,
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
	i => \ALT_INV_pwm_value[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[5]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\pwm_value[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\pwm_value[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_value[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_value[7]~output_o\);

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

-- Location: IOIBUF_X10_Y31_N1
\track1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_track1,
	o => \track1~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\track3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_track3,
	o => \track3~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\track2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_track2,
	o => \track2~input_o\);

-- Location: LCCOMB_X20_Y1_N0
\pwm_value~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pwm_value~0_combout\ = ((!\track2~input_o\) # (!\track3~input_o\)) # (!\track1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track1~input_o\,
	datac => \track3~input_o\,
	datad => \track2~input_o\,
	combout => \pwm_value~0_combout\);

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

-- Location: FF_X20_Y1_N1
\left_dir[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_value~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_dir[0]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N1
\track4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_track4,
	o => \track4~input_o\);

-- Location: LCCOMB_X20_Y1_N26
\left_dir~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left_dir~0_combout\ = (\track2~input_o\ & (\track1~input_o\ & (\track3~input_o\ & !\track4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track2~input_o\,
	datab => \track1~input_o\,
	datac => \track3~input_o\,
	datad => \track4~input_o\,
	combout => \left_dir~0_combout\);

-- Location: FF_X20_Y1_N27
\left_dir[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_dir~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_dir[1]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N12
\right_dir~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right_dir~0_combout\ = (((\track1~input_o\ & !\track4~input_o\)) # (!\track3~input_o\)) # (!\track2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track2~input_o\,
	datab => \track1~input_o\,
	datac => \track3~input_o\,
	datad => \track4~input_o\,
	combout => \right_dir~0_combout\);

-- Location: FF_X20_Y1_N13
\right_dir[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_dir~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right_dir[0]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N22
\right_dir~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \right_dir~1_combout\ = (!\track1~input_o\ & (\track3~input_o\ & \track2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track1~input_o\,
	datac => \track3~input_o\,
	datad => \track2~input_o\,
	combout => \right_dir~1_combout\);

-- Location: FF_X20_Y1_N23
\right_dir[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_dir~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right_dir[1]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N4
\pwm_value~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pwm_value~1_combout\ = (\track2~input_o\ & (\track3~input_o\ & ((!\track4~input_o\) # (!\track1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track2~input_o\,
	datab => \track1~input_o\,
	datac => \track3~input_o\,
	datad => \track4~input_o\,
	combout => \pwm_value~1_combout\);

-- Location: FF_X20_Y1_N9
\pwm_value[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pwm_value~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[0]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N28
\pwm_value~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pwm_value~2_combout\ = (((!\track4~input_o\) # (!\track3~input_o\)) # (!\track1~input_o\)) # (!\track2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track2~input_o\,
	datab => \track1~input_o\,
	datac => \track3~input_o\,
	datad => \track4~input_o\,
	combout => \pwm_value~2_combout\);

-- Location: LCCOMB_X20_Y1_N2
\pwm_value[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pwm_value[1]~reg0feeder_combout\ = \pwm_value~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pwm_value~2_combout\,
	combout => \pwm_value[1]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N3
\pwm_value[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_value[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[1]~reg0_q\);

-- Location: FF_X20_Y1_N5
\pwm_value[3]~reg0\ : dffeas
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
	q => \pwm_value[3]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N6
\left_dir~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \left_dir~1_combout\ = (!\track2~input_o\) # (!\track3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track3~input_o\,
	datad => \track2~input_o\,
	combout => \left_dir~1_combout\);

-- Location: FF_X20_Y1_N7
\pwm_value[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_dir~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[4]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N16
\pwm_value[5]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pwm_value[5]~reg0feeder_combout\ = \pwm_value~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pwm_value~2_combout\,
	combout => \pwm_value[5]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N17
\pwm_value[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_value[5]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[5]~reg0_q\);

-- Location: LCCOMB_X20_Y1_N10
\pwm_value[6]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pwm_value[6]~reg0feeder_combout\ = \pwm_value~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pwm_value~2_combout\,
	combout => \pwm_value[6]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N11
\pwm_value[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_value[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[6]~reg0_q\);

-- Location: FF_X20_Y1_N29
\pwm_value[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_value~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_value[7]~reg0_q\);

ww_left_dir(0) <= \left_dir[0]~output_o\;

ww_left_dir(1) <= \left_dir[1]~output_o\;

ww_right_dir(0) <= \right_dir[0]~output_o\;

ww_right_dir(1) <= \right_dir[1]~output_o\;

ww_pwm_value(0) <= \pwm_value[0]~output_o\;

ww_pwm_value(1) <= \pwm_value[1]~output_o\;

ww_pwm_value(2) <= \pwm_value[2]~output_o\;

ww_pwm_value(3) <= \pwm_value[3]~output_o\;

ww_pwm_value(4) <= \pwm_value[4]~output_o\;

ww_pwm_value(5) <= \pwm_value[5]~output_o\;

ww_pwm_value(6) <= \pwm_value[6]~output_o\;

ww_pwm_value(7) <= \pwm_value[7]~output_o\;
END structure;


