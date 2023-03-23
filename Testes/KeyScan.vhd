library ieee;
use ieee.std_logic_1164.all;

entity KeyScan is
port(
KScan, CLK, Reset: in std_logic;
I : in std_logic_vector(3 downto 0);
Kpress : out std_logic;
O : out std_logic_vector(2 downto 0);
K : out std_logic_vector(3 downto 0));
end KeyScan;

architecture arc_Keyscan of KeyScan is

component Counter
port(
PL, CE, CLK: in std_logic;
Data_in: in std_logic_vector(3 downto 0);
TC: out std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

component Decoder
port(
S: in std_logic_vector(1 downto 0);
O: out std_logic_vector(2 downto 0));
end component;

component MUX4x1
port(
S: in std_logic_vector(1 downto 0);
I: in std_logic_vector(3 downto 0);
Y: out std_logic);
end component;

component CLKDIV
generic(div: natural := 50000000);
port ( clk_in: in std_logic;
		 clk_out: out std_logic);
end component;

signal kp, clock : std_logic;
signal col : std_logic_vector(2 downto 0);
signal qcount : std_logic_vector(3 downto 0);

begin

clockm: CLKDIV generic map (50000000) port map(
clk_in => CLK,
clk_out => clock);

count: Counter port map(
PL => Reset,
Data_in => "0000",
CE => KScan,
CLK => CLK,
Q => qcount);

dec: Decoder port map(
S(1) => qcount(3),
S(0) => qcount(2),
O => col);

mux: MUX4x1 port map(
S(1) => qcount(1),
S(0) => qcount(0),
I => I,
Y => kp);

O <= col;

Kpress <= not kp;

K <= qcount;

end arc_Keyscan;