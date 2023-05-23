library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer_tb is
end RingBuffer_tb;

architecture arc of RingBuffer_tb is
component RingBuffer is
port(
DAV, CTS, CLK, Reset : in std_logic;
D : in std_logic_vector(3 downto 0);
Wreg, DAC : out std_logic;
Q : out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal DAV_tb, CTS_tb, CLK_tb, Reset_tb, Wreg_tb, DAC_tb : std_logic;
signal D_tb, Q_tb : std_logic_vector(3 downto 0);

--  ns
begin

uut : RingBuffer port map(
DAV => DAV_tb,
CTS => CTS_tb,
CLK => CLK_tb,
Reset => Reset_tb,
Wreg => Wreg_tb,
DAC => DAC_tb,
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
DAV_tb <= '0';
CTS_tb <= '0';
D_tb <= "0100";
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

DAV_tb <= '1';
wait for MCLK_PERIOD;


wait;
end process;
end;