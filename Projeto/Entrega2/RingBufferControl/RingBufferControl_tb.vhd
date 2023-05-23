library ieee;
use ieee.std_logic_1164.all;

entity RingBufferControl_tb is
end RingBufferControl_tb;

architecture behavioral of RingBufferControl_tb is
component RingBufferControl is
port(
DAV, CTS, full, empty, Reset, CLK : in std_logic;
Wr, selPG, Wreg, DAC, incPut, incGet : out std_logic);
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal DAV_tb, CTS_tb, full_tb, empty_tb, Reset_tb, CLK_tb : std_logic;
signal Wr_tb, selPG_tb, Wreg_tb, DAC_tb, incPut_tb, incGet_tb : std_logic;

-- 30 ns
begin

uut : RingBufferControl port map(
DAV => DAV_tb,
CTS => CTS_tb,
full => full_tb,
empty => empty_tb,
Reset => Reset_tb,
CLK => CLK_tb,
Wr => Wr_tb,
selPG => selPG_tb,
Wreg => Wreg_tb,
DAC => DAC_tb,
incPut => incPut_tb,
incGet => incGet_tb);

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
CTS_tb <= '0';
full_tb <= '0';
empty_tb <= '1';
DAV_tb <= '0';
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

DAV_tb <= '1';
wait for MCLK_PERIOD * 5;

DAV_tb <= '0';
empty_tb <= '0';
wait for MCLK_PERIOD;

DAV_tb <= '1';
full_tb <= '1';
wait for MCLK_PERIOD;

CTS_tb <= '1';
wait for MCLK_PERIOD * 3;

CTS_tb <= '0';
full_tb <= '0';
empty_tb <= '1';
wait for MCLK_PERIOD * 2;

DAV_tb <= '0';
CTS_tb <= '1';
wait for MCLK_PERIOD;
wait;
end process;
end;