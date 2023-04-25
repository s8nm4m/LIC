LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity Registry_tb is 
end Registry_tb;

architecture Registry_tb is

component Registry is 
port(
D:in std_logic_vector(3 downto 0);
CLK, E: in std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD 	:= MCLK_PERIOD / 2

signal D_tb : in std_logic_vector(3 downto 0);
signal CLK_tb, E_tb : in std_logic;
signal Q_tb : out std_logic_vector(3 downto 0);

begin

--Unit Under Test
uut :  Registry port map(
D => D_tb,
CLK => CLK_tb,
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