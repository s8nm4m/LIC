library ieee;
use ieee.std_logic_1164.all;

entity MAC is
port(
putget, incPut, incGet, CLK, Reset : in std_logic;
full, empty : out std_logic;
A : out std_logic_vector(2 downto 0));
end MAc;

architecture arc of MAC is
component Counter
port(
PL, CE, CLK, Reset: in std_logic;
Data_in: in std_logic_vector(3 downto 0);
TC: out std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

component Registry
port(
D:in std_logic_vector(3 downto 0);
CLK, E, Reset: in std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

signal put, get : std_logic;
signal dec : std_logic_vector(3 downto 0);
signal dataPut, dataGet, size : std_logic_vector(2 downto 0);

begin

put <= putget;
get <= not putget;
--dec <= '0' & 

decrementGet: Counter port map(
PL => '1', 
CE => get, 
CLK => CLK, 
Reset => Reset,
Data_in => "0000",
Q(2 downto 0) => dataGet);

incrementPut: Counter port map(
PL => '0', 
CE => put, 
CLK => CLK, 
Reset => Reset,
Data_in => "0000",
Q(2 downto 0) => dataPut);


full <= '1' when (size = "111") else '0';
empty <= '1' when (size = "000") else '0';
A <= dataPut when (putget = '1') else dataGet;
end arc;