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

-- DATE "04/27/2023 01:30:20"

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

ENTITY 	SLCDC IS
    PORT (
	SS : IN std_logic;
	SCLK : IN std_logic;
	CLK : IN std_logic;
	SDX : IN std_logic;
	Reset : IN std_logic;
	Wrl : OUT std_logic;
	Dout : OUT std_logic_vector(4 DOWNTO 0)
	);
END SLCDC;

-- Design Ports Information
-- Wrl	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SS	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SLCDC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SS : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SDX : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Wrl : std_logic;
SIGNAL ww_Dout : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sr|fsc|Q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Wrl~output_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SS~input_o\ : std_logic;
SIGNAL \sr|f|Q~0_combout\ : std_logic;
SIGNAL \sr|f|Q~q\ : std_logic;
SIGNAL \lcdd|cup|reg|ff0|Q~0_combout\ : std_logic;
SIGNAL \lcdd|cup|reg|ff0|Q~q\ : std_logic;
SIGNAL \lcdd|cup|reg|ff1|Q~0_combout\ : std_logic;
SIGNAL \lcdd|cup|reg|ff1|Q~q\ : std_logic;
SIGNAL \lcdd|cup|reg|ff2|Q~0_combout\ : std_logic;
SIGNAL \lcdd|cup|reg|ff2|Q~q\ : std_logic;
SIGNAL \lcdd|cup|ad|fa3|Co~0_combout\ : std_logic;
SIGNAL \lcdd|cup|reg|ff3|Q~0_combout\ : std_logic;
SIGNAL \lcdd|cup|reg|ff3|Q~q\ : std_logic;
SIGNAL \lcdd|Selector2~0_combout\ : std_logic;
SIGNAL \lcdd|Selector2~1_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \lcdd|CurrentState.THIRD~q\ : std_logic;
SIGNAL \sr|sc|Selector0~0_combout\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \sr|fsc|Q~0_combout\ : std_logic;
SIGNAL \sr|fsc|Q~feeder_combout\ : std_logic;
SIGNAL \sr|fsc|Q~q\ : std_logic;
SIGNAL \sr|fsc|Q~clkctrl_outclk\ : std_logic;
SIGNAL \sr|c|reg|ff0|Q~0_combout\ : std_logic;
SIGNAL \sr|c|reg|ff0|Q~q\ : std_logic;
SIGNAL \sr|c|reg|ff1|Q~0_combout\ : std_logic;
SIGNAL \sr|c|reg|ff1|Q~q\ : std_logic;
SIGNAL \sr|c|reg|ff2|Q~0_combout\ : std_logic;
SIGNAL \sr|c|reg|ff2|Q~q\ : std_logic;
SIGNAL \sr|sc|Selector2~1_combout\ : std_logic;
SIGNAL \sr|sc|Selector0~1_combout\ : std_logic;
SIGNAL \sr|sc|CurrentState.FIRST~q\ : std_logic;
SIGNAL \sr|sc|NextState.FORTH~0_combout\ : std_logic;
SIGNAL \sr|sc|CurrentState.FORTH~q\ : std_logic;
SIGNAL \sr|sc|Selector1~0_combout\ : std_logic;
SIGNAL \sr|sc|CurrentState.SECOND~q\ : std_logic;
SIGNAL \sr|sc|Selector2~0_combout\ : std_logic;
SIGNAL \sr|sc|Selector2~2_combout\ : std_logic;
SIGNAL \sr|sc|CurrentState.THIRD~q\ : std_logic;
SIGNAL \lcdd|Selector0~0_combout\ : std_logic;
SIGNAL \lcdd|CurrentState.FIRST~q\ : std_logic;
SIGNAL \lcdd|Selector1~0_combout\ : std_logic;
SIGNAL \lcdd|CurrentState.SECOND~q\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \sr|sr|ffd4|Q~0_combout\ : std_logic;
SIGNAL \sr|sr|ffd4|Q~feeder_combout\ : std_logic;
SIGNAL \sr|sr|ffd4|Q~q\ : std_logic;
SIGNAL \sr|sr|ffd3|Q~feeder_combout\ : std_logic;
SIGNAL \sr|sr|ffd3|Q~q\ : std_logic;
SIGNAL \sr|sr|ffd2|Q~feeder_combout\ : std_logic;
SIGNAL \sr|sr|ffd2|Q~q\ : std_logic;
SIGNAL \sr|sr|ffd1|Q~feeder_combout\ : std_logic;
SIGNAL \sr|sr|ffd1|Q~q\ : std_logic;
SIGNAL \sr|sr|ffd0|Q~feeder_combout\ : std_logic;
SIGNAL \sr|sr|ffd0|Q~q\ : std_logic;
SIGNAL \sr|fsc|ALT_INV_Q~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \sr|sr|ffd4|ALT_INV_Q~q\ : std_logic;
SIGNAL \sr|sr|ffd3|ALT_INV_Q~q\ : std_logic;
SIGNAL \sr|sr|ffd2|ALT_INV_Q~q\ : std_logic;
SIGNAL \sr|sr|ffd1|ALT_INV_Q~q\ : std_logic;
SIGNAL \sr|sr|ffd0|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SS <= SS;
ww_SCLK <= SCLK;
ww_CLK <= CLK;
ww_SDX <= SDX;
ww_Reset <= Reset;
Wrl <= ww_Wrl;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\sr|fsc|Q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sr|fsc|Q~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\sr|fsc|ALT_INV_Q~clkctrl_outclk\ <= NOT \sr|fsc|Q~clkctrl_outclk\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\sr|sr|ffd4|ALT_INV_Q~q\ <= NOT \sr|sr|ffd4|Q~q\;
\sr|sr|ffd3|ALT_INV_Q~q\ <= NOT \sr|sr|ffd3|Q~q\;
\sr|sr|ffd2|ALT_INV_Q~q\ <= NOT \sr|sr|ffd2|Q~q\;
\sr|sr|ffd1|ALT_INV_Q~q\ <= NOT \sr|sr|ffd1|Q~q\;
\sr|sr|ffd0|ALT_INV_Q~q\ <= NOT \sr|sr|ffd0|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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
\Wrl~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcdd|CurrentState.SECOND~q\,
	devoe => ww_devoe,
	o => \Wrl~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\Dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|sr|ffd0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\Dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|sr|ffd1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|sr|ffd2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\Dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|sr|ffd3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|sr|ffd4|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

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

-- Location: IOIBUF_X56_Y54_N8
\SS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SS,
	o => \SS~input_o\);

-- Location: LCCOMB_X55_Y53_N30
\sr|f|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|f|Q~0_combout\ = !\SS~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SS~input_o\,
	combout => \sr|f|Q~0_combout\);

-- Location: FF_X55_Y53_N31
\sr|f|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sr|f|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|f|Q~q\);

-- Location: LCCOMB_X54_Y53_N22
\lcdd|cup|reg|ff0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcdd|cup|reg|ff0|Q~0_combout\ = \lcdd|cup|reg|ff0|Q~q\ $ (\lcdd|CurrentState.SECOND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcdd|cup|reg|ff0|Q~q\,
	datad => \lcdd|CurrentState.SECOND~q\,
	combout => \lcdd|cup|reg|ff0|Q~0_combout\);

-- Location: FF_X54_Y53_N23
\lcdd|cup|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcdd|cup|reg|ff0|Q~0_combout\,
	clrn => \lcdd|CurrentState.FIRST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcdd|cup|reg|ff0|Q~q\);

-- Location: LCCOMB_X54_Y53_N24
\lcdd|cup|reg|ff1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcdd|cup|reg|ff1|Q~0_combout\ = \lcdd|cup|reg|ff1|Q~q\ $ (((\lcdd|cup|reg|ff0|Q~q\ & \lcdd|CurrentState.SECOND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcdd|cup|reg|ff0|Q~q\,
	datac => \lcdd|cup|reg|ff1|Q~q\,
	datad => \lcdd|CurrentState.SECOND~q\,
	combout => \lcdd|cup|reg|ff1|Q~0_combout\);

-- Location: FF_X54_Y53_N25
\lcdd|cup|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcdd|cup|reg|ff1|Q~0_combout\,
	clrn => \lcdd|CurrentState.FIRST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcdd|cup|reg|ff1|Q~q\);

-- Location: LCCOMB_X54_Y53_N26
\lcdd|cup|reg|ff2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcdd|cup|reg|ff2|Q~0_combout\ = \lcdd|cup|reg|ff2|Q~q\ $ (((\lcdd|cup|reg|ff0|Q~q\ & (\lcdd|cup|reg|ff1|Q~q\ & \lcdd|CurrentState.SECOND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcdd|cup|reg|ff0|Q~q\,
	datab => \lcdd|cup|reg|ff1|Q~q\,
	datac => \lcdd|cup|reg|ff2|Q~q\,
	datad => \lcdd|CurrentState.SECOND~q\,
	combout => \lcdd|cup|reg|ff2|Q~0_combout\);

-- Location: FF_X54_Y53_N27
\lcdd|cup|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcdd|cup|reg|ff2|Q~0_combout\,
	clrn => \lcdd|CurrentState.FIRST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcdd|cup|reg|ff2|Q~q\);

-- Location: LCCOMB_X54_Y53_N18
\lcdd|cup|ad|fa3|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcdd|cup|ad|fa3|Co~0_combout\ = (\lcdd|cup|reg|ff2|Q~q\ & (\lcdd|CurrentState.SECOND~q\ & (\lcdd|cup|reg|ff0|Q~q\ & \lcdd|cup|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcdd|cup|reg|ff2|Q~q\,
	datab => \lcdd|CurrentState.SECOND~q\,
	datac => \lcdd|cup|reg|ff0|Q~q\,
	datad => \lcdd|cup|reg|ff1|Q~q\,
	combout => \lcdd|cup|ad|fa3|Co~0_combout\);

-- Location: LCCOMB_X54_Y53_N28
\lcdd|cup|reg|ff3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcdd|cup|reg|ff3|Q~0_combout\ = \lcdd|cup|reg|ff3|Q~q\ $ (\lcdd|cup|ad|fa3|Co~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcdd|cup|reg|ff3|Q~q\,
	datad => \lcdd|cup|ad|fa3|Co~0_combout\,
	combout => \lcdd|cup|reg|ff3|Q~0_combout\);

-- Location: FF_X54_Y53_N29
\lcdd|cup|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcdd|cup|reg|ff3|Q~0_combout\,
	clrn => \lcdd|CurrentState.FIRST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcdd|cup|reg|ff3|Q~q\);

-- Location: LCCOMB_X54_Y53_N14
\lcdd|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcdd|Selector2~0_combout\ = (!\lcdd|cup|reg|ff0|Q~q\ & (\lcdd|cup|reg|ff3|Q~q\ & (\lcdd|cup|reg|ff2|Q~q\ & !\lcdd|cup|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcdd|cup|reg|ff0|Q~q\,
	datab => \lcdd|cup|reg|ff3|Q~q\,
	datac => \lcdd|cup|reg|ff2|Q~q\,
	datad => \lcdd|cup|reg|ff1|Q~q\,
	combout => \lcdd|Selector2~0_combout\);

-- Location: LCCOMB_X55_Y53_N10
\lcdd|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcdd|Selector2~1_combout\ = (\sr|sc|CurrentState.THIRD~q\ & ((\lcdd|CurrentState.THIRD~q\) # ((\lcdd|CurrentState.SECOND~q\ & \lcdd|Selector2~0_combout\)))) # (!\sr|sc|CurrentState.THIRD~q\ & (\lcdd|CurrentState.SECOND~q\ & 
-- ((\lcdd|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr|sc|CurrentState.THIRD~q\,
	datab => \lcdd|CurrentState.SECOND~q\,
	datac => \lcdd|CurrentState.THIRD~q\,
	datad => \lcdd|Selector2~0_combout\,
	combout => \lcdd|Selector2~1_combout\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: FF_X55_Y53_N11
\lcdd|CurrentState.THIRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcdd|Selector2~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcdd|CurrentState.THIRD~q\);

-- Location: LCCOMB_X55_Y53_N4
\sr|sc|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sc|Selector0~0_combout\ = (\sr|sc|CurrentState.FIRST~q\ & (\sr|sc|CurrentState.FORTH~q\ & ((!\lcdd|CurrentState.THIRD~q\)))) # (!\sr|sc|CurrentState.FIRST~q\ & (((\sr|sc|CurrentState.FORTH~q\ & !\lcdd|CurrentState.THIRD~q\)) # (!\sr|f|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr|sc|CurrentState.FIRST~q\,
	datab => \sr|sc|CurrentState.FORTH~q\,
	datac => \sr|f|Q~q\,
	datad => \lcdd|CurrentState.THIRD~q\,
	combout => \sr|sc|Selector0~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\SCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCLK,
	o => \SCLK~input_o\);

-- Location: LCCOMB_X46_Y53_N24
\sr|fsc|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|fsc|Q~0_combout\ = !\SCLK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SCLK~input_o\,
	combout => \sr|fsc|Q~0_combout\);

-- Location: LCCOMB_X45_Y53_N18
\sr|fsc|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|fsc|Q~feeder_combout\ = \sr|fsc|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr|fsc|Q~0_combout\,
	combout => \sr|fsc|Q~feeder_combout\);

-- Location: FF_X45_Y53_N19
\sr|fsc|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sr|fsc|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|fsc|Q~q\);

-- Location: CLKCTRL_G13
\sr|fsc|Q~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sr|fsc|Q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sr|fsc|Q~clkctrl_outclk\);

-- Location: LCCOMB_X56_Y53_N28
\sr|c|reg|ff0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|c|reg|ff0|Q~0_combout\ = !\sr|c|reg|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr|c|reg|ff0|Q~q\,
	combout => \sr|c|reg|ff0|Q~0_combout\);

-- Location: FF_X56_Y53_N29
\sr|c|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sr|fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sr|c|reg|ff0|Q~0_combout\,
	clrn => \sr|sc|CurrentState.FIRST~q\,
	ena => \sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|c|reg|ff0|Q~q\);

-- Location: LCCOMB_X56_Y53_N8
\sr|c|reg|ff1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|c|reg|ff1|Q~0_combout\ = \sr|c|reg|ff1|Q~q\ $ (((\sr|sc|CurrentState.SECOND~q\ & \sr|c|reg|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr|sc|CurrentState.SECOND~q\,
	datac => \sr|c|reg|ff1|Q~q\,
	datad => \sr|c|reg|ff0|Q~q\,
	combout => \sr|c|reg|ff1|Q~0_combout\);

-- Location: FF_X56_Y53_N9
\sr|c|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sr|fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sr|c|reg|ff1|Q~0_combout\,
	clrn => \sr|sc|CurrentState.FIRST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|c|reg|ff1|Q~q\);

-- Location: LCCOMB_X56_Y53_N10
\sr|c|reg|ff2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|c|reg|ff2|Q~0_combout\ = \sr|c|reg|ff2|Q~q\ $ (((\sr|sc|CurrentState.SECOND~q\ & (\sr|c|reg|ff1|Q~q\ & \sr|c|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr|sc|CurrentState.SECOND~q\,
	datab => \sr|c|reg|ff1|Q~q\,
	datac => \sr|c|reg|ff2|Q~q\,
	datad => \sr|c|reg|ff0|Q~q\,
	combout => \sr|c|reg|ff2|Q~0_combout\);

-- Location: FF_X56_Y53_N11
\sr|c|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sr|fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sr|c|reg|ff2|Q~0_combout\,
	clrn => \sr|sc|CurrentState.FIRST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|c|reg|ff2|Q~q\);

-- Location: LCCOMB_X56_Y53_N26
\sr|sc|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sc|Selector2~1_combout\ = (\sr|c|reg|ff2|Q~q\ & (!\sr|c|reg|ff1|Q~q\ & \sr|c|reg|ff0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr|c|reg|ff2|Q~q\,
	datac => \sr|c|reg|ff1|Q~q\,
	datad => \sr|c|reg|ff0|Q~q\,
	combout => \sr|sc|Selector2~1_combout\);

-- Location: LCCOMB_X55_Y53_N6
\sr|sc|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sc|Selector0~1_combout\ = (!\sr|sc|Selector0~0_combout\ & ((\sr|f|Q~q\) # ((\sr|sc|Selector2~1_combout\) # (!\sr|sc|CurrentState.SECOND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr|f|Q~q\,
	datab => \sr|sc|CurrentState.SECOND~q\,
	datac => \sr|sc|Selector0~0_combout\,
	datad => \sr|sc|Selector2~1_combout\,
	combout => \sr|sc|Selector0~1_combout\);

-- Location: FF_X55_Y53_N7
\sr|sc|CurrentState.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sr|sc|Selector0~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|sc|CurrentState.FIRST~q\);

-- Location: LCCOMB_X55_Y53_N24
\sr|sc|NextState.FORTH~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sc|NextState.FORTH~0_combout\ = (\sr|sc|CurrentState.FIRST~q\ & (!\sr|sc|CurrentState.SECOND~q\ & \lcdd|CurrentState.THIRD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr|sc|CurrentState.FIRST~q\,
	datab => \sr|sc|CurrentState.SECOND~q\,
	datad => \lcdd|CurrentState.THIRD~q\,
	combout => \sr|sc|NextState.FORTH~0_combout\);

-- Location: FF_X55_Y53_N25
\sr|sc|CurrentState.FORTH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sr|sc|NextState.FORTH~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|sc|CurrentState.FORTH~q\);

-- Location: LCCOMB_X55_Y53_N16
\sr|sc|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sc|Selector1~0_combout\ = (!\sr|sc|CurrentState.THIRD~q\ & (!\sr|sc|CurrentState.FORTH~q\ & \sr|f|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr|sc|CurrentState.THIRD~q\,
	datab => \sr|sc|CurrentState.FORTH~q\,
	datac => \sr|f|Q~q\,
	combout => \sr|sc|Selector1~0_combout\);

-- Location: FF_X55_Y53_N17
\sr|sc|CurrentState.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sr|sc|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|sc|CurrentState.SECOND~q\);

-- Location: LCCOMB_X55_Y53_N8
\sr|sc|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sc|Selector2~0_combout\ = (\sr|sc|CurrentState.THIRD~q\ & !\lcdd|CurrentState.THIRD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sr|sc|CurrentState.THIRD~q\,
	datad => \lcdd|CurrentState.THIRD~q\,
	combout => \sr|sc|Selector2~0_combout\);

-- Location: LCCOMB_X55_Y53_N26
\sr|sc|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sc|Selector2~2_combout\ = (\sr|sc|Selector2~0_combout\) # ((!\sr|f|Q~q\ & (\sr|sc|CurrentState.SECOND~q\ & \sr|sc|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sr|f|Q~q\,
	datab => \sr|sc|CurrentState.SECOND~q\,
	datac => \sr|sc|Selector2~0_combout\,
	datad => \sr|sc|Selector2~1_combout\,
	combout => \sr|sc|Selector2~2_combout\);

-- Location: FF_X55_Y53_N27
\sr|sc|CurrentState.THIRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sr|sc|Selector2~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|sc|CurrentState.THIRD~q\);

-- Location: LCCOMB_X54_Y53_N8
\lcdd|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcdd|Selector0~0_combout\ = (\lcdd|CurrentState.SECOND~q\) # (\sr|sc|CurrentState.THIRD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcdd|CurrentState.SECOND~q\,
	datad => \sr|sc|CurrentState.THIRD~q\,
	combout => \lcdd|Selector0~0_combout\);

-- Location: FF_X54_Y53_N9
\lcdd|CurrentState.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcdd|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcdd|CurrentState.FIRST~q\);

-- Location: LCCOMB_X54_Y53_N16
\lcdd|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lcdd|Selector1~0_combout\ = (\lcdd|CurrentState.FIRST~q\ & (!\lcdd|Selector2~0_combout\ & (\lcdd|CurrentState.SECOND~q\))) # (!\lcdd|CurrentState.FIRST~q\ & ((\sr|sc|CurrentState.THIRD~q\) # ((!\lcdd|Selector2~0_combout\ & 
-- \lcdd|CurrentState.SECOND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcdd|CurrentState.FIRST~q\,
	datab => \lcdd|Selector2~0_combout\,
	datac => \lcdd|CurrentState.SECOND~q\,
	datad => \sr|sc|CurrentState.THIRD~q\,
	combout => \lcdd|Selector1~0_combout\);

-- Location: FF_X54_Y53_N17
\lcdd|CurrentState.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lcdd|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcdd|CurrentState.SECOND~q\);

-- Location: IOIBUF_X56_Y54_N1
\SDX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDX,
	o => \SDX~input_o\);

-- Location: LCCOMB_X56_Y53_N4
\sr|sr|ffd4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sr|ffd4|Q~0_combout\ = !\SDX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDX~input_o\,
	combout => \sr|sr|ffd4|Q~0_combout\);

-- Location: LCCOMB_X55_Y53_N28
\sr|sr|ffd4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sr|ffd4|Q~feeder_combout\ = \sr|sr|ffd4|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr|sr|ffd4|Q~0_combout\,
	combout => \sr|sr|ffd4|Q~feeder_combout\);

-- Location: FF_X55_Y53_N29
\sr|sr|ffd4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sr|fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sr|sr|ffd4|Q~feeder_combout\,
	ena => \sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|sr|ffd4|Q~q\);

-- Location: LCCOMB_X55_Y53_N18
\sr|sr|ffd3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sr|ffd3|Q~feeder_combout\ = \sr|sr|ffd4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr|sr|ffd4|Q~q\,
	combout => \sr|sr|ffd3|Q~feeder_combout\);

-- Location: FF_X55_Y53_N19
\sr|sr|ffd3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sr|fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sr|sr|ffd3|Q~feeder_combout\,
	ena => \sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|sr|ffd3|Q~q\);

-- Location: LCCOMB_X55_Y53_N20
\sr|sr|ffd2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sr|ffd2|Q~feeder_combout\ = \sr|sr|ffd3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr|sr|ffd3|Q~q\,
	combout => \sr|sr|ffd2|Q~feeder_combout\);

-- Location: FF_X55_Y53_N21
\sr|sr|ffd2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sr|fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sr|sr|ffd2|Q~feeder_combout\,
	ena => \sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|sr|ffd2|Q~q\);

-- Location: LCCOMB_X55_Y53_N2
\sr|sr|ffd1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sr|ffd1|Q~feeder_combout\ = \sr|sr|ffd2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr|sr|ffd2|Q~q\,
	combout => \sr|sr|ffd1|Q~feeder_combout\);

-- Location: FF_X55_Y53_N3
\sr|sr|ffd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sr|fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sr|sr|ffd1|Q~feeder_combout\,
	ena => \sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|sr|ffd1|Q~q\);

-- Location: LCCOMB_X55_Y53_N0
\sr|sr|ffd0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|sr|ffd0|Q~feeder_combout\ = \sr|sr|ffd1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr|sr|ffd1|Q~q\,
	combout => \sr|sr|ffd0|Q~feeder_combout\);

-- Location: FF_X55_Y53_N1
\sr|sr|ffd0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sr|fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sr|sr|ffd0|Q~feeder_combout\,
	ena => \sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|sr|ffd0|Q~q\);

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

ww_Wrl <= \Wrl~output_o\;

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;
END structure;


