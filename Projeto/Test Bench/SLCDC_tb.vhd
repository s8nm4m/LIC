library ieee;
use ieee.std_logic_1164.all;

entity SLCDC_tb is
end SLCDC_tb;

architecture arc of SLCDC_tb is
component SLCDC
port(
SS, SCLK, CLK, SDX, Reset : in std_logic;
Wrl : out std_logic;
Dout : out std_logic_vector(4 downto 0)); 
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

signal SS_tb, SCLK_tb, CLK_tb, SDX_tb, Reset_tb, Wrl_tb : std_logic;
signal Dout_tb : std_logic_vector(4 downto 0);

begin

slcdctb: SLCDC port map(
SS => SS_tb,
SCLK => SCLK_tb,
CLK => CLK_tb,
SDX => SDX_tb,
Reset => Reset_tb,
Wrl => Wrl_tb,
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
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

SS_tb <= '0';
wait for MCLK_PERIOD;

wait for 0.5 ns;
SCLK_tb <= '0';
SDX_tb <= '1';
wait for 0.5 ns;
SCLK_tb <= '1';
wait for MCLK_PERIOD;

wait for 0.5 ns;
SCLK_tb <= '0';
SDX_tb <= '1';
wait for 0.5 ns;
SCLK_tb <= '1';
wait for MCLK_PERIOD;

wait for 0.5 ns;
SCLK_tb <= '0';
SDX_tb <= '0';
wait for 0.5 ns;
SCLK_tb <= '1';
wait for MCLK_PERIOD;

wait for 0.5 ns;
SCLK_tb <= '0';
SDX_tb <= '0';
wait for 0.5 ns;
SCLK_tb <= '1';
wait for MCLK_PERIOD;

wait for 0.5 ns;
SCLK_tb <= '0';
SDX_tb <= '1';
wait for 0.5 ns;
SCLK_tb <= '1';
wait for MCLK_PERIOD;

SS_tb <= '1';
wait for MCLK_PERIOD;
wait;
end process;
end;