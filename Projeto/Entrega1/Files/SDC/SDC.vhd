library ieee;
use ieee.std_logic_1164.all;

entity SDC is
port(
SS, SDX, SCLK, Reset, Sclose, Sopen, Psensor, CLK : in std_logic;
OnOff, busy : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end SDC;

architecture arc of SDC is 
component SerialReceiver
port(
SS, SCLK, CLK, SDX, accept, Reset : in std_logic;
DXval, busy : out std_logic;
D : out std_logic_vector(4 downto 0));
end component;

component DoorController
port(
Dval, Sclose, Sopen, Psensor, Reset, CLK : in std_logic;
Din : in std_logic_vector(4 downto 0);
OnOff, done : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end component;

signal state, dv : std_logic;
signal data : std_logic_vector(4 downto 0);

begin 
serialR : SerialReceiver port map(
SS => SS, 
SCLK => SCLK, 
CLK => CLK, 
SDX => SDX, 
accept => state, 
Reset => Reset,
DXval => dv, 
busy => busy,
D => data);

doorControl: DoorController port map(
CLK => CLK,
Dval => dv, 
Sclose => Sclose, 
Sopen => Sopen, 
Psensor => Psensor, 
Reset => Reset,
Din => data,
OnOff => OnOff, 
done => state,
Dout => Dout);

end arc;