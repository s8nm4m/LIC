library ieee;
use ieee.std_logic_1164.all;

entity SCA is
port(
Reset, CLK, Sclose, Sopen, Psensor : in std_logic;
LCD_RS, LCD_EN, OnOff, OC: out std_logic;
O : out std_logic_vector(2 downto 0);
I : in std_logic_vector(3 downto 0);
LCD_data, Door_data : out std_logic_vector(3 downto 0));
end SCA;

architecture arc_sca of SCA is
component FFD
PORT(	CLK : in std_logic;
		RESET : in STD_LOGIC;
		SET : in std_logic;
		D : IN STD_LOGIC;
		EN : IN STD_LOGIC;
		Q : out std_logic
		);
END component;

component KeyboardReader 
port(
Kack, Reset, CLK : in std_logic;
I : in std_logic_vector(3 downto 0);
Kval : out std_logic;
O : out std_logic_vector(2 downto 0);
K : out std_logic_vector(3 downto 0));
end component;

component UsbPort
port(
inputPort:  in std_logic_vector(7 downto 0);
outputPort :  out std_logic_vector(7 downto 0));
end component;

component SLCDC
port(
SS, SCLK, CLK, SDX, Reset : in std_logic;
Wrl : out std_logic;
Dout : out std_logic_vector(4 downto 0)); 
end component;

component SDC
port(
SS, SDX, SCLK, Reset, Sclose, Sopen, Psensor, CLK : in std_logic;
OnOff, busy : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end component;

signal kv, ka, rs, en, sdx, ssdoor, sslcd, sclk, ssdoorw, busy, sslcdw, sclkw : std_logic;
signal kapa : std_logic_vector(3 downto 0);
signal lcd, door : std_logic_vector(4 downto 0);

begin

flcd:FFD port map(
CLK => CLK,
RESET => '0',
SET => '0',
D => sslcd,
EN => '1',
Q => sslcdw);

fdoor:FFD port map(
CLK => CLK,
RESET => '0',
SET => '0',
D => ssdoor,
EN => '1',
Q => ssdoorw);

fsc:FFD port map(
CLK => CLK,
RESET => '0',
SET => '0',
D => sclk,
EN => '1',
Q => sclkw);

serialDoorC: SDC port map(
SS => ssdoorw, 
SDX => sdx, 
SCLK => sclkw, 
Reset => Reset, 
Sclose => Sclose,  
Sopen => Sopen, 
Psensor => Psensor, 
CLK => CLK,
OnOff => OnOff, 
busy => busy,
Dout => door);

kr: KeyboardReader port map(
I => I,
O => O,
Kval => kv,
Kack => ka,
K => kapa,
Reset => Reset,
CLK => CLK);

sl: SLCDC port map(
cLK => CLK,
Reset => Reset,
SS => sslcdw, 
SCLK => sclkw, 
SDX => sdx,
Wrl => en,
Dout => lcd); 

usb: UsbPort port map(
inputPort(0) => kv,
inputPort(1) => kapa(0),
inputPort(2) => kapa(1),
inputPort(3) => kapa(2),
inputPort(4) => kapa(3),
inputPort(5) => busy,
--inputPort(6) =>,
--inputPort(7) =>,
outputPort(0) => ka,
outputPort(1) => sslcd,
outputPort(2) => sdx,
outputPort(3) => sclk,
outputPort(4) => ssdoor--,
--outputPort(5) => lcd(2),
--outputPort(6) => lcd(3)--,
--outputPort(7) =>
);

Door_data <= door(4 downto 1);
OC <= door(0);
LCD_data <= lcd(4 downto 1);
LCD_EN <= en;
LCD_RS <= lcd(0);

end arc_sca;
 