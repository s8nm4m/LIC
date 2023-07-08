LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity FFD_tb is 
end FFD_tb;

architecture arc of FFD_tb is

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
constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal CLK_tb, RESET_tb, SET_tb, D_tb, EN_tb, Q_tb : std_logic;

-- 12 ns
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

RESET_tb <= '1';
SET_tb <= '0';
D_tb <= '0';
EN_tb <= '0';
wait for MCLK_PERIOD;

RESET_tb <= '0';
wait for MCLK_PERIOD;

SET_tb <= '1';
D_tb <= '0';
EN_tb <= '0';
wait for MCLK_PERIOD;

SET_tb <= '0';
D_tb <= '0';
EN_tb <= '1';
wait for MCLK_PERIOD;

D_tb <= '1';
wait for MCLK_PERIOD;
wait;
end process;
end;