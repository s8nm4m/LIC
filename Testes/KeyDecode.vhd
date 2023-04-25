library ieee;
use ieee.std_logic_1164.all;

entity KeyDecode is
port(
Kack , CLK, Reset: in std_logic;
I : in std_logic_vector(3 downto 0);
Kval : out std_logic;
O : out std_logic_vector(2 downto 0);
K : out std_logic_vector(3 downto 0));
end KeyDecode;

architecture arc_kd of KeyDecode is
component CLKDIV
port ( clk_in: in std_logic;
		 clk_out: out std_logic);
end component;

component KeyScan
port(
KScan, CLK, Reset: in std_logic;
I : in std_logic_vector(3 downto 0);
Kpress : out std_logic;
O : out std_logic_vector(2 downto 0);
K : out std_logic_vector(3 downto 0));
end component;

component KeyControl
port(
Kpress, Kack, CLK, Reset: in std_logic;
Kval, Kscan: out std_logic);
end component;

signal kp, ks, clockm : std_logic;

begin

clock: clkDIV port map(
clk_in => CLK,
clk_out => clockm);

scan : KeyScan port map(
KScan => ks,
CLK => clockm,
Reset => Reset,
I => I,
Kpress => kp,
O => O,
K => K);

control : KeyControl port map(
Kpress => kp,
Kack => Kack,
CLK => CLK,
Reset => Reset,
Kval => Kval,
KScan => ks);

end arc_kd;

