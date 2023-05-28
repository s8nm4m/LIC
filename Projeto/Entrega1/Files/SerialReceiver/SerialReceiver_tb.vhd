library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver_tb is
end SerialReceiver_tb;

architecture arc of SerialReceiver_tb is
component SerialReceiver
port(
SS, SCLK, CLK, SDX, accept, Reset : in std_logic;
DXval : out std_logic;
D : out std_logic_vector(4 downto 0));
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

signal SS_tb, SCLK_tb, CLK_tb, SDX_tb, accept_tb, Reset_tb, DXval_tb : std_logic;
signal D_tb : std_logic_vector(4 downto 0); 

-- 48 ns
begin

srtb: SerialReceiver port map(
SS => SS_tb,
SCLK => SCLK_tb,
CLK => CLK_tb,
SDX => SDX_tb,
accept => accept_tb,
Reset => Reset_tb,
DXval => DXval_tb,
D => D_tb);

clk_gen : process
begin 
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_HALF_PERIOD;
end process;

stimulus: process
begin

SS_tb <= '1';
accept_tb <= '0';
Reset_tb <= '1';
SCLK_tb <= '0';
SDX_tb <= '0';
wait for MCLK_PERIOD *2;

Reset_tb <= '0';
wait for MCLK_PERIOD *2;

SS_tb <= '0';
wait for MCLK_PERIOD *2;
wait for 0.5 ns;
SDX_tb <= '1';
wait for 0.5 ns;
SCLK_tb <= '1';
wait for MCLK_PERIOD *2;

wait for 0.5 ns;
SCLK_tb <= '0';
SDX_tb <= '0';
wait for 0.5 ns;
SCLK_tb <= '1';
wait for MCLK_PERIOD *2;

wait for 0.5 ns;
SCLK_tb <= '0';
SDX_tb <= '1';
wait for 0.5 ns;
SCLK_tb <= '1';
wait for MCLK_PERIOD *2;

wait for 0.5 ns;
SCLK_tb <= '0';
SDX_tb <= '0';
wait for 0.5 ns;
SCLK_tb <= '1';
wait for MCLK_PERIOD *2;

wait for 0.5 ns;
SCLK_tb <= '0';
SDX_tb <= '1';
wait for 0.5 ns;
SCLK_tb <= '1';
wait for MCLK_PERIOD *2;

SS_tb <= '1';
wait for MCLK_PERIOD *2;

accept_tb <= '1';
wait for MCLK_PERIOD *2;

accept_tb <= '0';
wait for MCLK_PERIOD *2;
wait;
end process;
end;