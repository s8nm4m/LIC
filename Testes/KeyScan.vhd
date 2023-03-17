library ieee;
use ieee.std_logic_1164.all;

entity KeyScan is
port(
KScan, CLK, Reset: in std_logic;
I : in std_logic_vector(3 downto 0);
Kpress : out std_logic;
K : out std_logic_vector(3 downto 0);
O : out std_logic_vector(2 downto 0));
end KeyScan;

architecture arc_Keyscan of KeyScan is
component clkDIV
port ( clk_in: in std_logic;
		 clk_out: out std_logic);
end component;

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
port(I: in std_logic_vector(3 downto 0);
S: in std_logic_vector(1 downto 0);
Y: out std_logic);
end component;

signal lab, info, e, comp, cenas, eu, nao, sou, positivo : std_logic;

begin

clock: clkDIV port map(
clk_in => CLK,
clk_out => cenas);

count: Counter port map(
PL => Reset,
Data_in => "0000",
CE => KScan,
CLK => cenas,
Q(3) => lab,
Q(2) => info,
Q(1) => e,
Q(0) => comp);

dec: Decoder port map(
S(1) => lab,
S(0) => info,
O(2) => eu,
O(1) => nao, 
O(0) => sou);

mux: MUX4x1 port map(
S(1) => e,
S(0) => comp,
I => I,
Y => positivo);

O <= not eu & not nao & not sou;

Kpress <= not positivo;

K(3) <= lab;
K(2) <= info;
K(1) <= e;
K(0) <= comp;

end arc_Keyscan;