library ieee;
use ieee.std_logic_1164.all;

entity SLCDC is
port(
SS, SCLK, CLK, SDX, Reset : in std_logic;
Wrl : out std_logic;
Dout : out std_logic_vector(4 downto 0)); 
end SLCDC;

architecture arc_slcdc of SLCDC is
component SerialReceiver
port(
SS, SCLK, CLK, SDX, accept, Reset : in std_logic;
DXval : out std_logic;
D : out std_logic_vector(4 downto 0));
end component;

component LCDDispatcher
port(
Dval, CLK : in std_logic;
Din : in std_logic_vector(4 downto 0);
WRL, done : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end component;

signal state, v : std_logic;
signal d : std_logic_vector(4 downto 0);

begin

sr : SerialReceiver port map(
CLK => CLK,
Reset => Reset,
SS => SS,
SCLK => SCLK,
SDX => SDX,
accept => state,
DXval => v,
D => d);

lcdd : LCDDispatcher port map(
CLK => CLK,
Dval => v,
Din => d,
WRL => Wrl,
done => state,
Dout => Dout);

end arc_slcdc;