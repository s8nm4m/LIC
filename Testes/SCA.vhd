library ieee;
use ieee.std_logic_1164.all;

entity SCA is
port(
Reset, CLK : in std_logic;
LCD_RS, LCD_EN : out std_logic;
O : out std_logic_vector(2 downto 0);
I : in std_logic_vector(3 downto 0);
LCD_data : out std_logic_vector(3 downto 0));
end SCA;

architecture arc_sca of SCA is
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

signal kv, ka, rs, en : std_logic;
signal kapa, lcd : std_logic_vector(3 downto 0);

begin

kr: KeyboardReader port map(
I => I,
O => O,
Kval => kv,
Kack => ka,
K => kapa,
Reset => Reset,
CLK => CLK);

usb: UsbPort port map(
inputPort(0) => kv,
inputPort(1) => kapa(0),
inputPort(2) => kapa(1),
inputPort(3) => kapa(2),
inputPort(4) => kapa(3),
--inputPort() =>,
--inputPort() =>,
--inputPort() =>,
outputPort(0) => ka,
outputPort() =>en,
outputPort() =>rs,
outputPort() =>lcd(0),
outputPort() =>lcd(1),
outputPort() =>lcd(2),
outputPort() =>lcd(3)--,
--outputPort() =>
);

LCD_data <= lcd;
LCD_EN <= en;
LCD_RS <= rs;

end arc_sca;
 