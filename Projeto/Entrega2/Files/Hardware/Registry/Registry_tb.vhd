LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity Registry_tb is 
end Registry_tb;

architecture arc of Registry_tb is

component Registry is 
port(
D:in std_logic_vector(3 downto 0);
CLK, E, Reset: in std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal D_tb : std_logic_vector(3 downto 0);
signal CLK_tb, E_tb, Reset_tb : std_logic;
signal Q_tb : std_logic_vector(3 downto 0);

-- 20 ns
begin

--Unit Under Test
uut :  Registry port map(
D => D_tb,
E => E_tb,
Reset => Reset_tb,
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

Reset_tb <= '1';
E_tb <= '0';
D_tb(0) <= '0';
D_tb(1) <= '1';
D_tb(2) <= '0';
D_tb(3) <= '1';
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

E_tb <= '1';
wait for MCLK_PERIOD;

E_tb <= '0';
D_tb(0) <= '1';
D_tb(1) <= '0';
D_tb(2) <= '0';
D_tb(3) <= '1';
wait for MCLK_PERIOD * 4;

E_tb <= '1';
wait for MCLK_PERIOD;
wait;
end process;
end;