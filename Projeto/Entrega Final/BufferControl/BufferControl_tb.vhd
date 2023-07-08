library ieee;
use ieee.std_logic_1164.all;

entity BufferControl_tb is
end BufferControl_tb;

architecture arc of BufferControl_tb is
component BufferControl is 
port(
CLK, Reset, Load, ACK : in std_logic;
Wreg, OBfree, Dval : out std_logic);
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal CLK_tb, Reset_tb, Load_tb, ACK_tb, Wreg_tb, OBfree_tb, Dval_tb : std_logic;

-- 13 ns
begin

uut : BufferControl port map(
CLK => CLK_tb,
Reset => Reset_tb,
Load => Load_tb,
ACK => ACK_tb,
Wreg => Wreg_tb,
OBfree => OBfree_tb,
Dval => Dval_tb);

CLK_gen : process
begin
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_HALF_PERIOD;
end process;

stimulus : process
begin

Reset_tb <= '1';
Load_tb <= '0';
ACK_tb <= '0';
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