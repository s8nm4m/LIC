-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/23/2023 17:11:06"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RingBufferControl IS
    PORT (
	DAV : IN std_logic;
	CTS : IN std_logic;
	full : IN std_logic;
	empty : IN std_logic;
	Reset : IN std_logic;
	CLK : IN std_logic;
	Wr : OUT std_logic;
	selPG : OUT std_logic;
	Wreg : OUT std_logic;
	DAC : OUT std_logic;
	incPut : OUT std_logic;
	incGet : OUT std_logic
	);
END RingBufferControl;

-- Design Ports Information
-- Wr	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selPG	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wreg	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAC	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incPut	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incGet	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAV	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- full	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTS	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empty	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RingBufferControl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DAV : std_logic;
SIGNAL ww_CTS : std_logic;
SIGNAL ww_full : std_logic;
SIGNAL ww_empty : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Wr : std_logic;
SIGNAL ww_selPG : std_logic;
SIGNAL ww_Wreg : std_logic;
SIGNAL ww_DAC : std_logic;
SIGNAL ww_incPut : std_logic;
SIGNAL ww_incGet : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Wr~output_o\ : std_logic;
SIGNAL \selPG~output_o\ : std_logic;
SIGNAL \Wreg~output_o\ : std_logic;
SIGNAL \DAC~output_o\ : std_logic;
SIGNAL \incPut~output_o\ : std_logic;
SIGNAL \incGet~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DAV~input_o\ : std_logic;
SIGNAL \full~input_o\ : std_logic;
SIGNAL \CTS~input_o\ : std_logic;
SIGNAL \empty~input_o\ : std_logic;
SIGNAL \NextState.WRITE_REG~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \CurrentState.WRITE_REG~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \CurrentState.INC_GET~q\ : std_logic;
SIGNAL \NextState.ZEN~0_combout\ : std_logic;
SIGNAL \CurrentState.INC_PUT~feeder_combout\ : std_logic;
SIGNAL \CurrentState.INC_PUT~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \CurrentState.ACCEPTED~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \CurrentState.ZEN~q\ : std_logic;
SIGNAL \NextState.SELECT_PUT~0_combout\ : std_logic;
SIGNAL \CurrentState.SELECT_PUT~q\ : std_logic;
SIGNAL \CurrentState.WRITE_RAM~q\ : std_logic;
SIGNAL \selPG~0_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DAV <= DAV;
ww_CTS <= CTS;
ww_full <= full;
ww_empty <= empty;
ww_Reset <= Reset;
ww_CLK <= CLK;
Wr <= ww_Wr;
selPG <= ww_selPG;
Wreg <= ww_Wreg;
DAC <= ww_DAC;
incPut <= ww_incPut;
incGet <= ww_incGet;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X54_Y54_N2
\Wr~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CurrentState.WRITE_RAM~q\,
	devoe => ww_devoe,
	o => \Wr~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\selPG~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \selPG~0_combout\,
	devoe => ww_devoe,
	o => \selPG~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\Wreg~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CurrentState.WRITE_REG~q\,
	devoe => ww_devoe,
	o => \Wreg~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\DAC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CurrentState.ACCEPTED~q\,
	devoe => ww_devoe,
	o => \DAC~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\incPut~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CurrentState.INC_PUT~q\,
	devoe => ww_devoe,
	o => \incPut~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\incGet~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CurrentState.INC_GET~q\,
	devoe => ww_devoe,
	o => \incGet~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X56_Y54_N15
\DAV~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DAV,
	o => \DAV~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\full~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_full,
	o => \full~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\CTS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CTS,
	o => \CTS~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\empty~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_empty,
	o => \empty~input_o\);

-- Location: LCCOMB_X55_Y53_N14
\NextState.WRITE_REG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \NextState.WRITE_REG~0_combout\ = (\CTS~input_o\ & (!\empty~input_o\ & ((\full~input_o\) # (!\DAV~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTS~input_o\,
	datab => \full~input_o\,
	datac => \empty~input_o\,
	datad => \DAV~input_o\,
	combout => \NextState.WRITE_REG~0_combout\);

-- Location: LCCOMB_X55_Y53_N12
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\CTS~input_o\ & ((\CurrentState.WRITE_REG~q\) # ((\NextState.WRITE_REG~0_combout\ & !\CurrentState.ZEN~q\)))) # (!\CTS~input_o\ & (\NextState.WRITE_REG~0_combout\ & ((!\CurrentState.ZEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTS~input_o\,
	datab => \NextState.WRITE_REG~0_combout\,
	datac => \CurrentState.WRITE_REG~q\,
	datad => \CurrentState.ZEN~q\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X55_Y53_N13
\CurrentState.WRITE_REG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.WRITE_REG~q\);

-- Location: LCCOMB_X55_Y53_N6
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\CTS~input_o\ & \CurrentState.WRITE_REG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTS~input_o\,
	datad => \CurrentState.WRITE_REG~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X55_Y53_N7
\CurrentState.INC_GET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.INC_GET~q\);

-- Location: LCCOMB_X55_Y53_N22
\NextState.ZEN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \NextState.ZEN~0_combout\ = (\CTS~input_o\ & (((!\full~input_o\ & \DAV~input_o\)) # (!\empty~input_o\))) # (!\CTS~input_o\ & (!\full~input_o\ & ((\DAV~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTS~input_o\,
	datab => \full~input_o\,
	datac => \empty~input_o\,
	datad => \DAV~input_o\,
	combout => \NextState.ZEN~0_combout\);

-- Location: LCCOMB_X55_Y53_N16
\CurrentState.INC_PUT~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CurrentState.INC_PUT~feeder_combout\ = \CurrentState.WRITE_RAM~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CurrentState.WRITE_RAM~q\,
	combout => \CurrentState.INC_PUT~feeder_combout\);

-- Location: FF_X55_Y53_N17
\CurrentState.INC_PUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CurrentState.INC_PUT~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.INC_PUT~q\);

-- Location: LCCOMB_X55_Y53_N18
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\CurrentState.INC_PUT~q\) # ((\DAV~input_o\ & \CurrentState.ACCEPTED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DAV~input_o\,
	datac => \CurrentState.ACCEPTED~q\,
	datad => \CurrentState.INC_PUT~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X55_Y53_N19
\CurrentState.ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.ACCEPTED~q\);

-- Location: LCCOMB_X55_Y53_N20
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\DAV~input_o\ & \CurrentState.ACCEPTED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DAV~input_o\,
	datad => \CurrentState.ACCEPTED~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X55_Y53_N28
\Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (!\CurrentState.INC_GET~q\ & (!\Selector9~0_combout\ & ((\NextState.ZEN~0_combout\) # (\CurrentState.ZEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrentState.INC_GET~q\,
	datab => \NextState.ZEN~0_combout\,
	datac => \CurrentState.ZEN~q\,
	datad => \Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X55_Y53_N29
\CurrentState.ZEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.ZEN~q\);

-- Location: LCCOMB_X55_Y53_N26
\NextState.SELECT_PUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \NextState.SELECT_PUT~0_combout\ = (\DAV~input_o\ & (!\full~input_o\ & !\CurrentState.ZEN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DAV~input_o\,
	datac => \full~input_o\,
	datad => \CurrentState.ZEN~q\,
	combout => \NextState.SELECT_PUT~0_combout\);

-- Location: FF_X55_Y53_N27
\CurrentState.SELECT_PUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NextState.SELECT_PUT~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.SELECT_PUT~q\);

-- Location: FF_X55_Y53_N25
\CurrentState.WRITE_RAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CurrentState.SELECT_PUT~q\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.WRITE_RAM~q\);

-- Location: LCCOMB_X55_Y53_N24
\selPG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \selPG~0_combout\ = (\CurrentState.SELECT_PUT~q\) # (\CurrentState.WRITE_RAM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrentState.SELECT_PUT~q\,
	datac => \CurrentState.WRITE_RAM~q\,
	combout => \selPG~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Wr <= \Wr~output_o\;

ww_selPG <= \selPG~output_o\;

ww_Wreg <= \Wreg~output_o\;

ww_DAC <= \DAC~output_o\;

ww_incPut <= \incPut~output_o\;

ww_incGet <= \incGet~output_o\;
END structure;


