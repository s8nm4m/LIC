LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity KeyboardReader_tb is 
end KeyboardReader_tb;

architecture behavioral of KeyboardReader_tb is

component KeyboardReader is 
port(
Kack, Reset, CLK : in std_logic;
I : in std_logic_vector(3 downto 0);
Kval : out std_logic;
O : out std_logic_vector(2 downto 0);
K : out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal Kack_tb, Reset_tb, CLK_tb, Kval_tb : std_logic;
signal I_tb, K_tb : std_logic_vector(3 downto 0);
signal O_tb : std_logic_vector(2 downto 0);

-- 11 ns
begin

--Unit Under Test
uut :  KeyboardReader port map(
Kack => Kack_tb,
Reset => Reset_tb,
CLK => CLK_tb,
I => I_tb,
Kval => Kval_tb,
O => O_tb,
K => K_tb);

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
Kack_tb <= '0';
I_tb <= "0010";
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

Kack_tb <= '1';
wait for MCLK_PERIOD;

Kack_tb <= '0';
I_tb <= "1011";
wait for MCLK_PERIOD;

Kack_tb <= '1';
wait for MCLK_PERIOD;

Kack_tb <= '0';
wait for MCLK_PERIOD;
wait;
end process;
end;