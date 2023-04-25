LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity FFD_tb is 
end FFD_tb;

architecture FFD_tb is

component FFD is 
port(
CLK : in std_logic;
RESET : in std_logic;
SET : in std_logic;
D : IN std_logic;
EN : IN std_logic;
Q : out std_logic);
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD 	:= MCLK_PERIOD / 2

signal CLK_tb : in std_logic;
signal RESET_tb : in std_logic;
signal SET_tb : in std_logic;
signal D_tb : IN std_logic;
signal EN_tb : IN std_logic;
signal Q_tb : out std_logic;

begin

--Unit Under Test
uut :  FFD port map(
CLK => CLK_tb,
RESET => RESET_tb,
SET => SET_tb,
D => D_tb,
EN => EN_tb,
Q => Q_Tb);

CLK_gen : process
begin
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_PERIOD;
end process;

stimulus: process 
begin 

--reset
wait;
end process;