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
constant MCLK_PERIOD : time := 2 ns;

signal Q_tb : std_logic_vector(3 downto 0);
signal TC_tb : std_logic;

begin

--Unit Under Test
uut :  Terminal_Count port map(
Q => Q_tb,
TC => TC_tb);

-- 12 ns
stimulus: process 
begin 

Q_tb(0) <= '0';
Q_tb(1) <= '0';
Q_tb(2) <= '0';
Q_tb(3) <= '0';
wait for MCLK_PERIOD;

Q_tb(0) <= '1';
Q_tb(1) <= '1';
Q_tb(2) <= '1';
Q_tb(3) <= '1';
wait for MCLK_PERIOD;

Q_tb(0) <= '0';
Q_tb(3) <= '0';
wait for MCLK_PERIOD;

Q_tb(0) <= '1';
Q_tb(1) <= '0';
Q_tb(2) <= '0';
Q_tb(3) <= '1';
wait for MCLK_PERIOD;

Q_tb(2) <= '1';
Q_tb(3) <= '0';
wait for MCLK_PERIOD;

Q_tb(0) <= '0';
Q_tb(1) <= '1';
Q_tb(2) <= '0';
Q_tb(3) <= '1';
wait for MCLK_PERIOD;
wait;
end process;
end;