LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity MUX4x1_tb is 
end MUX4x1_tb;

architecture behavioral of MUX4x1_tb is

component MUX4x1 is 
port(
I: in std_logic_vector(3 downto 0);
S: in std_logic_vector(1 downto 0);
Y: out std_logic);
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD 	:= MCLK_PERIOD / 2

signal I: in std_logic_vector(3 downto 0);
signal S: in std_logic_vector(1 downto 0);
signal Y: out std_logic;

begin

--Unit Under Test
uut :  MUX2x1 port map(
I => I_tb,
S => S_tb,
Y => Y_tb);

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