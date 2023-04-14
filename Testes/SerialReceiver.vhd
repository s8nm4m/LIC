library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver is
port(
SS, SCLK, SDX, accept : in std_logic;
DXval : out std_logic;
D : out std_logic_vector(4 downto 0));
end SerialReceiver;

architecture arc_sr of SerialReceiver is
component SerialControl 
port(
enRx, accept, eq5 : in std_logic;
clr, wr, DXval, cenable : out std_logic);
end component;

component ShiftRegister
port(
data, clk, enable : in std_logic;
D : out std_logic_vector(4 downto 0));
end component;

component Counter
port(
PL, CE, CLK: in std_logic;
Data_in: in std_logic_vector(3 downto 0);
TC: out std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

signal data : std_logic_vector(3 downto 0);
signal equal, clear, enwr, cenable : std_logic;

begin

c : Counter port map(
PL => clear,
CE => cenable,
CLK => SCLK,
Data_in => "0000",
Q => data);

equal <= '1' when (data(2) = '1' and data(1) = '0' and data(0) = '1') else '0';

sc : SerialControl port map(
enRx => SS,
accept => accept,
eq5 => equal,
clr => clear,
cenable => cenable,
wr => enwr,
DXval => DXval);

sr : ShiftRegister port map(
data => SDX, 
clk => SCLK, 
enable => enwr,
D => D);

end arc_sr;