library ieee;
use ieee.std_logic_1164.all;

entity SLCDC_Wrapper is
port(
SS, SCLK, CLK, SDX, accept, Reset : in std_logic;
Wrl : out std_logic;
Dout : out std_logic_vector(4 downto 0)); 
end SLCDC_Wrapper;

architecture arc_slcdc of SLCDC_Wrapper is
component SerialReceiver
port(
SS, SCLK, CLK, SDX, accept, Reset : in std_logic;
DXval : out std_logic;
D : out std_logic_vector(4 downto 0));
end component;

component UsbPort
port(
inputPort:  in std_logic_vector(7 downto 0);
outputPort :  out std_logic_vector(7 downto 0));
end component;

component LCDDispatcher
port(
Dval, Reset, CLK : in std_logic;
Din : in std_logic_vector(4 downto 0);
Wrl, done : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end component;

signal ssw, sclkw, sdxw, dxvalw, donew: std_logic;
signal dw: std_logic_vector(4 downto 0);

begin

lcdd: LCDDispatcher port map(
Dval => dxvalw, 
Reset => Reset, 
CLK => CLK,
Din => dw,
Wrl => Wrl, 
done => donew,
Dout => Dout
);

usbp: UsbPort port map(
inputPort(0) => '0',
--inputPort(1) => ,
--inputPort(2) => ,
--inputPort(3) => ,
--inputPort(4) => ,
--inputPort(5) => ,
--inputPort(6) => ,
--inputPort(7) => ,
--outputPort(0) => ,
outputPort(1) => ssw,
outputPort(2) => sdxw,
outputPort(3) => sclkw--,
--outputPort(4) => ,
--outputPort(5) => ,
--outputPort(6) => ,
--outputPort(7) => 
);

sr: SerialReceiver port map(
SS => ssw, 
SCLK => sclkw, 
CLK => CLK, 
SDX => sdxw, 
accept => donew, 
Reset => Reset,
DXval => dxvalw,
D => dw
);

end arc_slcdc;