LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity MUX2x1_tb is 
end MUX2x1_tb;

architecture behavioral of MUX2x1_tb is

component MUX2x1 is 
port(
A, B: in std_logic_vector(3 downto 0);
S: in std_logic;
Y: out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD 	:= MCLK_PERIOD / 2

signal A_tb, B_tb: in std_logic_vector(3 downto 0);
signal S_tb: in std_logic;
signal Y_tb: out std_logic_vector(3 downto 0);

begin

--Unit Under Test
uut :  MUX2x1 port map(
A => A_tb,
B => B_tb,
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