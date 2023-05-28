LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity full_adder_tb is 
end full_adder_tb;

architecture arc of full_adder_tb is

component full_add is 
port(
A, B, Cin: in std_logic;
Cout, S : out std_logic);
end component;

--UUT signals
signal A_tb, B_tb, Cin_tb, Cout_tb, S_tb : std_logic;
constant MCLK_PERIOD: time := 2 ns;

-- 6 ns
begin

--Unit Under Test
uut :  full_add port map(
A => A_tb,
B => B_tb,
Cin => Cin_tb,
Cout => Cout_tb,
S => S_tb);

stimulus: process 
begin 

A_tb <= '1';
B_tb <= '0';
Cin_tb <= '1';
wait for MCLK_PERIOD;

A_tb <= '1';
B_tb <= '0';
Cin_tb <= '0';
wait for MCLK_PERIOD;

A_tb <= '1';
B_tb <= '1';
Cin_tb <= '1';
wait for MCLK_PERIOD;
wait;
end process;
end;