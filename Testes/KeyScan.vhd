library ieee;
use ieee.std_logic_1164.all;

entity KeyScan is
port(
KScan, I0, I1, I2, I3, CLK, Reset: in std_logic;
Kpress, O0, O1, O2: out std_logic;
K: out std_logic_vector(3 downto 0));
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
S1, S0: in std_logic;
O0, O1, O2: out std_logic);
end component;

component MUX4x1
port(I0, I1, I2, I3: in std_logic;
S1, S0: in std_logic;
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
CLK => CLK,
Q(3) => lab,
Q(2) => info,
Q(1) => e,
Q(0) => comp);

dec: Decoder port map(
S1 => lab,
S0 => info,
O2 => eu,
O1 => nao,
O0 => sou);

mux: MUX4x1 port map(
S1 => e,
S0 => comp,
I0 => I0,
I1 => I1,
I2 => I2,
I3 => I3,
Y => positivo);

O2 <= not eu;
O1 <= not nao;
O0 <= not sou;
Kpress <= not positivo;

K(3) <= lab;
K(2) <= info;
K(1) <= e;
K(0) <= comp;

end arc_Keyscan;