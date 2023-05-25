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

-- DATE "05/25/2023 21:56:25"

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

ENTITY 	KeyboardReader IS
    PORT (
	ACK : IN std_logic;
	Reset : IN std_logic;
	CLK : IN std_logic;
	I : IN std_logic_vector(3 DOWNTO 0);
	Dval : OUT std_logic;
	O : OUT std_logic_vector(2 DOWNTO 0);
	D : OUT std_logic_vector(3 DOWNTO 0)
	);
END KeyboardReader;

-- Design Ports Information
-- Dval	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACK	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KeyboardReader IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ACK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dval : std_logic;
SIGNAL ww_O : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kd|clock|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Dval~output_o\ : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \kd|clock|Add0~0_combout\ : std_logic;
SIGNAL \kd|clock|count[0]~6_combout\ : std_logic;
SIGNAL \kd|clock|Add0~1\ : std_logic;
SIGNAL \kd|clock|Add0~2_combout\ : std_logic;
SIGNAL \kd|clock|Add0~3\ : std_logic;
SIGNAL \kd|clock|Add0~5\ : std_logic;
SIGNAL \kd|clock|Add0~6_combout\ : std_logic;
SIGNAL \kd|clock|Add0~7\ : std_logic;
SIGNAL \kd|clock|Add0~8_combout\ : std_logic;
SIGNAL \kd|clock|count~1_combout\ : std_logic;
SIGNAL \kd|clock|Add0~9\ : std_logic;
SIGNAL \kd|clock|Add0~10_combout\ : std_logic;
SIGNAL \kd|clock|count~2_combout\ : std_logic;
SIGNAL \kd|clock|Add0~11\ : std_logic;
SIGNAL \kd|clock|Add0~12_combout\ : std_logic;
SIGNAL \kd|clock|count~3_combout\ : std_logic;
SIGNAL \kd|clock|Add0~13\ : std_logic;
SIGNAL \kd|clock|Add0~14_combout\ : std_logic;
SIGNAL \kd|clock|count~4_combout\ : std_logic;
SIGNAL \kd|clock|Add0~15\ : std_logic;
SIGNAL \kd|clock|Add0~16_combout\ : std_logic;
SIGNAL \kd|clock|count~5_combout\ : std_logic;
SIGNAL \kd|clock|Add0~17\ : std_logic;
SIGNAL \kd|clock|Add0~18_combout\ : std_logic;
SIGNAL \kd|clock|Add0~19\ : std_logic;
SIGNAL \kd|clock|Add0~20_combout\ : std_logic;
SIGNAL \kd|clock|Add0~21\ : std_logic;
SIGNAL \kd|clock|Add0~22_combout\ : std_logic;
SIGNAL \kd|clock|Add0~23\ : std_logic;
SIGNAL \kd|clock|Add0~24_combout\ : std_logic;
SIGNAL \kd|clock|Add0~25\ : std_logic;
SIGNAL \kd|clock|Add0~26_combout\ : std_logic;
SIGNAL \kd|clock|Add0~27\ : std_logic;
SIGNAL \kd|clock|Add0~28_combout\ : std_logic;
SIGNAL \kd|clock|Add0~29\ : std_logic;
SIGNAL \kd|clock|Add0~30_combout\ : std_logic;
SIGNAL \kd|clock|Add0~31\ : std_logic;
SIGNAL \kd|clock|Add0~32_combout\ : std_logic;
SIGNAL \kd|clock|Add0~33\ : std_logic;
SIGNAL \kd|clock|Add0~34_combout\ : std_logic;
SIGNAL \kd|clock|Add0~35\ : std_logic;
SIGNAL \kd|clock|Add0~36_combout\ : std_logic;
SIGNAL \kd|clock|Add0~37\ : std_logic;
SIGNAL \kd|clock|Add0~38_combout\ : std_logic;
SIGNAL \kd|clock|Add0~39\ : std_logic;
SIGNAL \kd|clock|Add0~40_combout\ : std_logic;
SIGNAL \kd|clock|Add0~41\ : std_logic;
SIGNAL \kd|clock|Add0~42_combout\ : std_logic;
SIGNAL \kd|clock|Add0~43\ : std_logic;
SIGNAL \kd|clock|Add0~44_combout\ : std_logic;
SIGNAL \kd|clock|Add0~45\ : std_logic;
SIGNAL \kd|clock|Add0~46_combout\ : std_logic;
SIGNAL \kd|clock|Add0~47\ : std_logic;
SIGNAL \kd|clock|Add0~48_combout\ : std_logic;
SIGNAL \kd|clock|Add0~49\ : std_logic;
SIGNAL \kd|clock|Add0~50_combout\ : std_logic;
SIGNAL \kd|clock|Add0~51\ : std_logic;
SIGNAL \kd|clock|Add0~52_combout\ : std_logic;
SIGNAL \kd|clock|Add0~53\ : std_logic;
SIGNAL \kd|clock|Add0~54_combout\ : std_logic;
SIGNAL \kd|clock|Add0~55\ : std_logic;
SIGNAL \kd|clock|Add0~56_combout\ : std_logic;
SIGNAL \kd|clock|Add0~57\ : std_logic;
SIGNAL \kd|clock|Add0~58_combout\ : std_logic;
SIGNAL \kd|clock|Add0~59\ : std_logic;
SIGNAL \kd|clock|Add0~60_combout\ : std_logic;
SIGNAL \kd|clock|Add0~61\ : std_logic;
SIGNAL \kd|clock|Add0~62_combout\ : std_logic;
SIGNAL \kd|clock|Equal0~8_combout\ : std_logic;
SIGNAL \kd|clock|Equal0~6_combout\ : std_logic;
SIGNAL \kd|clock|Equal0~5_combout\ : std_logic;
SIGNAL \kd|clock|Equal0~7_combout\ : std_logic;
SIGNAL \kd|clock|Equal0~9_combout\ : std_logic;
SIGNAL \kd|clock|Add0~4_combout\ : std_logic;
SIGNAL \kd|clock|count~0_combout\ : std_logic;
SIGNAL \kd|clock|Equal0~0_combout\ : std_logic;
SIGNAL \kd|clock|Equal0~1_combout\ : std_logic;
SIGNAL \kd|clock|Equal0~2_combout\ : std_logic;
SIGNAL \kd|clock|Equal0~3_combout\ : std_logic;
SIGNAL \kd|clock|Equal0~4_combout\ : std_logic;
SIGNAL \kd|clock|tmp~0_combout\ : std_logic;
SIGNAL \kd|clock|tmp~feeder_combout\ : std_logic;
SIGNAL \kd|clock|tmp~q\ : std_logic;
SIGNAL \kd|clock|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \I[1]~input_o\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \kd|scan|count|reg|ff0|Q~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \kd|scan|count|reg|ff0|Q~q\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \I[0]~input_o\ : std_logic;
SIGNAL \kd|scan|count|reg|ff1|Q~0_combout\ : std_logic;
SIGNAL \kd|scan|count|reg|ff1|Q~q\ : std_logic;
SIGNAL \kd|scan|mux|Y~0_combout\ : std_logic;
SIGNAL \kd|scan|mux|Y~1_combout\ : std_logic;
SIGNAL \ACK~input_o\ : std_logic;
SIGNAL \obuff|control|NextState.WAIT_ACK~0_combout\ : std_logic;
SIGNAL \obuff|control|CurrentState.WAIT_ACK~q\ : std_logic;
SIGNAL \obuff|control|Selector0~0_combout\ : std_logic;
SIGNAL \obuff|control|CurrentState.CAN_RECEIVE~q\ : std_logic;
SIGNAL \rbuff|control|NextState.INC_GET~0_combout\ : std_logic;
SIGNAL \rbuff|control|CurrentState.INC_GET~q\ : std_logic;
SIGNAL \rbuff|mac|incrementGet|reg|ff0|Q~0_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementGet|reg|ff0|Q~q\ : std_logic;
SIGNAL \rbuff|mac|incrementGet|reg|ff1|Q~0_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementGet|reg|ff1|Q~q\ : std_logic;
SIGNAL \rbuff|mac|incrementGet|reg|ff2|Q~0_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementGet|reg|ff2|Q~q\ : std_logic;
SIGNAL \rbuff|mac|incrementGet|ad|fa3|Cout~0_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementGet|reg|ff3|Q~0_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementGet|reg|ff3|Q~q\ : std_logic;
SIGNAL \rbuff|mac|incrementPut|reg|ff0|Q~0_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementPut|reg|ff0|Q~feeder_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementPut|reg|ff0|Q~q\ : std_logic;
SIGNAL \rbuff|mac|incrementPut|reg|ff1|Q~0_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementPut|reg|ff1|Q~q\ : std_logic;
SIGNAL \rbuff|mac|incrementPut|reg|ff2|Q~0_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementPut|reg|ff2|Q~q\ : std_logic;
SIGNAL \rbuff|mac|incrementPut|ad|fa3|Cout~0_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementPut|reg|ff3|Q~0_combout\ : std_logic;
SIGNAL \rbuff|mac|incrementPut|reg|ff3|Q~q\ : std_logic;
SIGNAL \rbuff|mac|empty~0_combout\ : std_logic;
SIGNAL \rbuff|mac|Equal0~0_combout\ : std_logic;
SIGNAL \rbuff|mac|Equal0~1_combout\ : std_logic;
SIGNAL \rbuff|control|NextState.SELECT_PUT~0_combout\ : std_logic;
SIGNAL \rbuff|control|CurrentState.SELECT_PUT~q\ : std_logic;
SIGNAL \rbuff|control|CurrentState.WRITE_RAM~feeder_combout\ : std_logic;
SIGNAL \rbuff|control|CurrentState.WRITE_RAM~q\ : std_logic;
SIGNAL \rbuff|control|CurrentState.INC_PUT~feeder_combout\ : std_logic;
SIGNAL \rbuff|control|CurrentState.INC_PUT~q\ : std_logic;
SIGNAL \rbuff|control|Selector1~0_combout\ : std_logic;
SIGNAL \rbuff|control|CurrentState.ACCEPTED~q\ : std_logic;
SIGNAL \kd|control|Selector2~0_combout\ : std_logic;
SIGNAL \kd|control|CurrentState.THIRD~q\ : std_logic;
SIGNAL \kd|control|Selector0~0_combout\ : std_logic;
SIGNAL \kd|control|CurrentState.FIRST~q\ : std_logic;
SIGNAL \kd|control|Selector1~0_combout\ : std_logic;
SIGNAL \kd|control|CurrentState.SECOND~q\ : std_logic;
SIGNAL \rbuff|control|Selector0~0_combout\ : std_logic;
SIGNAL \rbuff|control|Selector0~1_combout\ : std_logic;
SIGNAL \rbuff|control|Selector0~2_combout\ : std_logic;
SIGNAL \rbuff|control|CurrentState.ZEN~q\ : std_logic;
SIGNAL \rbuff|control|Selector2~3_combout\ : std_logic;
SIGNAL \rbuff|control|Selector2~2_combout\ : std_logic;
SIGNAL \rbuff|control|CurrentState.WRITE_REG~q\ : std_logic;
SIGNAL \obuff|control|NextState.WRITE_DATA~0_combout\ : std_logic;
SIGNAL \obuff|control|CurrentState.WRITE_DATA~q\ : std_logic;
SIGNAL \obuff|control|Selector1~0_combout\ : std_logic;
SIGNAL \obuff|control|CurrentState.SEND_DATA~q\ : std_logic;
SIGNAL \kd|scan|count|ad|fa2|Cout~0_combout\ : std_logic;
SIGNAL \kd|scan|count|reg|ff2|Q~0_combout\ : std_logic;
SIGNAL \kd|scan|count|reg|ff2|Q~q\ : std_logic;
SIGNAL \kd|scan|count|reg|ff3|Q~0_combout\ : std_logic;
SIGNAL \kd|scan|count|reg|ff3|Q~1_combout\ : std_logic;
SIGNAL \kd|scan|count|reg|ff3|Q~q\ : std_logic;
SIGNAL \kd|scan|dec|O[1]~0_combout\ : std_logic;
SIGNAL \kd|scan|dec|O[1]~1_combout\ : std_logic;
SIGNAL \kd|scan|dec|O[1]~2_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \rtl~13clkctrl_outclk\ : std_logic;
SIGNAL \rbuff|memory|ram~4_combout\ : std_logic;
SIGNAL \rbuff|mac|idxDecider|Y[0]~0_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \rtl~14clkctrl_outclk\ : std_logic;
SIGNAL \rbuff|memory|ram~0_combout\ : std_logic;
SIGNAL \rbuff|mac|idxDecider|Y[1]~1_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~34_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \rtl~12clkctrl_outclk\ : std_logic;
SIGNAL \rbuff|memory|ram~8_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \rtl~15clkctrl_outclk\ : std_logic;
SIGNAL \rbuff|memory|ram~12_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~35_combout\ : std_logic;
SIGNAL \rbuff|mac|idxDecider|Y[2]~2_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \rtl~11clkctrl_outclk\ : std_logic;
SIGNAL \rbuff|memory|ram~28_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~8clkctrl_outclk\ : std_logic;
SIGNAL \rbuff|memory|ram~20_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \rtl~9clkctrl_outclk\ : std_logic;
SIGNAL \rbuff|memory|ram~24_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \rtl~10clkctrl_outclk\ : std_logic;
SIGNAL \rbuff|memory|ram~16_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~32_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~33_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~36_combout\ : std_logic;
SIGNAL \obuff|outreg|ff0|Q~q\ : std_logic;
SIGNAL \rbuff|memory|ram~29_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~25_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~17_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~37_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~21_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~38_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~5_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~1_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~39_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~13_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~9_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~40_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~41_combout\ : std_logic;
SIGNAL \obuff|outreg|ff1|Q~q\ : std_logic;
SIGNAL \rbuff|memory|ram~22_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~30_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~26_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~18_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~42_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~43_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~14_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~10_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~2_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~6_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~44_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~45_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~46_combout\ : std_logic;
SIGNAL \obuff|outreg|ff2|Q~q\ : std_logic;
SIGNAL \rbuff|memory|ram~31_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~27_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~19_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~47_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~23_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~48_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~15_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~3_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~7_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~49_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~11_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~50_combout\ : std_logic;
SIGNAL \rbuff|memory|ram~51_combout\ : std_logic;
SIGNAL \obuff|outreg|ff3|Q~q\ : std_logic;
SIGNAL \kd|clock|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \kd|scan|dec|ALT_INV_O[1]~2_combout\ : std_logic;
SIGNAL \kd|scan|dec|ALT_INV_O[1]~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ACK <= ACK;
ww_Reset <= Reset;
ww_CLK <= CLK;
ww_I <= I;
Dval <= ww_Dval;
O <= ww_O;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~13_combout\);

\rtl~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~11_combout\);

\rtl~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~10_combout\);

\kd|clock|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kd|clock|tmp~q\);

\rtl~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~12_combout\);

\rtl~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~9_combout\);

\rtl~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~8_combout\);

\rtl~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~15_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\rtl~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~14_combout\);
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\kd|scan|dec|ALT_INV_O[1]~2_combout\ <= NOT \kd|scan|dec|O[1]~2_combout\;
\kd|scan|dec|ALT_INV_O[1]~1_combout\ <= NOT \kd|scan|dec|O[1]~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X34_Y39_N16
\Dval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obuff|control|CurrentState.SEND_DATA~q\,
	devoe => ww_devoe,
	o => \Dval~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\O[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kd|scan|dec|O[1]~0_combout\,
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\O[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kd|scan|dec|ALT_INV_O[1]~1_combout\,
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\O[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kd|scan|dec|ALT_INV_O[1]~2_combout\,
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obuff|outreg|ff0|Q~q\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obuff|outreg|ff1|Q~q\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obuff|outreg|ff2|Q~q\,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obuff|outreg|ff3|Q~q\,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

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

-- Location: LCCOMB_X41_Y2_N0
\kd|clock|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~0_combout\ = \kd|clock|count\(0) $ (GND)
-- \kd|clock|Add0~1\ = CARRY(!\kd|clock|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(0),
	datad => VCC,
	combout => \kd|clock|Add0~0_combout\,
	cout => \kd|clock|Add0~1\);

-- Location: LCCOMB_X42_Y2_N30
\kd|clock|count[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|count[0]~6_combout\ = !\kd|clock|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kd|clock|Add0~0_combout\,
	combout => \kd|clock|count[0]~6_combout\);

-- Location: FF_X41_Y2_N11
\kd|clock|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \kd|clock|count[0]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(0));

-- Location: LCCOMB_X41_Y2_N2
\kd|clock|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~2_combout\ = (\kd|clock|count\(1) & (!\kd|clock|Add0~1\)) # (!\kd|clock|count\(1) & ((\kd|clock|Add0~1\) # (GND)))
-- \kd|clock|Add0~3\ = CARRY((!\kd|clock|Add0~1\) # (!\kd|clock|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(1),
	datad => VCC,
	cin => \kd|clock|Add0~1\,
	combout => \kd|clock|Add0~2_combout\,
	cout => \kd|clock|Add0~3\);

-- Location: FF_X41_Y2_N3
\kd|clock|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(1));

-- Location: LCCOMB_X41_Y2_N4
\kd|clock|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~4_combout\ = (\kd|clock|count\(2) & (\kd|clock|Add0~3\ $ (GND))) # (!\kd|clock|count\(2) & (!\kd|clock|Add0~3\ & VCC))
-- \kd|clock|Add0~5\ = CARRY((\kd|clock|count\(2) & !\kd|clock|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(2),
	datad => VCC,
	cin => \kd|clock|Add0~3\,
	combout => \kd|clock|Add0~4_combout\,
	cout => \kd|clock|Add0~5\);

-- Location: LCCOMB_X41_Y2_N6
\kd|clock|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~6_combout\ = (\kd|clock|count\(3) & (!\kd|clock|Add0~5\)) # (!\kd|clock|count\(3) & ((\kd|clock|Add0~5\) # (GND)))
-- \kd|clock|Add0~7\ = CARRY((!\kd|clock|Add0~5\) # (!\kd|clock|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(3),
	datad => VCC,
	cin => \kd|clock|Add0~5\,
	combout => \kd|clock|Add0~6_combout\,
	cout => \kd|clock|Add0~7\);

-- Location: FF_X41_Y2_N7
\kd|clock|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(3));

-- Location: LCCOMB_X41_Y2_N8
\kd|clock|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~8_combout\ = (\kd|clock|count\(4) & (\kd|clock|Add0~7\ $ (GND))) # (!\kd|clock|count\(4) & (!\kd|clock|Add0~7\ & VCC))
-- \kd|clock|Add0~9\ = CARRY((\kd|clock|count\(4) & !\kd|clock|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(4),
	datad => VCC,
	cin => \kd|clock|Add0~7\,
	combout => \kd|clock|Add0~8_combout\,
	cout => \kd|clock|Add0~9\);

-- Location: LCCOMB_X42_Y2_N12
\kd|clock|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|count~1_combout\ = (\kd|clock|Add0~8_combout\ & ((!\kd|clock|Equal0~9_combout\) # (!\kd|clock|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|Equal0~4_combout\,
	datac => \kd|clock|Equal0~9_combout\,
	datad => \kd|clock|Add0~8_combout\,
	combout => \kd|clock|count~1_combout\);

-- Location: FF_X42_Y2_N13
\kd|clock|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(4));

-- Location: LCCOMB_X41_Y2_N10
\kd|clock|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~10_combout\ = (\kd|clock|count\(5) & (!\kd|clock|Add0~9\)) # (!\kd|clock|count\(5) & ((\kd|clock|Add0~9\) # (GND)))
-- \kd|clock|Add0~11\ = CARRY((!\kd|clock|Add0~9\) # (!\kd|clock|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(5),
	datad => VCC,
	cin => \kd|clock|Add0~9\,
	combout => \kd|clock|Add0~10_combout\,
	cout => \kd|clock|Add0~11\);

-- Location: LCCOMB_X42_Y2_N6
\kd|clock|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|count~2_combout\ = (\kd|clock|Add0~10_combout\ & ((!\kd|clock|Equal0~4_combout\) # (!\kd|clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|Equal0~9_combout\,
	datab => \kd|clock|Equal0~4_combout\,
	datac => \kd|clock|Add0~10_combout\,
	combout => \kd|clock|count~2_combout\);

-- Location: FF_X42_Y2_N7
\kd|clock|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(5));

-- Location: LCCOMB_X41_Y2_N12
\kd|clock|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~12_combout\ = (\kd|clock|count\(6) & (\kd|clock|Add0~11\ $ (GND))) # (!\kd|clock|count\(6) & (!\kd|clock|Add0~11\ & VCC))
-- \kd|clock|Add0~13\ = CARRY((\kd|clock|count\(6) & !\kd|clock|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(6),
	datad => VCC,
	cin => \kd|clock|Add0~11\,
	combout => \kd|clock|Add0~12_combout\,
	cout => \kd|clock|Add0~13\);

-- Location: LCCOMB_X42_Y2_N28
\kd|clock|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|count~3_combout\ = (\kd|clock|Add0~12_combout\ & ((!\kd|clock|Equal0~9_combout\) # (!\kd|clock|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|Equal0~4_combout\,
	datac => \kd|clock|Equal0~9_combout\,
	datad => \kd|clock|Add0~12_combout\,
	combout => \kd|clock|count~3_combout\);

-- Location: FF_X42_Y2_N29
\kd|clock|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(6));

-- Location: LCCOMB_X41_Y2_N14
\kd|clock|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~14_combout\ = (\kd|clock|count\(7) & (!\kd|clock|Add0~13\)) # (!\kd|clock|count\(7) & ((\kd|clock|Add0~13\) # (GND)))
-- \kd|clock|Add0~15\ = CARRY((!\kd|clock|Add0~13\) # (!\kd|clock|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(7),
	datad => VCC,
	cin => \kd|clock|Add0~13\,
	combout => \kd|clock|Add0~14_combout\,
	cout => \kd|clock|Add0~15\);

-- Location: LCCOMB_X42_Y2_N26
\kd|clock|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|count~4_combout\ = (\kd|clock|Add0~14_combout\ & ((!\kd|clock|Equal0~9_combout\) # (!\kd|clock|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|Equal0~4_combout\,
	datac => \kd|clock|Equal0~9_combout\,
	datad => \kd|clock|Add0~14_combout\,
	combout => \kd|clock|count~4_combout\);

-- Location: FF_X42_Y2_N27
\kd|clock|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(7));

-- Location: LCCOMB_X41_Y2_N16
\kd|clock|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~16_combout\ = (\kd|clock|count\(8) & (\kd|clock|Add0~15\ $ (GND))) # (!\kd|clock|count\(8) & (!\kd|clock|Add0~15\ & VCC))
-- \kd|clock|Add0~17\ = CARRY((\kd|clock|count\(8) & !\kd|clock|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(8),
	datad => VCC,
	cin => \kd|clock|Add0~15\,
	combout => \kd|clock|Add0~16_combout\,
	cout => \kd|clock|Add0~17\);

-- Location: LCCOMB_X42_Y2_N22
\kd|clock|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|count~5_combout\ = (\kd|clock|Add0~16_combout\ & ((!\kd|clock|Equal0~4_combout\) # (!\kd|clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|Equal0~9_combout\,
	datac => \kd|clock|Add0~16_combout\,
	datad => \kd|clock|Equal0~4_combout\,
	combout => \kd|clock|count~5_combout\);

-- Location: FF_X42_Y2_N23
\kd|clock|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(8));

-- Location: LCCOMB_X41_Y2_N18
\kd|clock|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~18_combout\ = (\kd|clock|count\(9) & (!\kd|clock|Add0~17\)) # (!\kd|clock|count\(9) & ((\kd|clock|Add0~17\) # (GND)))
-- \kd|clock|Add0~19\ = CARRY((!\kd|clock|Add0~17\) # (!\kd|clock|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(9),
	datad => VCC,
	cin => \kd|clock|Add0~17\,
	combout => \kd|clock|Add0~18_combout\,
	cout => \kd|clock|Add0~19\);

-- Location: FF_X41_Y2_N19
\kd|clock|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(9));

-- Location: LCCOMB_X41_Y2_N20
\kd|clock|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~20_combout\ = (\kd|clock|count\(10) & (\kd|clock|Add0~19\ $ (GND))) # (!\kd|clock|count\(10) & (!\kd|clock|Add0~19\ & VCC))
-- \kd|clock|Add0~21\ = CARRY((\kd|clock|count\(10) & !\kd|clock|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(10),
	datad => VCC,
	cin => \kd|clock|Add0~19\,
	combout => \kd|clock|Add0~20_combout\,
	cout => \kd|clock|Add0~21\);

-- Location: FF_X41_Y2_N21
\kd|clock|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(10));

-- Location: LCCOMB_X41_Y2_N22
\kd|clock|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~22_combout\ = (\kd|clock|count\(11) & (!\kd|clock|Add0~21\)) # (!\kd|clock|count\(11) & ((\kd|clock|Add0~21\) # (GND)))
-- \kd|clock|Add0~23\ = CARRY((!\kd|clock|Add0~21\) # (!\kd|clock|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(11),
	datad => VCC,
	cin => \kd|clock|Add0~21\,
	combout => \kd|clock|Add0~22_combout\,
	cout => \kd|clock|Add0~23\);

-- Location: FF_X41_Y2_N23
\kd|clock|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(11));

-- Location: LCCOMB_X41_Y2_N24
\kd|clock|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~24_combout\ = (\kd|clock|count\(12) & (\kd|clock|Add0~23\ $ (GND))) # (!\kd|clock|count\(12) & (!\kd|clock|Add0~23\ & VCC))
-- \kd|clock|Add0~25\ = CARRY((\kd|clock|count\(12) & !\kd|clock|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(12),
	datad => VCC,
	cin => \kd|clock|Add0~23\,
	combout => \kd|clock|Add0~24_combout\,
	cout => \kd|clock|Add0~25\);

-- Location: FF_X41_Y2_N25
\kd|clock|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(12));

-- Location: LCCOMB_X41_Y2_N26
\kd|clock|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~26_combout\ = (\kd|clock|count\(13) & (!\kd|clock|Add0~25\)) # (!\kd|clock|count\(13) & ((\kd|clock|Add0~25\) # (GND)))
-- \kd|clock|Add0~27\ = CARRY((!\kd|clock|Add0~25\) # (!\kd|clock|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(13),
	datad => VCC,
	cin => \kd|clock|Add0~25\,
	combout => \kd|clock|Add0~26_combout\,
	cout => \kd|clock|Add0~27\);

-- Location: FF_X41_Y2_N27
\kd|clock|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(13));

-- Location: LCCOMB_X41_Y2_N28
\kd|clock|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~28_combout\ = (\kd|clock|count\(14) & (\kd|clock|Add0~27\ $ (GND))) # (!\kd|clock|count\(14) & (!\kd|clock|Add0~27\ & VCC))
-- \kd|clock|Add0~29\ = CARRY((\kd|clock|count\(14) & !\kd|clock|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(14),
	datad => VCC,
	cin => \kd|clock|Add0~27\,
	combout => \kd|clock|Add0~28_combout\,
	cout => \kd|clock|Add0~29\);

-- Location: FF_X41_Y2_N29
\kd|clock|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(14));

-- Location: LCCOMB_X41_Y2_N30
\kd|clock|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~30_combout\ = (\kd|clock|count\(15) & (!\kd|clock|Add0~29\)) # (!\kd|clock|count\(15) & ((\kd|clock|Add0~29\) # (GND)))
-- \kd|clock|Add0~31\ = CARRY((!\kd|clock|Add0~29\) # (!\kd|clock|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(15),
	datad => VCC,
	cin => \kd|clock|Add0~29\,
	combout => \kd|clock|Add0~30_combout\,
	cout => \kd|clock|Add0~31\);

-- Location: FF_X41_Y2_N31
\kd|clock|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(15));

-- Location: LCCOMB_X41_Y1_N0
\kd|clock|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~32_combout\ = (\kd|clock|count\(16) & (\kd|clock|Add0~31\ $ (GND))) # (!\kd|clock|count\(16) & (!\kd|clock|Add0~31\ & VCC))
-- \kd|clock|Add0~33\ = CARRY((\kd|clock|count\(16) & !\kd|clock|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(16),
	datad => VCC,
	cin => \kd|clock|Add0~31\,
	combout => \kd|clock|Add0~32_combout\,
	cout => \kd|clock|Add0~33\);

-- Location: FF_X41_Y1_N1
\kd|clock|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(16));

-- Location: LCCOMB_X41_Y1_N2
\kd|clock|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~34_combout\ = (\kd|clock|count\(17) & (!\kd|clock|Add0~33\)) # (!\kd|clock|count\(17) & ((\kd|clock|Add0~33\) # (GND)))
-- \kd|clock|Add0~35\ = CARRY((!\kd|clock|Add0~33\) # (!\kd|clock|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(17),
	datad => VCC,
	cin => \kd|clock|Add0~33\,
	combout => \kd|clock|Add0~34_combout\,
	cout => \kd|clock|Add0~35\);

-- Location: FF_X41_Y1_N3
\kd|clock|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(17));

-- Location: LCCOMB_X41_Y1_N4
\kd|clock|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~36_combout\ = (\kd|clock|count\(18) & (\kd|clock|Add0~35\ $ (GND))) # (!\kd|clock|count\(18) & (!\kd|clock|Add0~35\ & VCC))
-- \kd|clock|Add0~37\ = CARRY((\kd|clock|count\(18) & !\kd|clock|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(18),
	datad => VCC,
	cin => \kd|clock|Add0~35\,
	combout => \kd|clock|Add0~36_combout\,
	cout => \kd|clock|Add0~37\);

-- Location: FF_X41_Y1_N5
\kd|clock|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(18));

-- Location: LCCOMB_X41_Y1_N6
\kd|clock|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~38_combout\ = (\kd|clock|count\(19) & (!\kd|clock|Add0~37\)) # (!\kd|clock|count\(19) & ((\kd|clock|Add0~37\) # (GND)))
-- \kd|clock|Add0~39\ = CARRY((!\kd|clock|Add0~37\) # (!\kd|clock|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(19),
	datad => VCC,
	cin => \kd|clock|Add0~37\,
	combout => \kd|clock|Add0~38_combout\,
	cout => \kd|clock|Add0~39\);

-- Location: FF_X41_Y1_N7
\kd|clock|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(19));

-- Location: LCCOMB_X41_Y1_N8
\kd|clock|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~40_combout\ = (\kd|clock|count\(20) & (\kd|clock|Add0~39\ $ (GND))) # (!\kd|clock|count\(20) & (!\kd|clock|Add0~39\ & VCC))
-- \kd|clock|Add0~41\ = CARRY((\kd|clock|count\(20) & !\kd|clock|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(20),
	datad => VCC,
	cin => \kd|clock|Add0~39\,
	combout => \kd|clock|Add0~40_combout\,
	cout => \kd|clock|Add0~41\);

-- Location: FF_X41_Y1_N9
\kd|clock|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(20));

-- Location: LCCOMB_X41_Y1_N10
\kd|clock|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~42_combout\ = (\kd|clock|count\(21) & (!\kd|clock|Add0~41\)) # (!\kd|clock|count\(21) & ((\kd|clock|Add0~41\) # (GND)))
-- \kd|clock|Add0~43\ = CARRY((!\kd|clock|Add0~41\) # (!\kd|clock|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(21),
	datad => VCC,
	cin => \kd|clock|Add0~41\,
	combout => \kd|clock|Add0~42_combout\,
	cout => \kd|clock|Add0~43\);

-- Location: FF_X41_Y1_N11
\kd|clock|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(21));

-- Location: LCCOMB_X41_Y1_N12
\kd|clock|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~44_combout\ = (\kd|clock|count\(22) & (\kd|clock|Add0~43\ $ (GND))) # (!\kd|clock|count\(22) & (!\kd|clock|Add0~43\ & VCC))
-- \kd|clock|Add0~45\ = CARRY((\kd|clock|count\(22) & !\kd|clock|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(22),
	datad => VCC,
	cin => \kd|clock|Add0~43\,
	combout => \kd|clock|Add0~44_combout\,
	cout => \kd|clock|Add0~45\);

-- Location: FF_X41_Y1_N13
\kd|clock|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(22));

-- Location: LCCOMB_X41_Y1_N14
\kd|clock|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~46_combout\ = (\kd|clock|count\(23) & (!\kd|clock|Add0~45\)) # (!\kd|clock|count\(23) & ((\kd|clock|Add0~45\) # (GND)))
-- \kd|clock|Add0~47\ = CARRY((!\kd|clock|Add0~45\) # (!\kd|clock|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(23),
	datad => VCC,
	cin => \kd|clock|Add0~45\,
	combout => \kd|clock|Add0~46_combout\,
	cout => \kd|clock|Add0~47\);

-- Location: FF_X41_Y1_N15
\kd|clock|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(23));

-- Location: LCCOMB_X41_Y1_N16
\kd|clock|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~48_combout\ = (\kd|clock|count\(24) & (\kd|clock|Add0~47\ $ (GND))) # (!\kd|clock|count\(24) & (!\kd|clock|Add0~47\ & VCC))
-- \kd|clock|Add0~49\ = CARRY((\kd|clock|count\(24) & !\kd|clock|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(24),
	datad => VCC,
	cin => \kd|clock|Add0~47\,
	combout => \kd|clock|Add0~48_combout\,
	cout => \kd|clock|Add0~49\);

-- Location: FF_X41_Y1_N17
\kd|clock|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(24));

-- Location: LCCOMB_X41_Y1_N18
\kd|clock|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~50_combout\ = (\kd|clock|count\(25) & (!\kd|clock|Add0~49\)) # (!\kd|clock|count\(25) & ((\kd|clock|Add0~49\) # (GND)))
-- \kd|clock|Add0~51\ = CARRY((!\kd|clock|Add0~49\) # (!\kd|clock|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(25),
	datad => VCC,
	cin => \kd|clock|Add0~49\,
	combout => \kd|clock|Add0~50_combout\,
	cout => \kd|clock|Add0~51\);

-- Location: FF_X41_Y1_N19
\kd|clock|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(25));

-- Location: LCCOMB_X41_Y1_N20
\kd|clock|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~52_combout\ = (\kd|clock|count\(26) & (\kd|clock|Add0~51\ $ (GND))) # (!\kd|clock|count\(26) & (!\kd|clock|Add0~51\ & VCC))
-- \kd|clock|Add0~53\ = CARRY((\kd|clock|count\(26) & !\kd|clock|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(26),
	datad => VCC,
	cin => \kd|clock|Add0~51\,
	combout => \kd|clock|Add0~52_combout\,
	cout => \kd|clock|Add0~53\);

-- Location: FF_X41_Y1_N21
\kd|clock|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(26));

-- Location: LCCOMB_X41_Y1_N22
\kd|clock|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~54_combout\ = (\kd|clock|count\(27) & (!\kd|clock|Add0~53\)) # (!\kd|clock|count\(27) & ((\kd|clock|Add0~53\) # (GND)))
-- \kd|clock|Add0~55\ = CARRY((!\kd|clock|Add0~53\) # (!\kd|clock|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(27),
	datad => VCC,
	cin => \kd|clock|Add0~53\,
	combout => \kd|clock|Add0~54_combout\,
	cout => \kd|clock|Add0~55\);

-- Location: FF_X41_Y1_N23
\kd|clock|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(27));

-- Location: LCCOMB_X41_Y1_N24
\kd|clock|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~56_combout\ = (\kd|clock|count\(28) & (\kd|clock|Add0~55\ $ (GND))) # (!\kd|clock|count\(28) & (!\kd|clock|Add0~55\ & VCC))
-- \kd|clock|Add0~57\ = CARRY((\kd|clock|count\(28) & !\kd|clock|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(28),
	datad => VCC,
	cin => \kd|clock|Add0~55\,
	combout => \kd|clock|Add0~56_combout\,
	cout => \kd|clock|Add0~57\);

-- Location: FF_X41_Y1_N25
\kd|clock|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(28));

-- Location: LCCOMB_X41_Y1_N26
\kd|clock|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~58_combout\ = (\kd|clock|count\(29) & (!\kd|clock|Add0~57\)) # (!\kd|clock|count\(29) & ((\kd|clock|Add0~57\) # (GND)))
-- \kd|clock|Add0~59\ = CARRY((!\kd|clock|Add0~57\) # (!\kd|clock|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(29),
	datad => VCC,
	cin => \kd|clock|Add0~57\,
	combout => \kd|clock|Add0~58_combout\,
	cout => \kd|clock|Add0~59\);

-- Location: FF_X41_Y1_N27
\kd|clock|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(29));

-- Location: LCCOMB_X41_Y1_N28
\kd|clock|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~60_combout\ = (\kd|clock|count\(30) & (\kd|clock|Add0~59\ $ (GND))) # (!\kd|clock|count\(30) & (!\kd|clock|Add0~59\ & VCC))
-- \kd|clock|Add0~61\ = CARRY((\kd|clock|count\(30) & !\kd|clock|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|count\(30),
	datad => VCC,
	cin => \kd|clock|Add0~59\,
	combout => \kd|clock|Add0~60_combout\,
	cout => \kd|clock|Add0~61\);

-- Location: FF_X41_Y1_N29
\kd|clock|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(30));

-- Location: LCCOMB_X41_Y1_N30
\kd|clock|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Add0~62_combout\ = \kd|clock|count\(31) $ (\kd|clock|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(31),
	cin => \kd|clock|Add0~61\,
	combout => \kd|clock|Add0~62_combout\);

-- Location: FF_X41_Y1_N31
\kd|clock|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(31));

-- Location: LCCOMB_X42_Y1_N30
\kd|clock|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Equal0~8_combout\ = (!\kd|clock|count\(29) & (!\kd|clock|count\(28) & (!\kd|clock|count\(30) & !\kd|clock|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(29),
	datab => \kd|clock|count\(28),
	datac => \kd|clock|count\(30),
	datad => \kd|clock|count\(31),
	combout => \kd|clock|Equal0~8_combout\);

-- Location: LCCOMB_X42_Y1_N18
\kd|clock|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Equal0~6_combout\ = (!\kd|clock|count\(20) & (!\kd|clock|count\(22) & (!\kd|clock|count\(23) & !\kd|clock|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(20),
	datab => \kd|clock|count\(22),
	datac => \kd|clock|count\(23),
	datad => \kd|clock|count\(21),
	combout => \kd|clock|Equal0~6_combout\);

-- Location: LCCOMB_X42_Y1_N8
\kd|clock|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Equal0~5_combout\ = (!\kd|clock|count\(16) & (!\kd|clock|count\(19) & (!\kd|clock|count\(18) & !\kd|clock|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(16),
	datab => \kd|clock|count\(19),
	datac => \kd|clock|count\(18),
	datad => \kd|clock|count\(17),
	combout => \kd|clock|Equal0~5_combout\);

-- Location: LCCOMB_X42_Y1_N12
\kd|clock|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Equal0~7_combout\ = (!\kd|clock|count\(24) & (!\kd|clock|count\(26) & (!\kd|clock|count\(27) & !\kd|clock|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(24),
	datab => \kd|clock|count\(26),
	datac => \kd|clock|count\(27),
	datad => \kd|clock|count\(25),
	combout => \kd|clock|Equal0~7_combout\);

-- Location: LCCOMB_X42_Y1_N0
\kd|clock|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Equal0~9_combout\ = (\kd|clock|Equal0~8_combout\ & (\kd|clock|Equal0~6_combout\ & (\kd|clock|Equal0~5_combout\ & \kd|clock|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|Equal0~8_combout\,
	datab => \kd|clock|Equal0~6_combout\,
	datac => \kd|clock|Equal0~5_combout\,
	datad => \kd|clock|Equal0~7_combout\,
	combout => \kd|clock|Equal0~9_combout\);

-- Location: LCCOMB_X42_Y2_N20
\kd|clock|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|count~0_combout\ = (\kd|clock|Add0~4_combout\ & ((!\kd|clock|Equal0~4_combout\) # (!\kd|clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|Equal0~9_combout\,
	datac => \kd|clock|Add0~4_combout\,
	datad => \kd|clock|Equal0~4_combout\,
	combout => \kd|clock|count~0_combout\);

-- Location: FF_X42_Y2_N21
\kd|clock|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|count\(2));

-- Location: LCCOMB_X42_Y2_N10
\kd|clock|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Equal0~0_combout\ = (\kd|clock|count\(0) & (\kd|clock|count\(2) & (!\kd|clock|count\(3) & !\kd|clock|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(0),
	datab => \kd|clock|count\(2),
	datac => \kd|clock|count\(3),
	datad => \kd|clock|count\(1),
	combout => \kd|clock|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y2_N16
\kd|clock|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Equal0~1_combout\ = (\kd|clock|count\(4) & (\kd|clock|count\(6) & (\kd|clock|count\(7) & \kd|clock|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(4),
	datab => \kd|clock|count\(6),
	datac => \kd|clock|count\(7),
	datad => \kd|clock|count\(5),
	combout => \kd|clock|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y2_N8
\kd|clock|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Equal0~2_combout\ = (\kd|clock|count\(8) & (!\kd|clock|count\(10) & (!\kd|clock|count\(11) & !\kd|clock|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(8),
	datab => \kd|clock|count\(10),
	datac => \kd|clock|count\(11),
	datad => \kd|clock|count\(9),
	combout => \kd|clock|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y2_N18
\kd|clock|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Equal0~3_combout\ = (!\kd|clock|count\(13) & (!\kd|clock|count\(14) & (!\kd|clock|count\(12) & !\kd|clock|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|count\(13),
	datab => \kd|clock|count\(14),
	datac => \kd|clock|count\(12),
	datad => \kd|clock|count\(15),
	combout => \kd|clock|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y2_N24
\kd|clock|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|Equal0~4_combout\ = (\kd|clock|Equal0~0_combout\ & (\kd|clock|Equal0~1_combout\ & (\kd|clock|Equal0~2_combout\ & \kd|clock|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|clock|Equal0~0_combout\,
	datab => \kd|clock|Equal0~1_combout\,
	datac => \kd|clock|Equal0~2_combout\,
	datad => \kd|clock|Equal0~3_combout\,
	combout => \kd|clock|Equal0~4_combout\);

-- Location: LCCOMB_X43_Y2_N30
\kd|clock|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|tmp~0_combout\ = \kd|clock|tmp~q\ $ (((\kd|clock|Equal0~4_combout\ & \kd|clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|clock|Equal0~4_combout\,
	datac => \kd|clock|tmp~q\,
	datad => \kd|clock|Equal0~9_combout\,
	combout => \kd|clock|tmp~0_combout\);

-- Location: LCCOMB_X43_Y2_N26
\kd|clock|tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|clock|tmp~feeder_combout\ = \kd|clock|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kd|clock|tmp~0_combout\,
	combout => \kd|clock|tmp~feeder_combout\);

-- Location: FF_X43_Y2_N27
\kd|clock|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kd|clock|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|clock|tmp~q\);

-- Location: CLKCTRL_G17
\kd|clock|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kd|clock|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kd|clock|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y0_N22
\I[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(1),
	o => \I[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\I[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(3),
	o => \I[3]~input_o\);

-- Location: LCCOMB_X45_Y34_N8
\kd|scan|count|reg|ff0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|count|reg|ff0|Q~0_combout\ = \kd|scan|count|reg|ff0|Q~q\ $ (((\kd|scan|mux|Y~1_combout\ & !\kd|control|CurrentState.FIRST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|mux|Y~1_combout\,
	datac => \kd|scan|count|reg|ff0|Q~q\,
	datad => \kd|control|CurrentState.FIRST~q\,
	combout => \kd|scan|count|reg|ff0|Q~0_combout\);

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

-- Location: FF_X45_Y34_N9
\kd|scan|count|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kd|clock|tmp~clkctrl_outclk\,
	d => \kd|scan|count|reg|ff0|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|scan|count|reg|ff0|Q~q\);

-- Location: IOIBUF_X46_Y0_N8
\I[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(2),
	o => \I[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\I[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(0),
	o => \I[0]~input_o\);

-- Location: LCCOMB_X45_Y34_N2
\kd|scan|count|reg|ff1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|count|reg|ff1|Q~0_combout\ = \kd|scan|count|reg|ff1|Q~q\ $ (((\kd|scan|count|reg|ff0|Q~q\ & (!\kd|control|CurrentState.FIRST~q\ & \kd|scan|mux|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff0|Q~q\,
	datab => \kd|control|CurrentState.FIRST~q\,
	datac => \kd|scan|count|reg|ff1|Q~q\,
	datad => \kd|scan|mux|Y~1_combout\,
	combout => \kd|scan|count|reg|ff1|Q~0_combout\);

-- Location: FF_X45_Y34_N3
\kd|scan|count|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kd|clock|tmp~clkctrl_outclk\,
	d => \kd|scan|count|reg|ff1|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|scan|count|reg|ff1|Q~q\);

-- Location: LCCOMB_X45_Y34_N28
\kd|scan|mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|mux|Y~0_combout\ = (\kd|scan|count|reg|ff0|Q~q\ & (((\kd|scan|count|reg|ff1|Q~q\)))) # (!\kd|scan|count|reg|ff0|Q~q\ & ((\kd|scan|count|reg|ff1|Q~q\ & (\I[2]~input_o\)) # (!\kd|scan|count|reg|ff1|Q~q\ & ((\I[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[2]~input_o\,
	datab => \I[0]~input_o\,
	datac => \kd|scan|count|reg|ff0|Q~q\,
	datad => \kd|scan|count|reg|ff1|Q~q\,
	combout => \kd|scan|mux|Y~0_combout\);

-- Location: LCCOMB_X45_Y34_N18
\kd|scan|mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|mux|Y~1_combout\ = (\kd|scan|count|reg|ff0|Q~q\ & ((\kd|scan|mux|Y~0_combout\ & ((\I[3]~input_o\))) # (!\kd|scan|mux|Y~0_combout\ & (\I[1]~input_o\)))) # (!\kd|scan|count|reg|ff0|Q~q\ & (((\kd|scan|mux|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[1]~input_o\,
	datab => \I[3]~input_o\,
	datac => \kd|scan|count|reg|ff0|Q~q\,
	datad => \kd|scan|mux|Y~0_combout\,
	combout => \kd|scan|mux|Y~1_combout\);

-- Location: IOIBUF_X34_Y39_N29
\ACK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ACK,
	o => \ACK~input_o\);

-- Location: LCCOMB_X46_Y37_N6
\obuff|control|NextState.WAIT_ACK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obuff|control|NextState.WAIT_ACK~0_combout\ = (\ACK~input_o\ & (!\obuff|control|CurrentState.WRITE_DATA~q\ & \obuff|control|CurrentState.CAN_RECEIVE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ACK~input_o\,
	datac => \obuff|control|CurrentState.WRITE_DATA~q\,
	datad => \obuff|control|CurrentState.CAN_RECEIVE~q\,
	combout => \obuff|control|NextState.WAIT_ACK~0_combout\);

-- Location: FF_X46_Y37_N7
\obuff|control|CurrentState.WAIT_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \obuff|control|NextState.WAIT_ACK~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obuff|control|CurrentState.WAIT_ACK~q\);

-- Location: LCCOMB_X46_Y37_N16
\obuff|control|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obuff|control|Selector0~0_combout\ = (\rbuff|control|CurrentState.WRITE_REG~q\ & ((\ACK~input_o\) # ((!\obuff|control|CurrentState.WAIT_ACK~q\)))) # (!\rbuff|control|CurrentState.WRITE_REG~q\ & (\obuff|control|CurrentState.CAN_RECEIVE~q\ & 
-- ((\ACK~input_o\) # (!\obuff|control|CurrentState.WAIT_ACK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.WRITE_REG~q\,
	datab => \ACK~input_o\,
	datac => \obuff|control|CurrentState.CAN_RECEIVE~q\,
	datad => \obuff|control|CurrentState.WAIT_ACK~q\,
	combout => \obuff|control|Selector0~0_combout\);

-- Location: FF_X46_Y37_N17
\obuff|control|CurrentState.CAN_RECEIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \obuff|control|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obuff|control|CurrentState.CAN_RECEIVE~q\);

-- Location: LCCOMB_X46_Y39_N26
\rbuff|control|NextState.INC_GET~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|control|NextState.INC_GET~0_combout\ = (\rbuff|control|CurrentState.WRITE_REG~q\ & \obuff|control|CurrentState.CAN_RECEIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.WRITE_REG~q\,
	datad => \obuff|control|CurrentState.CAN_RECEIVE~q\,
	combout => \rbuff|control|NextState.INC_GET~0_combout\);

-- Location: FF_X46_Y39_N27
\rbuff|control|CurrentState.INC_GET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|control|NextState.INC_GET~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|control|CurrentState.INC_GET~q\);

-- Location: LCCOMB_X46_Y39_N28
\rbuff|mac|incrementGet|reg|ff0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementGet|reg|ff0|Q~0_combout\ = \rbuff|control|CurrentState.INC_GET~q\ $ (\rbuff|mac|incrementGet|reg|ff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.INC_GET~q\,
	datac => \rbuff|mac|incrementGet|reg|ff0|Q~q\,
	combout => \rbuff|mac|incrementGet|reg|ff0|Q~0_combout\);

-- Location: FF_X46_Y39_N29
\rbuff|mac|incrementGet|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|mac|incrementGet|reg|ff0|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|mac|incrementGet|reg|ff0|Q~q\);

-- Location: LCCOMB_X46_Y39_N14
\rbuff|mac|incrementGet|reg|ff1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementGet|reg|ff1|Q~0_combout\ = \rbuff|mac|incrementGet|reg|ff1|Q~q\ $ (((\rbuff|control|CurrentState.INC_GET~q\ & \rbuff|mac|incrementGet|reg|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.INC_GET~q\,
	datab => \rbuff|mac|incrementGet|reg|ff0|Q~q\,
	datac => \rbuff|mac|incrementGet|reg|ff1|Q~q\,
	combout => \rbuff|mac|incrementGet|reg|ff1|Q~0_combout\);

-- Location: FF_X46_Y39_N15
\rbuff|mac|incrementGet|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|mac|incrementGet|reg|ff1|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|mac|incrementGet|reg|ff1|Q~q\);

-- Location: LCCOMB_X46_Y39_N30
\rbuff|mac|incrementGet|reg|ff2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementGet|reg|ff2|Q~0_combout\ = \rbuff|mac|incrementGet|reg|ff2|Q~q\ $ (((\rbuff|control|CurrentState.INC_GET~q\ & (\rbuff|mac|incrementGet|reg|ff1|Q~q\ & \rbuff|mac|incrementGet|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.INC_GET~q\,
	datab => \rbuff|mac|incrementGet|reg|ff1|Q~q\,
	datac => \rbuff|mac|incrementGet|reg|ff2|Q~q\,
	datad => \rbuff|mac|incrementGet|reg|ff0|Q~q\,
	combout => \rbuff|mac|incrementGet|reg|ff2|Q~0_combout\);

-- Location: FF_X46_Y39_N31
\rbuff|mac|incrementGet|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|mac|incrementGet|reg|ff2|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|mac|incrementGet|reg|ff2|Q~q\);

-- Location: LCCOMB_X46_Y39_N24
\rbuff|mac|incrementGet|ad|fa3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementGet|ad|fa3|Cout~0_combout\ = (\rbuff|control|CurrentState.INC_GET~q\ & (\rbuff|mac|incrementGet|reg|ff1|Q~q\ & (\rbuff|mac|incrementGet|reg|ff2|Q~q\ & \rbuff|mac|incrementGet|reg|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.INC_GET~q\,
	datab => \rbuff|mac|incrementGet|reg|ff1|Q~q\,
	datac => \rbuff|mac|incrementGet|reg|ff2|Q~q\,
	datad => \rbuff|mac|incrementGet|reg|ff0|Q~q\,
	combout => \rbuff|mac|incrementGet|ad|fa3|Cout~0_combout\);

-- Location: LCCOMB_X46_Y37_N14
\rbuff|mac|incrementGet|reg|ff3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementGet|reg|ff3|Q~0_combout\ = \rbuff|mac|incrementGet|reg|ff3|Q~q\ $ (\rbuff|mac|incrementGet|ad|fa3|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rbuff|mac|incrementGet|reg|ff3|Q~q\,
	datad => \rbuff|mac|incrementGet|ad|fa3|Cout~0_combout\,
	combout => \rbuff|mac|incrementGet|reg|ff3|Q~0_combout\);

-- Location: FF_X46_Y37_N15
\rbuff|mac|incrementGet|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|mac|incrementGet|reg|ff3|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|mac|incrementGet|reg|ff3|Q~q\);

-- Location: LCCOMB_X45_Y39_N18
\rbuff|mac|incrementPut|reg|ff0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementPut|reg|ff0|Q~0_combout\ = \rbuff|control|CurrentState.INC_PUT~q\ $ (\rbuff|mac|incrementPut|reg|ff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.INC_PUT~q\,
	datac => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	combout => \rbuff|mac|incrementPut|reg|ff0|Q~0_combout\);

-- Location: LCCOMB_X45_Y39_N28
\rbuff|mac|incrementPut|reg|ff0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementPut|reg|ff0|Q~feeder_combout\ = \rbuff|mac|incrementPut|reg|ff0|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rbuff|mac|incrementPut|reg|ff0|Q~0_combout\,
	combout => \rbuff|mac|incrementPut|reg|ff0|Q~feeder_combout\);

-- Location: FF_X45_Y39_N29
\rbuff|mac|incrementPut|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|mac|incrementPut|reg|ff0|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|mac|incrementPut|reg|ff0|Q~q\);

-- Location: LCCOMB_X45_Y39_N6
\rbuff|mac|incrementPut|reg|ff1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementPut|reg|ff1|Q~0_combout\ = \rbuff|mac|incrementPut|reg|ff1|Q~q\ $ (((\rbuff|control|CurrentState.INC_PUT~q\ & \rbuff|mac|incrementPut|reg|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.INC_PUT~q\,
	datac => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	datad => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	combout => \rbuff|mac|incrementPut|reg|ff1|Q~0_combout\);

-- Location: FF_X45_Y39_N7
\rbuff|mac|incrementPut|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \rbuff|mac|incrementPut|reg|ff1|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|mac|incrementPut|reg|ff1|Q~q\);

-- Location: LCCOMB_X45_Y39_N4
\rbuff|mac|incrementPut|reg|ff2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementPut|reg|ff2|Q~0_combout\ = \rbuff|mac|incrementPut|reg|ff2|Q~q\ $ (((\rbuff|control|CurrentState.INC_PUT~q\ & (\rbuff|mac|incrementPut|reg|ff1|Q~q\ & \rbuff|mac|incrementPut|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.INC_PUT~q\,
	datab => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	datac => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datad => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	combout => \rbuff|mac|incrementPut|reg|ff2|Q~0_combout\);

-- Location: FF_X45_Y39_N5
\rbuff|mac|incrementPut|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \rbuff|mac|incrementPut|reg|ff2|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|mac|incrementPut|reg|ff2|Q~q\);

-- Location: LCCOMB_X45_Y39_N26
\rbuff|mac|incrementPut|ad|fa3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementPut|ad|fa3|Cout~0_combout\ = (\rbuff|control|CurrentState.INC_PUT~q\ & (\rbuff|mac|incrementPut|reg|ff2|Q~q\ & (\rbuff|mac|incrementPut|reg|ff0|Q~q\ & \rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.INC_PUT~q\,
	datab => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datac => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datad => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rbuff|mac|incrementPut|ad|fa3|Cout~0_combout\);

-- Location: LCCOMB_X46_Y37_N28
\rbuff|mac|incrementPut|reg|ff3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|incrementPut|reg|ff3|Q~0_combout\ = \rbuff|mac|incrementPut|reg|ff3|Q~q\ $ (\rbuff|mac|incrementPut|ad|fa3|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rbuff|mac|incrementPut|reg|ff3|Q~q\,
	datad => \rbuff|mac|incrementPut|ad|fa3|Cout~0_combout\,
	combout => \rbuff|mac|incrementPut|reg|ff3|Q~0_combout\);

-- Location: FF_X46_Y37_N29
\rbuff|mac|incrementPut|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|mac|incrementPut|reg|ff3|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|mac|incrementPut|reg|ff3|Q~q\);

-- Location: LCCOMB_X46_Y37_N20
\rbuff|mac|empty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|empty~0_combout\ = \rbuff|mac|incrementGet|reg|ff3|Q~q\ $ (\rbuff|mac|incrementPut|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rbuff|mac|incrementGet|reg|ff3|Q~q\,
	datad => \rbuff|mac|incrementPut|reg|ff3|Q~q\,
	combout => \rbuff|mac|empty~0_combout\);

-- Location: LCCOMB_X46_Y39_N18
\rbuff|mac|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|Equal0~0_combout\ = (\rbuff|mac|incrementGet|reg|ff1|Q~q\ & (\rbuff|mac|incrementPut|reg|ff1|Q~q\ & (\rbuff|mac|incrementGet|reg|ff0|Q~q\ $ (!\rbuff|mac|incrementPut|reg|ff0|Q~q\)))) # (!\rbuff|mac|incrementGet|reg|ff1|Q~q\ & 
-- (!\rbuff|mac|incrementPut|reg|ff1|Q~q\ & (\rbuff|mac|incrementGet|reg|ff0|Q~q\ $ (!\rbuff|mac|incrementPut|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|incrementGet|reg|ff1|Q~q\,
	datab => \rbuff|mac|incrementGet|reg|ff0|Q~q\,
	datac => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	datad => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	combout => \rbuff|mac|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y39_N20
\rbuff|mac|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|Equal0~1_combout\ = (\rbuff|mac|Equal0~0_combout\ & (\rbuff|mac|incrementPut|reg|ff2|Q~q\ $ (!\rbuff|mac|incrementGet|reg|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datac => \rbuff|mac|Equal0~0_combout\,
	datad => \rbuff|mac|incrementGet|reg|ff2|Q~q\,
	combout => \rbuff|mac|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y39_N22
\rbuff|control|NextState.SELECT_PUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|control|NextState.SELECT_PUT~0_combout\ = (!\rbuff|control|CurrentState.ZEN~q\ & (\kd|control|CurrentState.SECOND~q\ & ((!\rbuff|mac|Equal0~1_combout\) # (!\rbuff|mac|empty~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.ZEN~q\,
	datab => \rbuff|mac|empty~0_combout\,
	datac => \kd|control|CurrentState.SECOND~q\,
	datad => \rbuff|mac|Equal0~1_combout\,
	combout => \rbuff|control|NextState.SELECT_PUT~0_combout\);

-- Location: FF_X46_Y39_N23
\rbuff|control|CurrentState.SELECT_PUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|control|NextState.SELECT_PUT~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|control|CurrentState.SELECT_PUT~q\);

-- Location: LCCOMB_X45_Y39_N14
\rbuff|control|CurrentState.WRITE_RAM~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|control|CurrentState.WRITE_RAM~feeder_combout\ = \rbuff|control|CurrentState.SELECT_PUT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rbuff|control|CurrentState.SELECT_PUT~q\,
	combout => \rbuff|control|CurrentState.WRITE_RAM~feeder_combout\);

-- Location: FF_X45_Y39_N15
\rbuff|control|CurrentState.WRITE_RAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \rbuff|control|CurrentState.WRITE_RAM~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|control|CurrentState.WRITE_RAM~q\);

-- Location: LCCOMB_X45_Y39_N30
\rbuff|control|CurrentState.INC_PUT~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|control|CurrentState.INC_PUT~feeder_combout\ = \rbuff|control|CurrentState.WRITE_RAM~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.WRITE_RAM~q\,
	combout => \rbuff|control|CurrentState.INC_PUT~feeder_combout\);

-- Location: FF_X45_Y39_N31
\rbuff|control|CurrentState.INC_PUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|control|CurrentState.INC_PUT~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|control|CurrentState.INC_PUT~q\);

-- Location: LCCOMB_X46_Y37_N4
\rbuff|control|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|control|Selector1~0_combout\ = (\rbuff|control|CurrentState.INC_PUT~q\) # ((\rbuff|control|CurrentState.ACCEPTED~q\ & \kd|control|CurrentState.SECOND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.ACCEPTED~q\,
	datac => \kd|control|CurrentState.SECOND~q\,
	datad => \rbuff|control|CurrentState.INC_PUT~q\,
	combout => \rbuff|control|Selector1~0_combout\);

-- Location: FF_X46_Y37_N21
\rbuff|control|CurrentState.ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rbuff|control|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|control|CurrentState.ACCEPTED~q\);

-- Location: LCCOMB_X46_Y37_N8
\kd|control|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|control|Selector2~0_combout\ = (\rbuff|control|CurrentState.ACCEPTED~q\ & ((\kd|control|CurrentState.THIRD~q\) # ((\kd|control|CurrentState.SECOND~q\ & \kd|scan|mux|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|control|CurrentState.SECOND~q\,
	datab => \kd|scan|mux|Y~1_combout\,
	datac => \kd|control|CurrentState.THIRD~q\,
	datad => \rbuff|control|CurrentState.ACCEPTED~q\,
	combout => \kd|control|Selector2~0_combout\);

-- Location: FF_X46_Y37_N9
\kd|control|CurrentState.THIRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kd|clock|tmp~clkctrl_outclk\,
	d => \kd|control|Selector2~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|control|CurrentState.THIRD~q\);

-- Location: LCCOMB_X46_Y37_N26
\kd|control|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|control|Selector0~0_combout\ = (\kd|control|CurrentState.THIRD~q\ & (\rbuff|control|CurrentState.ACCEPTED~q\ & ((\kd|control|CurrentState.FIRST~q\) # (!\kd|scan|mux|Y~1_combout\)))) # (!\kd|control|CurrentState.THIRD~q\ & 
-- (((\kd|control|CurrentState.FIRST~q\)) # (!\kd|scan|mux|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|control|CurrentState.THIRD~q\,
	datab => \kd|scan|mux|Y~1_combout\,
	datac => \kd|control|CurrentState.FIRST~q\,
	datad => \rbuff|control|CurrentState.ACCEPTED~q\,
	combout => \kd|control|Selector0~0_combout\);

-- Location: FF_X46_Y37_N27
\kd|control|CurrentState.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kd|clock|tmp~clkctrl_outclk\,
	d => \kd|control|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|control|CurrentState.FIRST~q\);

-- Location: LCCOMB_X46_Y37_N18
\kd|control|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|control|Selector1~0_combout\ = (\kd|scan|mux|Y~1_combout\ & (((\kd|control|CurrentState.SECOND~q\ & !\rbuff|control|CurrentState.ACCEPTED~q\)))) # (!\kd|scan|mux|Y~1_combout\ & (((\kd|control|CurrentState.SECOND~q\)) # 
-- (!\kd|control|CurrentState.FIRST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|control|CurrentState.FIRST~q\,
	datab => \kd|scan|mux|Y~1_combout\,
	datac => \kd|control|CurrentState.SECOND~q\,
	datad => \rbuff|control|CurrentState.ACCEPTED~q\,
	combout => \kd|control|Selector1~0_combout\);

-- Location: FF_X46_Y37_N19
\kd|control|CurrentState.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kd|clock|tmp~clkctrl_outclk\,
	d => \kd|control|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|control|CurrentState.SECOND~q\);

-- Location: LCCOMB_X46_Y37_N24
\rbuff|control|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|control|Selector0~0_combout\ = (!\kd|control|CurrentState.SECOND~q\ & ((\rbuff|control|CurrentState.ACCEPTED~q\) # ((\obuff|control|CurrentState.CAN_RECEIVE~q\ & !\rbuff|control|CurrentState.ZEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|control|CurrentState.SECOND~q\,
	datab => \obuff|control|CurrentState.CAN_RECEIVE~q\,
	datac => \rbuff|control|CurrentState.ZEN~q\,
	datad => \rbuff|control|CurrentState.ACCEPTED~q\,
	combout => \rbuff|control|Selector0~0_combout\);

-- Location: LCCOMB_X46_Y37_N2
\rbuff|control|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|control|Selector0~1_combout\ = (!\rbuff|control|CurrentState.ZEN~q\ & ((\rbuff|mac|empty~0_combout\ & (\obuff|control|CurrentState.CAN_RECEIVE~q\)) # (!\rbuff|mac|empty~0_combout\ & ((!\kd|control|CurrentState.SECOND~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.ZEN~q\,
	datab => \obuff|control|CurrentState.CAN_RECEIVE~q\,
	datac => \kd|control|CurrentState.SECOND~q\,
	datad => \rbuff|mac|empty~0_combout\,
	combout => \rbuff|control|Selector0~1_combout\);

-- Location: LCCOMB_X46_Y37_N30
\rbuff|control|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|control|Selector0~2_combout\ = (!\rbuff|control|Selector0~0_combout\ & (!\rbuff|control|CurrentState.INC_GET~q\ & ((!\rbuff|control|Selector0~1_combout\) # (!\rbuff|mac|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|Selector0~0_combout\,
	datab => \rbuff|mac|Equal0~1_combout\,
	datac => \rbuff|control|Selector0~1_combout\,
	datad => \rbuff|control|CurrentState.INC_GET~q\,
	combout => \rbuff|control|Selector0~2_combout\);

-- Location: FF_X46_Y37_N31
\rbuff|control|CurrentState.ZEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|control|Selector0~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|control|CurrentState.ZEN~q\);

-- Location: LCCOMB_X46_Y37_N10
\rbuff|control|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|control|Selector2~3_combout\ = (\rbuff|mac|Equal0~1_combout\ & ((\rbuff|mac|incrementPut|reg|ff3|Q~q\ $ (!\rbuff|mac|incrementGet|reg|ff3|Q~q\)))) # (!\rbuff|mac|Equal0~1_combout\ & (\kd|control|CurrentState.SECOND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|control|CurrentState.SECOND~q\,
	datab => \rbuff|mac|incrementPut|reg|ff3|Q~q\,
	datac => \rbuff|mac|incrementGet|reg|ff3|Q~q\,
	datad => \rbuff|mac|Equal0~1_combout\,
	combout => \rbuff|control|Selector2~3_combout\);

-- Location: LCCOMB_X46_Y37_N12
\rbuff|control|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|control|Selector2~2_combout\ = (!\obuff|control|CurrentState.CAN_RECEIVE~q\ & ((\rbuff|control|CurrentState.WRITE_REG~q\) # ((!\rbuff|control|CurrentState.ZEN~q\ & !\rbuff|control|Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.ZEN~q\,
	datab => \rbuff|control|Selector2~3_combout\,
	datac => \rbuff|control|CurrentState.WRITE_REG~q\,
	datad => \obuff|control|CurrentState.CAN_RECEIVE~q\,
	combout => \rbuff|control|Selector2~2_combout\);

-- Location: FF_X46_Y37_N13
\rbuff|control|CurrentState.WRITE_REG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|control|Selector2~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rbuff|control|CurrentState.WRITE_REG~q\);

-- Location: LCCOMB_X46_Y37_N22
\obuff|control|NextState.WRITE_DATA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obuff|control|NextState.WRITE_DATA~0_combout\ = (\rbuff|control|CurrentState.WRITE_REG~q\ & ((\obuff|control|CurrentState.WRITE_DATA~q\) # (!\obuff|control|CurrentState.CAN_RECEIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.WRITE_REG~q\,
	datac => \obuff|control|CurrentState.WRITE_DATA~q\,
	datad => \obuff|control|CurrentState.CAN_RECEIVE~q\,
	combout => \obuff|control|NextState.WRITE_DATA~0_combout\);

-- Location: FF_X46_Y37_N23
\obuff|control|CurrentState.WRITE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \obuff|control|NextState.WRITE_DATA~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obuff|control|CurrentState.WRITE_DATA~q\);

-- Location: LCCOMB_X46_Y37_N0
\obuff|control|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obuff|control|Selector1~0_combout\ = (\obuff|control|CurrentState.WRITE_DATA~q\ & (((!\ACK~input_o\ & \obuff|control|CurrentState.SEND_DATA~q\)) # (!\rbuff|control|CurrentState.WRITE_REG~q\))) # (!\obuff|control|CurrentState.WRITE_DATA~q\ & 
-- (!\ACK~input_o\ & (\obuff|control|CurrentState.SEND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obuff|control|CurrentState.WRITE_DATA~q\,
	datab => \ACK~input_o\,
	datac => \obuff|control|CurrentState.SEND_DATA~q\,
	datad => \rbuff|control|CurrentState.WRITE_REG~q\,
	combout => \obuff|control|Selector1~0_combout\);

-- Location: FF_X46_Y37_N1
\obuff|control|CurrentState.SEND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \obuff|control|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obuff|control|CurrentState.SEND_DATA~q\);

-- Location: LCCOMB_X45_Y34_N24
\kd|scan|count|ad|fa2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|count|ad|fa2|Cout~0_combout\ = (\kd|scan|count|reg|ff0|Q~q\ & (\kd|scan|count|reg|ff1|Q~q\ & (!\kd|control|CurrentState.FIRST~q\ & \kd|scan|mux|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff0|Q~q\,
	datab => \kd|scan|count|reg|ff1|Q~q\,
	datac => \kd|control|CurrentState.FIRST~q\,
	datad => \kd|scan|mux|Y~1_combout\,
	combout => \kd|scan|count|ad|fa2|Cout~0_combout\);

-- Location: LCCOMB_X45_Y37_N28
\kd|scan|count|reg|ff2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|count|reg|ff2|Q~0_combout\ = \kd|scan|count|reg|ff2|Q~q\ $ (\kd|scan|count|ad|fa2|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kd|scan|count|reg|ff2|Q~q\,
	datad => \kd|scan|count|ad|fa2|Cout~0_combout\,
	combout => \kd|scan|count|reg|ff2|Q~0_combout\);

-- Location: FF_X45_Y37_N29
\kd|scan|count|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kd|clock|tmp~clkctrl_outclk\,
	d => \kd|scan|count|reg|ff2|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|scan|count|reg|ff2|Q~q\);

-- Location: LCCOMB_X45_Y36_N28
\kd|scan|count|reg|ff3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|count|reg|ff3|Q~0_combout\ = ((!\kd|scan|count|reg|ff1|Q~q\) # (!\kd|scan|count|reg|ff2|Q~q\)) # (!\kd|scan|count|reg|ff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff0|Q~q\,
	datac => \kd|scan|count|reg|ff2|Q~q\,
	datad => \kd|scan|count|reg|ff1|Q~q\,
	combout => \kd|scan|count|reg|ff3|Q~0_combout\);

-- Location: LCCOMB_X45_Y36_N4
\kd|scan|count|reg|ff3|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|count|reg|ff3|Q~1_combout\ = \kd|scan|count|reg|ff3|Q~q\ $ (((!\kd|control|CurrentState.FIRST~q\ & (\kd|scan|mux|Y~1_combout\ & !\kd|scan|count|reg|ff3|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|control|CurrentState.FIRST~q\,
	datab => \kd|scan|mux|Y~1_combout\,
	datac => \kd|scan|count|reg|ff3|Q~q\,
	datad => \kd|scan|count|reg|ff3|Q~0_combout\,
	combout => \kd|scan|count|reg|ff3|Q~1_combout\);

-- Location: FF_X45_Y36_N5
\kd|scan|count|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kd|clock|tmp~clkctrl_outclk\,
	d => \kd|scan|count|reg|ff3|Q~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kd|scan|count|reg|ff3|Q~q\);

-- Location: LCCOMB_X44_Y35_N8
\kd|scan|dec|O[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|dec|O[1]~0_combout\ = (\kd|scan|count|reg|ff2|Q~q\) # (\kd|scan|count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff2|Q~q\,
	datad => \kd|scan|count|reg|ff3|Q~q\,
	combout => \kd|scan|dec|O[1]~0_combout\);

-- Location: LCCOMB_X44_Y35_N10
\kd|scan|dec|O[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|dec|O[1]~1_combout\ = (\kd|scan|count|reg|ff2|Q~q\ & !\kd|scan|count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff2|Q~q\,
	datad => \kd|scan|count|reg|ff3|Q~q\,
	combout => \kd|scan|dec|O[1]~1_combout\);

-- Location: LCCOMB_X44_Y35_N0
\kd|scan|dec|O[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kd|scan|dec|O[1]~2_combout\ = (!\kd|scan|count|reg|ff2|Q~q\ & \kd|scan|count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff2|Q~q\,
	datad => \kd|scan|count|reg|ff3|Q~q\,
	combout => \kd|scan|dec|O[1]~2_combout\);

-- Location: LCCOMB_X45_Y39_N20
\rtl~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = (\rbuff|mac|incrementPut|reg|ff0|Q~q\ & (!\rbuff|mac|incrementPut|reg|ff2|Q~q\ & (\rbuff|control|CurrentState.WRITE_RAM~q\ & !\rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datab => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datac => \rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~13_combout\);

-- Location: CLKCTRL_G9
\rtl~13clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~13clkctrl_outclk\);

-- Location: LCCOMB_X45_Y35_N10
\rbuff|memory|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~4_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & ((\kd|scan|count|reg|ff0|Q~q\))) # (!GLOBAL(\rtl~13clkctrl_outclk\) & (\rbuff|memory|ram~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|memory|ram~4_combout\,
	datab => \kd|scan|count|reg|ff0|Q~q\,
	datad => \rtl~13clkctrl_outclk\,
	combout => \rbuff|memory|ram~4_combout\);

-- Location: LCCOMB_X46_Y39_N16
\rbuff|mac|idxDecider|Y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|idxDecider|Y[0]~0_combout\ = (\rbuff|control|CurrentState.SELECT_PUT~q\ & (((\rbuff|mac|incrementPut|reg|ff0|Q~q\)))) # (!\rbuff|control|CurrentState.SELECT_PUT~q\ & ((\rbuff|control|CurrentState.WRITE_RAM~q\ & 
-- ((\rbuff|mac|incrementPut|reg|ff0|Q~q\))) # (!\rbuff|control|CurrentState.WRITE_RAM~q\ & (\rbuff|mac|incrementGet|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.SELECT_PUT~q\,
	datab => \rbuff|mac|incrementGet|reg|ff0|Q~q\,
	datac => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datad => \rbuff|control|CurrentState.WRITE_RAM~q\,
	combout => \rbuff|mac|idxDecider|Y[0]~0_combout\);

-- Location: LCCOMB_X45_Y39_N16
\rtl~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = (!\rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\rbuff|control|CurrentState.WRITE_RAM~q\ & (!\rbuff|mac|incrementPut|reg|ff2|Q~q\ & !\rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datab => \rbuff|control|CurrentState.WRITE_RAM~q\,
	datac => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datad => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~14_combout\);

-- Location: CLKCTRL_G8
\rtl~14clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~14clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~14clkctrl_outclk\);

-- Location: LCCOMB_X45_Y35_N24
\rbuff|memory|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~0_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & ((\kd|scan|count|reg|ff0|Q~q\))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & (\rbuff|memory|ram~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rbuff|memory|ram~0_combout\,
	datac => \kd|scan|count|reg|ff0|Q~q\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \rbuff|memory|ram~0_combout\);

-- Location: LCCOMB_X46_Y39_N4
\rbuff|mac|idxDecider|Y[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|idxDecider|Y[1]~1_combout\ = (\rbuff|control|CurrentState.SELECT_PUT~q\ & (((\rbuff|mac|incrementPut|reg|ff1|Q~q\)))) # (!\rbuff|control|CurrentState.SELECT_PUT~q\ & ((\rbuff|control|CurrentState.WRITE_RAM~q\ & 
-- ((\rbuff|mac|incrementPut|reg|ff1|Q~q\))) # (!\rbuff|control|CurrentState.WRITE_RAM~q\ & (\rbuff|mac|incrementGet|reg|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.SELECT_PUT~q\,
	datab => \rbuff|mac|incrementGet|reg|ff1|Q~q\,
	datac => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	datad => \rbuff|control|CurrentState.WRITE_RAM~q\,
	combout => \rbuff|mac|idxDecider|Y[1]~1_combout\);

-- Location: LCCOMB_X45_Y35_N12
\rbuff|memory|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~34_combout\ = (\rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\rbuff|memory|ram~4_combout\) # ((\rbuff|mac|idxDecider|Y[1]~1_combout\)))) # (!\rbuff|mac|idxDecider|Y[0]~0_combout\ & (((\rbuff|memory|ram~0_combout\ & 
-- !\rbuff|mac|idxDecider|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|memory|ram~4_combout\,
	datab => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datac => \rbuff|memory|ram~0_combout\,
	datad => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	combout => \rbuff|memory|ram~34_combout\);

-- Location: LCCOMB_X45_Y39_N12
\rtl~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = (!\rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\rbuff|control|CurrentState.WRITE_RAM~q\ & (!\rbuff|mac|incrementPut|reg|ff2|Q~q\ & \rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datab => \rbuff|control|CurrentState.WRITE_RAM~q\,
	datac => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datad => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~12_combout\);

-- Location: CLKCTRL_G5
\rtl~12clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~12clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~12clkctrl_outclk\);

-- Location: LCCOMB_X46_Y35_N24
\rbuff|memory|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~8_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\rbuff|memory|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff0|Q~q\,
	datab => \rbuff|memory|ram~8_combout\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \rbuff|memory|ram~8_combout\);

-- Location: LCCOMB_X45_Y39_N10
\rtl~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = (\rbuff|mac|incrementPut|reg|ff0|Q~q\ & (!\rbuff|mac|incrementPut|reg|ff2|Q~q\ & (\rbuff|control|CurrentState.WRITE_RAM~q\ & \rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datab => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datac => \rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~15_combout\);

-- Location: CLKCTRL_G14
\rtl~15clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~15clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~15clkctrl_outclk\);

-- Location: LCCOMB_X45_Y34_N14
\rbuff|memory|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~12_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\rbuff|memory|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff0|Q~q\,
	datac => \rbuff|memory|ram~12_combout\,
	datad => \rtl~15clkctrl_outclk\,
	combout => \rbuff|memory|ram~12_combout\);

-- Location: LCCOMB_X45_Y35_N26
\rbuff|memory|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~35_combout\ = (\rbuff|memory|ram~34_combout\ & (((\rbuff|memory|ram~12_combout\) # (!\rbuff|mac|idxDecider|Y[1]~1_combout\)))) # (!\rbuff|memory|ram~34_combout\ & (\rbuff|memory|ram~8_combout\ & (\rbuff|mac|idxDecider|Y[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|memory|ram~34_combout\,
	datab => \rbuff|memory|ram~8_combout\,
	datac => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	datad => \rbuff|memory|ram~12_combout\,
	combout => \rbuff|memory|ram~35_combout\);

-- Location: LCCOMB_X46_Y39_N12
\rbuff|mac|idxDecider|Y[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|mac|idxDecider|Y[2]~2_combout\ = (\rbuff|control|CurrentState.SELECT_PUT~q\ & (\rbuff|mac|incrementPut|reg|ff2|Q~q\)) # (!\rbuff|control|CurrentState.SELECT_PUT~q\ & ((\rbuff|control|CurrentState.WRITE_RAM~q\ & 
-- (\rbuff|mac|incrementPut|reg|ff2|Q~q\)) # (!\rbuff|control|CurrentState.WRITE_RAM~q\ & ((\rbuff|mac|incrementGet|reg|ff2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|control|CurrentState.SELECT_PUT~q\,
	datab => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datac => \rbuff|mac|incrementGet|reg|ff2|Q~q\,
	datad => \rbuff|control|CurrentState.WRITE_RAM~q\,
	combout => \rbuff|mac|idxDecider|Y[2]~2_combout\);

-- Location: LCCOMB_X45_Y39_N8
\rtl~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\rbuff|mac|incrementPut|reg|ff2|Q~q\ & (\rbuff|control|CurrentState.WRITE_RAM~q\ & \rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datab => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datac => \rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~11_combout\);

-- Location: CLKCTRL_G12
\rtl~11clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~11clkctrl_outclk\);

-- Location: LCCOMB_X45_Y34_N20
\rbuff|memory|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~28_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\rbuff|memory|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|scan|count|reg|ff0|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \rbuff|memory|ram~28_combout\,
	combout => \rbuff|memory|ram~28_combout\);

-- Location: LCCOMB_X45_Y39_N24
\rtl~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (!\rbuff|mac|incrementPut|reg|ff1|Q~q\ & (\rbuff|control|CurrentState.WRITE_RAM~q\ & (\rbuff|mac|incrementPut|reg|ff2|Q~q\ & \rbuff|mac|incrementPut|reg|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	datab => \rbuff|control|CurrentState.WRITE_RAM~q\,
	datac => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datad => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	combout => \rtl~8_combout\);

-- Location: CLKCTRL_G10
\rtl~8clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~8clkctrl_outclk\);

-- Location: LCCOMB_X46_Y34_N8
\rbuff|memory|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~20_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\rbuff|memory|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|scan|count|reg|ff0|Q~q\,
	datac => \rbuff|memory|ram~20_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \rbuff|memory|ram~20_combout\);

-- Location: LCCOMB_X45_Y39_N22
\rtl~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (!\rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\rbuff|mac|incrementPut|reg|ff2|Q~q\ & (\rbuff|control|CurrentState.WRITE_RAM~q\ & \rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datab => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datac => \rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~9_combout\);

-- Location: CLKCTRL_G13
\rtl~9clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~9clkctrl_outclk\);

-- Location: LCCOMB_X45_Y35_N0
\rbuff|memory|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~24_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\rbuff|memory|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff0|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \rbuff|memory|ram~24_combout\,
	combout => \rbuff|memory|ram~24_combout\);

-- Location: LCCOMB_X45_Y39_N2
\rtl~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (\rbuff|mac|incrementPut|reg|ff2|Q~q\ & (!\rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\rbuff|control|CurrentState.WRITE_RAM~q\ & !\rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datab => \rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~10_combout\);

-- Location: CLKCTRL_G11
\rtl~10clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~10clkctrl_outclk\);

-- Location: LCCOMB_X45_Y34_N22
\rbuff|memory|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~16_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\rbuff|memory|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff0|Q~q\,
	datac => \rbuff|memory|ram~16_combout\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \rbuff|memory|ram~16_combout\);

-- Location: LCCOMB_X45_Y35_N28
\rbuff|memory|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~32_combout\ = (\rbuff|mac|idxDecider|Y[0]~0_combout\ & (((\rbuff|mac|idxDecider|Y[1]~1_combout\)))) # (!\rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\rbuff|mac|idxDecider|Y[1]~1_combout\ & (\rbuff|memory|ram~24_combout\)) # 
-- (!\rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\rbuff|memory|ram~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datab => \rbuff|memory|ram~24_combout\,
	datac => \rbuff|memory|ram~16_combout\,
	datad => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	combout => \rbuff|memory|ram~32_combout\);

-- Location: LCCOMB_X45_Y35_N18
\rbuff|memory|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~33_combout\ = (\rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\rbuff|memory|ram~32_combout\ & (\rbuff|memory|ram~28_combout\)) # (!\rbuff|memory|ram~32_combout\ & ((\rbuff|memory|ram~20_combout\))))) # (!\rbuff|mac|idxDecider|Y[0]~0_combout\ 
-- & (((\rbuff|memory|ram~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|memory|ram~28_combout\,
	datab => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datac => \rbuff|memory|ram~20_combout\,
	datad => \rbuff|memory|ram~32_combout\,
	combout => \rbuff|memory|ram~33_combout\);

-- Location: LCCOMB_X45_Y35_N4
\rbuff|memory|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~36_combout\ = (\rbuff|mac|idxDecider|Y[2]~2_combout\ & ((\rbuff|memory|ram~33_combout\))) # (!\rbuff|mac|idxDecider|Y[2]~2_combout\ & (\rbuff|memory|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|memory|ram~35_combout\,
	datac => \rbuff|mac|idxDecider|Y[2]~2_combout\,
	datad => \rbuff|memory|ram~33_combout\,
	combout => \rbuff|memory|ram~36_combout\);

-- Location: FF_X45_Y35_N5
\obuff|outreg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|memory|ram~36_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \obuff|control|CurrentState.WRITE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obuff|outreg|ff0|Q~q\);

-- Location: LCCOMB_X45_Y34_N16
\rbuff|memory|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~29_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\rbuff|memory|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff1|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \rbuff|memory|ram~29_combout\,
	combout => \rbuff|memory|ram~29_combout\);

-- Location: LCCOMB_X46_Y34_N0
\rbuff|memory|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~25_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\rbuff|memory|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|scan|count|reg|ff1|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \rbuff|memory|ram~25_combout\,
	combout => \rbuff|memory|ram~25_combout\);

-- Location: LCCOMB_X46_Y35_N22
\rbuff|memory|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~17_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\kd|scan|count|reg|ff1|Q~q\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\rbuff|memory|ram~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|memory|ram~17_combout\,
	datac => \kd|scan|count|reg|ff1|Q~q\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \rbuff|memory|ram~17_combout\);

-- Location: LCCOMB_X45_Y35_N8
\rbuff|memory|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~37_combout\ = (\rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\rbuff|mac|idxDecider|Y[0]~0_combout\) # ((\rbuff|memory|ram~25_combout\)))) # (!\rbuff|mac|idxDecider|Y[1]~1_combout\ & (!\rbuff|mac|idxDecider|Y[0]~0_combout\ & 
-- ((\rbuff|memory|ram~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	datab => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datac => \rbuff|memory|ram~25_combout\,
	datad => \rbuff|memory|ram~17_combout\,
	combout => \rbuff|memory|ram~37_combout\);

-- Location: LCCOMB_X46_Y34_N18
\rbuff|memory|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~21_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\rbuff|memory|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|scan|count|reg|ff1|Q~q\,
	datac => \rbuff|memory|ram~21_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \rbuff|memory|ram~21_combout\);

-- Location: LCCOMB_X45_Y35_N30
\rbuff|memory|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~38_combout\ = (\rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\rbuff|memory|ram~37_combout\ & (\rbuff|memory|ram~29_combout\)) # (!\rbuff|memory|ram~37_combout\ & ((\rbuff|memory|ram~21_combout\))))) # (!\rbuff|mac|idxDecider|Y[0]~0_combout\ 
-- & (((\rbuff|memory|ram~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|memory|ram~29_combout\,
	datab => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datac => \rbuff|memory|ram~37_combout\,
	datad => \rbuff|memory|ram~21_combout\,
	combout => \rbuff|memory|ram~38_combout\);

-- Location: LCCOMB_X45_Y35_N14
\rbuff|memory|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~5_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\rbuff|memory|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff1|Q~q\,
	datac => \rbuff|memory|ram~5_combout\,
	datad => \rtl~13clkctrl_outclk\,
	combout => \rbuff|memory|ram~5_combout\);

-- Location: LCCOMB_X45_Y35_N20
\rbuff|memory|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~1_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\rbuff|memory|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff1|Q~q\,
	datab => \rbuff|memory|ram~1_combout\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \rbuff|memory|ram~1_combout\);

-- Location: LCCOMB_X45_Y35_N16
\rbuff|memory|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~39_combout\ = (\rbuff|mac|idxDecider|Y[1]~1_combout\ & (\rbuff|mac|idxDecider|Y[0]~0_combout\)) # (!\rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\rbuff|mac|idxDecider|Y[0]~0_combout\ & (\rbuff|memory|ram~5_combout\)) # 
-- (!\rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\rbuff|memory|ram~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	datab => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datac => \rbuff|memory|ram~5_combout\,
	datad => \rbuff|memory|ram~1_combout\,
	combout => \rbuff|memory|ram~39_combout\);

-- Location: LCCOMB_X45_Y34_N30
\rbuff|memory|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~13_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\rbuff|memory|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|scan|count|reg|ff1|Q~q\,
	datac => \rbuff|memory|ram~13_combout\,
	datad => \rtl~15clkctrl_outclk\,
	combout => \rbuff|memory|ram~13_combout\);

-- Location: LCCOMB_X46_Y35_N4
\rbuff|memory|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~9_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\rbuff|memory|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff1|Q~q\,
	datac => \rbuff|memory|ram~9_combout\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \rbuff|memory|ram~9_combout\);

-- Location: LCCOMB_X45_Y35_N22
\rbuff|memory|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~40_combout\ = (\rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\rbuff|memory|ram~39_combout\ & (\rbuff|memory|ram~13_combout\)) # (!\rbuff|memory|ram~39_combout\ & ((\rbuff|memory|ram~9_combout\))))) # (!\rbuff|mac|idxDecider|Y[1]~1_combout\ & 
-- (\rbuff|memory|ram~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	datab => \rbuff|memory|ram~39_combout\,
	datac => \rbuff|memory|ram~13_combout\,
	datad => \rbuff|memory|ram~9_combout\,
	combout => \rbuff|memory|ram~40_combout\);

-- Location: LCCOMB_X45_Y35_N6
\rbuff|memory|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~41_combout\ = (\rbuff|mac|idxDecider|Y[2]~2_combout\ & (\rbuff|memory|ram~38_combout\)) # (!\rbuff|mac|idxDecider|Y[2]~2_combout\ & ((\rbuff|memory|ram~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[2]~2_combout\,
	datac => \rbuff|memory|ram~38_combout\,
	datad => \rbuff|memory|ram~40_combout\,
	combout => \rbuff|memory|ram~41_combout\);

-- Location: FF_X45_Y35_N7
\obuff|outreg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|memory|ram~41_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \obuff|control|CurrentState.WRITE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obuff|outreg|ff1|Q~q\);

-- Location: LCCOMB_X45_Y36_N6
\rbuff|memory|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~22_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\rbuff|memory|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~8clkctrl_outclk\,
	datac => \kd|scan|count|reg|ff2|Q~q\,
	datad => \rbuff|memory|ram~22_combout\,
	combout => \rbuff|memory|ram~22_combout\);

-- Location: LCCOMB_X46_Y36_N8
\rbuff|memory|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~30_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & ((\kd|scan|count|reg|ff2|Q~q\))) # (!GLOBAL(\rtl~11clkctrl_outclk\) & (\rbuff|memory|ram~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rbuff|memory|ram~30_combout\,
	datac => \kd|scan|count|reg|ff2|Q~q\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \rbuff|memory|ram~30_combout\);

-- Location: LCCOMB_X45_Y36_N24
\rbuff|memory|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~26_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\rbuff|memory|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff2|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \rbuff|memory|ram~26_combout\,
	combout => \rbuff|memory|ram~26_combout\);

-- Location: LCCOMB_X45_Y36_N14
\rbuff|memory|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~18_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\rbuff|memory|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|scan|count|reg|ff2|Q~q\,
	datac => \rbuff|memory|ram~18_combout\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \rbuff|memory|ram~18_combout\);

-- Location: LCCOMB_X45_Y36_N26
\rbuff|memory|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~42_combout\ = (\rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\rbuff|memory|ram~26_combout\) # ((\rbuff|mac|idxDecider|Y[0]~0_combout\)))) # (!\rbuff|mac|idxDecider|Y[1]~1_combout\ & (((\rbuff|memory|ram~18_combout\ & 
-- !\rbuff|mac|idxDecider|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	datab => \rbuff|memory|ram~26_combout\,
	datac => \rbuff|memory|ram~18_combout\,
	datad => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	combout => \rbuff|memory|ram~42_combout\);

-- Location: LCCOMB_X45_Y36_N16
\rbuff|memory|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~43_combout\ = (\rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\rbuff|memory|ram~42_combout\ & ((\rbuff|memory|ram~30_combout\))) # (!\rbuff|memory|ram~42_combout\ & (\rbuff|memory|ram~22_combout\)))) # (!\rbuff|mac|idxDecider|Y[0]~0_combout\ 
-- & (((\rbuff|memory|ram~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|memory|ram~22_combout\,
	datab => \rbuff|memory|ram~30_combout\,
	datac => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \rbuff|memory|ram~42_combout\,
	combout => \rbuff|memory|ram~43_combout\);

-- Location: LCCOMB_X45_Y37_N20
\rbuff|memory|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~14_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\rbuff|memory|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff2|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \rbuff|memory|ram~14_combout\,
	combout => \rbuff|memory|ram~14_combout\);

-- Location: LCCOMB_X46_Y35_N30
\rbuff|memory|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~10_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\rbuff|memory|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kd|scan|count|reg|ff2|Q~q\,
	datac => \rbuff|memory|ram~10_combout\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \rbuff|memory|ram~10_combout\);

-- Location: LCCOMB_X45_Y37_N30
\rbuff|memory|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~2_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & ((\kd|scan|count|reg|ff2|Q~q\))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & (\rbuff|memory|ram~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|memory|ram~2_combout\,
	datac => \kd|scan|count|reg|ff2|Q~q\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \rbuff|memory|ram~2_combout\);

-- Location: LCCOMB_X45_Y37_N16
\rbuff|memory|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~6_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\rbuff|memory|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff2|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \rbuff|memory|ram~6_combout\,
	combout => \rbuff|memory|ram~6_combout\);

-- Location: LCCOMB_X45_Y36_N18
\rbuff|memory|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~44_combout\ = (\rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\rbuff|mac|idxDecider|Y[1]~1_combout\) # ((\rbuff|memory|ram~6_combout\)))) # (!\rbuff|mac|idxDecider|Y[0]~0_combout\ & (!\rbuff|mac|idxDecider|Y[1]~1_combout\ & 
-- (\rbuff|memory|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datab => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	datac => \rbuff|memory|ram~2_combout\,
	datad => \rbuff|memory|ram~6_combout\,
	combout => \rbuff|memory|ram~44_combout\);

-- Location: LCCOMB_X45_Y36_N20
\rbuff|memory|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~45_combout\ = (\rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\rbuff|memory|ram~44_combout\ & (\rbuff|memory|ram~14_combout\)) # (!\rbuff|memory|ram~44_combout\ & ((\rbuff|memory|ram~10_combout\))))) # (!\rbuff|mac|idxDecider|Y[1]~1_combout\ 
-- & (((\rbuff|memory|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	datab => \rbuff|memory|ram~14_combout\,
	datac => \rbuff|memory|ram~10_combout\,
	datad => \rbuff|memory|ram~44_combout\,
	combout => \rbuff|memory|ram~45_combout\);

-- Location: LCCOMB_X45_Y36_N30
\rbuff|memory|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~46_combout\ = (\rbuff|mac|idxDecider|Y[2]~2_combout\ & (\rbuff|memory|ram~43_combout\)) # (!\rbuff|mac|idxDecider|Y[2]~2_combout\ & ((\rbuff|memory|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rbuff|memory|ram~43_combout\,
	datac => \rbuff|mac|idxDecider|Y[2]~2_combout\,
	datad => \rbuff|memory|ram~45_combout\,
	combout => \rbuff|memory|ram~46_combout\);

-- Location: FF_X45_Y36_N31
\obuff|outreg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|memory|ram~46_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \obuff|control|CurrentState.WRITE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obuff|outreg|ff2|Q~q\);

-- Location: LCCOMB_X44_Y37_N8
\rbuff|memory|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~31_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & ((\kd|scan|count|reg|ff3|Q~q\))) # (!GLOBAL(\rtl~11clkctrl_outclk\) & (\rbuff|memory|ram~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rbuff|memory|ram~31_combout\,
	datac => \kd|scan|count|reg|ff3|Q~q\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \rbuff|memory|ram~31_combout\);

-- Location: LCCOMB_X45_Y36_N22
\rbuff|memory|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~27_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\rbuff|memory|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~9clkctrl_outclk\,
	datab => \kd|scan|count|reg|ff3|Q~q\,
	datac => \rbuff|memory|ram~27_combout\,
	combout => \rbuff|memory|ram~27_combout\);

-- Location: LCCOMB_X45_Y36_N0
\rbuff|memory|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~19_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\rbuff|memory|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff3|Q~q\,
	datab => \rbuff|memory|ram~19_combout\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \rbuff|memory|ram~19_combout\);

-- Location: LCCOMB_X45_Y37_N8
\rbuff|memory|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~47_combout\ = (\rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\rbuff|mac|idxDecider|Y[0]~0_combout\) # ((\rbuff|memory|ram~27_combout\)))) # (!\rbuff|mac|idxDecider|Y[1]~1_combout\ & (!\rbuff|mac|idxDecider|Y[0]~0_combout\ & 
-- ((\rbuff|memory|ram~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	datab => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datac => \rbuff|memory|ram~27_combout\,
	datad => \rbuff|memory|ram~19_combout\,
	combout => \rbuff|memory|ram~47_combout\);

-- Location: LCCOMB_X45_Y36_N8
\rbuff|memory|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~23_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\rbuff|memory|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff3|Q~q\,
	datac => \rbuff|memory|ram~23_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \rbuff|memory|ram~23_combout\);

-- Location: LCCOMB_X45_Y37_N14
\rbuff|memory|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~48_combout\ = (\rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\rbuff|memory|ram~47_combout\ & (\rbuff|memory|ram~31_combout\)) # (!\rbuff|memory|ram~47_combout\ & ((\rbuff|memory|ram~23_combout\))))) # (!\rbuff|mac|idxDecider|Y[0]~0_combout\ 
-- & (((\rbuff|memory|ram~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|memory|ram~31_combout\,
	datab => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datac => \rbuff|memory|ram~47_combout\,
	datad => \rbuff|memory|ram~23_combout\,
	combout => \rbuff|memory|ram~48_combout\);

-- Location: LCCOMB_X45_Y37_N18
\rbuff|memory|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~15_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\rbuff|memory|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff3|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \rbuff|memory|ram~15_combout\,
	combout => \rbuff|memory|ram~15_combout\);

-- Location: LCCOMB_X45_Y37_N24
\rbuff|memory|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~3_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & ((\kd|scan|count|reg|ff3|Q~q\))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & (\rbuff|memory|ram~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rbuff|memory|ram~3_combout\,
	datac => \kd|scan|count|reg|ff3|Q~q\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \rbuff|memory|ram~3_combout\);

-- Location: LCCOMB_X45_Y37_N10
\rbuff|memory|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~7_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\rbuff|memory|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kd|scan|count|reg|ff3|Q~q\,
	datab => \rtl~13clkctrl_outclk\,
	datad => \rbuff|memory|ram~7_combout\,
	combout => \rbuff|memory|ram~7_combout\);

-- Location: LCCOMB_X45_Y37_N4
\rbuff|memory|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~49_combout\ = (\rbuff|mac|idxDecider|Y[1]~1_combout\ & (((\rbuff|mac|idxDecider|Y[0]~0_combout\)))) # (!\rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\rbuff|memory|ram~7_combout\))) # 
-- (!\rbuff|mac|idxDecider|Y[0]~0_combout\ & (\rbuff|memory|ram~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	datab => \rbuff|memory|ram~3_combout\,
	datac => \rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \rbuff|memory|ram~7_combout\,
	combout => \rbuff|memory|ram~49_combout\);

-- Location: LCCOMB_X46_Y35_N8
\rbuff|memory|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~11_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & ((\kd|scan|count|reg|ff3|Q~q\))) # (!GLOBAL(\rtl~12clkctrl_outclk\) & (\rbuff|memory|ram~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~12clkctrl_outclk\,
	datac => \rbuff|memory|ram~11_combout\,
	datad => \kd|scan|count|reg|ff3|Q~q\,
	combout => \rbuff|memory|ram~11_combout\);

-- Location: LCCOMB_X45_Y37_N26
\rbuff|memory|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~50_combout\ = (\rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\rbuff|memory|ram~49_combout\ & (\rbuff|memory|ram~15_combout\)) # (!\rbuff|memory|ram~49_combout\ & ((\rbuff|memory|ram~11_combout\))))) # (!\rbuff|mac|idxDecider|Y[1]~1_combout\ 
-- & (((\rbuff|memory|ram~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rbuff|mac|idxDecider|Y[1]~1_combout\,
	datab => \rbuff|memory|ram~15_combout\,
	datac => \rbuff|memory|ram~49_combout\,
	datad => \rbuff|memory|ram~11_combout\,
	combout => \rbuff|memory|ram~50_combout\);

-- Location: LCCOMB_X45_Y37_N22
\rbuff|memory|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rbuff|memory|ram~51_combout\ = (\rbuff|mac|idxDecider|Y[2]~2_combout\ & (\rbuff|memory|ram~48_combout\)) # (!\rbuff|mac|idxDecider|Y[2]~2_combout\ & ((\rbuff|memory|ram~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rbuff|mac|idxDecider|Y[2]~2_combout\,
	datac => \rbuff|memory|ram~48_combout\,
	datad => \rbuff|memory|ram~50_combout\,
	combout => \rbuff|memory|ram~51_combout\);

-- Location: FF_X45_Y37_N23
\obuff|outreg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rbuff|memory|ram~51_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \obuff|control|CurrentState.WRITE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obuff|outreg|ff3|Q~q\);

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

ww_Dval <= \Dval~output_o\;

ww_O(0) <= \O[0]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;
END structure;


