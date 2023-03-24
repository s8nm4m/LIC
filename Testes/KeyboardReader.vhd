library ieee;
use ieee.std_logid_1164.all;

entity KeyboardReader is
port(
Kack, Reset, CLK : in std_logic;
I : in std_logic_vector(3 downto 0);
Kval : out std_logic;
O : out std_logic_vector(2 downto 0);
K : out std_logic_vector(3 downto 0));
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

begin

kd: KeyDecode port map(
Kack => Kack,
CLK => CLK,
Reset => Reset,
I => I,
Kval => Kval,
O => O,
K => K);

end kr;
