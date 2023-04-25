LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity Counter_tb is 
end Counter_tb;

architecture behavioral of Counter_tb is

component Counter is 
port(
PL, CE, CLK: in std_logic;
Data_in: in std_logic_vector(3 downto 0);
TC: out std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD 	:= MCLK_PERIOD / 2

signal PL_tb, CE_tb, CLK_tb: in std_logic;
signal Data_in_tb: in std_logic_vector(3 downto 0);
signal TC_tb: out std_logic;
signal Q_tb: out std_logic_vector(3 downto 0);
end component;

begin

--Unit Under Test
uut :  Counter port map(
PL => PL_tb,
CE => CE_tb,
CLK => CLK_tb,
TC => TC_tb,
Q => Q_tb);

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