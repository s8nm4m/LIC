library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver is
port(
SS, SCLK, CLK, SDX, accept, Reset : in std_logic;
DXval, busy : out std_logic;
D : out std_logic_vector(4 downto 0));
end SerialReceiver;

architecture arc_sr of SerialReceiver is
component SerialControl 
port(
Reset, enRx, accept, eq5, CLK : in std_logic;
clr, wr, DXval, cenable, busy : out std_logic);
end component;

component ShiftRegister
port(
data, clk, enable, reset : in std_logic;
D : out std_logic_vector(4 downto 0));
end component;

component Counter
port(
PL, CE, CLK, Reset: in std_logic;
Data_in: in std_logic_vector(3 downto 0);
TC: out std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

signal count : std_logic_vector(3 downto 0);
signal equal, clear, enwr, cenable : std_logic;

begin

c : Counter port map(
Reset => clear,
PL => '0',
CE => cenable,
CLK => SCLK,
Data_in => "0000",
Q => count);

equal <= '1' when (count(2) = '1' and count(1) = '0' and count(0) = '1') else '0';

sc : SerialControl port map(
busy => busy,
Reset => Reset,
CLK => CLK,
enRx => SS,
accept => accept,
eq5 => equal,
clr => clear,
cenable => cenable,
wr => enwr,
DXval => DXval);

sr : ShiftRegister port map(
reset => '0',
data => SDX, 
clk => SCLK, 
enable => enwr,
D => D);

end arc_sr;