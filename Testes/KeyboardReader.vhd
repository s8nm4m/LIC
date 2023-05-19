library ieee;
use ieee.std_logic_1164.all;

entity KeyboardReader is
port(
ACK, Reset, CLK : in std_logic;
I : in std_logic_vector(3 downto 0);
Dval : out std_logic;
O : out std_logic_vector(2 downto 0);
D : out std_logic_vector(3 downto 0));
end KeyboardReader;

architecture kr of KeyboardReader is
component KeyDecode
port(
Kack , CLK, Reset: in std_logic;
I : in std_logic_vector(3 downto 0);
Kval : out std_logic;
O : out std_logic_vector(2 downto 0);
K : out std_logic_vector(3 downto 0));
end component;

component RingBuffer
port(
DAV, CTS, CLK, Reset : in std_logic;
D : in std_logic_vector(3 downto 0);
Wreg, DAC : out std_logic;
Q : out std_logic_vector(3 downto 0));
end component;

component OutputBuffer
port(
Load, ACK, CLK, Reset : in std_logic;
D : in std_logic_vector(3 downto 0);
OBfree, Dval : out std_logic;
Q : out std_logic_vector(3 downto 0));
end component;

signal kv, free, l, ka: std_logic;
signal kdrb, rbob : std_logic_vector(3 downto 0);

begin

kd: KeyDecode port map(
Kack => ka,
CLK => CLK,
Reset => Reset,
I => I,
Kval => kv,
O => O,
K => kdrb);

rbuff : RingBuffer port map(
DAV => kv, 
CTS => free, 
CLK => CLK, 
Reset => Reset,
D => kdrb,
Wreg => l, 
DAC => ka,
Q => rbob);

obuff : OutputBuffer port map(
Load => l, 
ACK => ACK, 
CLK => CLK, 
Reset => Reset,
D => rbob,
OBfree => free, 
Dval => Dval,
Q => D);
end kr;
