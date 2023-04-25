LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity Terminal_Count_tb is 
end Terminal_Count_tb;

architecture behavioral of Terminal_Count_tb is

component Terminal_Count is 
port(
Q : in std_logic_vector(3 downto 0);
TC: out std_logic);
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD 	:= MCLK_PERIOD / 2

signal Q_tb : in std_logic_vector(3 downto 0);
signal TC_tb : out std_logic;

begin

--Unit Under Test
uut :  Terminal_Count port map(
Q => Q_tb,
TC => TC_tb);

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