library ieee;
use ieee.std_logic_1164.all;

entity SDC_tb is
end SDC_tb;

architecture arc of SDC_tb is
component SDC
port(
SS, SDX, SCLK, Reset, Sclose, Sopen, Psensor, CLK : in std_logic;
OnOff, busy : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

signal SS_tb, SDX_tb, SCLK_tb, Sclose_tb, Sopen_tb, Psensor_tb, CLK_tb, OnOff_tb, busy_tb, Reset_tb : std_logic;
signal Dout_tb : std_logic_vector(4 downto 0);

-- 80 ns
begin

uut: SDC port map(
SS => SS_tb, 
SDX => SDX_tb, 
SCLK => SCLK_tb,  
Reset => Reset_tb,
Sclose => Sclose_tb, 
Sopen => Sopen_tb, 
Psensor => Psensor_tb, 
CLK => CLK_tb,
OnOff => OnOff_tb, 
busy => busy_tb,
Dout => Dout_tb);

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
Reset_tb <= '1';
Sclose_tb <= '0';
Sopen_tb <= '0';
Psensor_tb <= '0';
SDX_tb <= '0';
SCLK_tb <= '0';
wait for MCLK_PERIOD*2;

Reset_tb <= '0';
wait for MCLK_PERIOD*2;

SS_tb <= '0';
wait for MCLK_PERIOD*2;

wait for MCLK_PERIOD*2;
SCLK_tb <= '0';
SDX_tb <= '1';
wait for MCLK_PERIOD*2;
SCLK_tb <= '1';
wait for MCLK_PERIOD*2;

wait for MCLK_PERIOD*2;
SCLK_tb <= '0';
SDX_tb <= '0';
wait for MCLK_PERIOD*2;
SCLK_tb <= '1';
wait for MCLK_PERIOD*2;

wait for MCLK_PERIOD*2;
SCLK_tb <= '0';
SDX_tb <= '1';
wait for MCLK_PERIOD*2;
SCLK_tb <= '1';
wait for MCLK_PERIOD*2;

wait for MCLK_PERIOD*2;
SCLK_tb <= '0';
SDX_tb <= '1';
wait for MCLK_PERIOD*2;
SCLK_tb <= '1';
wait for MCLK_PERIOD*2;

wait for MCLK_PERIOD*2;
SCLK_tb <= '0';
SDX_tb <= '1';
wait for MCLK_PERIOD*2;
SCLK_tb <= '1';
wait for MCLK_PERIOD*2;

SS_tb <= '1';
Sopen_tb <= '1';
wait for MCLK_PERIOD*10;


wait for MCLK_PERIOD*2;

Sopen_tb <= '0';
wait for MCLK_PERIOD*2;

SS_tb <= '0';
wait for MCLK_PERIOD*2;

wait for MCLK_PERIOD*2;
SCLK_tb <= '0';
SDX_tb <= '0';
wait for MCLK_PERIOD*2;
SCLK_tb <= '1';
wait for MCLK_PERIOD*2;

wait for MCLK_PERIOD*2;
SCLK_tb <= '0';
SDX_tb <= '0';
wait for MCLK_PERIOD*2;
SCLK_tb <= '1';
wait for MCLK_PERIOD*2;

wait for MCLK_PERIOD*2;
SCLK_tb <= '0';
SDX_tb <= '0';
wait for MCLK_PERIOD*2;
SCLK_tb <= '1';
wait for MCLK_PERIOD*2;

wait for MCLK_PERIOD*2;
SCLK_tb <= '0';
SDX_tb <= '0';
wait for MCLK_PERIOD*2;
SCLK_tb <= '1';
wait for MCLK_PERIOD*2;

wait for MCLK_PERIOD*2;
SCLK_tb <= '0';
SDX_tb <= '0';
wait for MCLK_PERIOD*2;
SCLK_tb <= '1';
wait for MCLK_PERIOD*2;

SS_tb <= '1';
wait for MCLK_PERIOD*3;

Psensor_tb <= '1';
wait for MCLK_PERIOD*2;

Psensor_tb <= '0';
wait for MCLK_PERIOD*2;

Sopen_tb <= '1';
wait for MCLK_PERIOD*3;
wait;
end process;
end;