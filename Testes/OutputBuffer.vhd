library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer is 
port(
Load, ACK, CLK, Reset : in std_logic;
D : in std_logic_vector(3 downto 0);
OBfree, Dval : out std_logic;
Q : out std_logic_vector(3 downto 0));
end OutputBuffer;

architecture arc of OutputBuffer is
component BufferControl
port(
CLK, Reset, Load, ACK : in std_logic;
Wreg, OBfree, Dval : out std_logic);
end component;

component OutputRegister
port(
CE, CLK, Reset : in std_logic;
D : in std_logic_vector(3 downto 0);
Q : out std_logic_vector(3 downto 0));
end component;

signal w : std_logic;

begin

control : BufferControl port map(
CLK => CLK,
Reset => Reset,
Load => Load,
ACK => ACK,
Wreg => w,
OBfree => OBfree,
Dval => Dval);

outreg : OutputRegister port map(
CE => w,
CLK => CLK,
Reset => Reset,
D => D,
Q => Q);
end arc;