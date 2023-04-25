LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity adder_tb is 
end adder_tb;

architecture adder_tb is

component adder is 
port(
A, B :in std_logic_vector(3 downto 0);
Ci: in std_logic;
Co: out std_logic;
S: out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD 	:= MCLK_PERIOD / 2

signal A_tb, B_tb :in std_logic_vector(3 downto 0);
signal Ci_tb: in std_logic;
signal Co_tb: out std_logic;
signal S_tb: out std_logic_vector(3 downto 0));

begin

--Unit Under Test
uut :  adder port map(
A => A_tb,
B => B_tb,
Ci => Ci_tb,
Co => Co_tb,
S => S_tb);

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