library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer_tb is 
end OutputBuffer_tb;

architecture arc of OutputBuffer_tb is
component OutputBuffer is
port(
Load, ACK, CLK, Reset : in std_logic;
D : in std_logic_vector(3 downto 0);
OBfree, Dval : out std_logic;
Q : out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal Load_tb, ACK_tb, CLK_tb, Reset_tb, OBfree_tb, Dval_tb : std_logic;
signal D_tb, Q_tb : std_logic_vector(3 downto 0);

--  13 ns
begin

uut : OutputBuffer port map(
Load => Load_tb,
ACK => ACK_tb,
CLK => CLK_tb,
Reset => Reset_tb,
OBfree => OBfree_tb,
Dval => Dval_tb,
D => D_tb,
Q => Q_tb);

CLK_gen : process
begin
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_HALF_PERIOD;
end process;

stimulus: process 
begin 

Reset_tb <= '1';
ACK_tb <= '0';
D_tb <= "1010";
Load_tb <= '0';
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

Load_tb <= '1';
wait for MCLK_PERIOD;

Load_tb <= '0';
wait for MCLK_PERIOD;

ACK_tb <= '1';
wait for MCLK_PERIOD;

ACK_tb <= '0';
wait for MCLK_PERIOD;

wait;
end process;
end;