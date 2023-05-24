library ieee;
use ieee.std_logic_1164.all;

entity MemoryAddressControl is
port(
putget, incPut, incGet, CLK, Reset : in std_logic;
full, empty : out std_logic;
A : out std_logic_vector(2 downto 0));
end MemoryAddressControl;

architecture arc of MemoryAddressControl is
component Counter
port(
PL, CE, CLK, Reset: in std_logic;
Data_in: in std_logic_vector(3 downto 0);
TC: out std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

component Mux2x1
port(A, B: in std_logic_vector(3 downto 0);
S: in std_logic;
Y: out std_logic_vector(3 downto 0));
end component;

signal putIndex, getIndex, muxout : std_logic_vector(3 downto 0);
signal r : std_logic;

begin

--r <= Reset;
-- contador do indice no qual o put se encontra
incrementPut: Counter port map(
PL => '0',--r, 
CE => incPut, 
CLK => CLK, 
Reset => Reset,
Data_in => "0000",
Q => putIndex);

-- contador do indice no qual o get se encontra
incrementGet: Counter port map(
PL => '0',--r, 
CE => incGet, 
CLK => CLK, 
Reset => Reset,
Data_in => "0000",
Q => getIndex);

-- decide dependedendo do sinal putget qual indice indicar como output
idxDecider : Mux2x1 port map(
A => putIndex, 
B => getIndex,
S => putget,
Y => muxout);

A <= muxout(2 downto 0);
--caso os indices put e get sejam iguais, o quarto bit indica se a ram está vazia ou cheia,
--pela lógica de que se forem iguais quer dizer que está vazio e se forem diferentes, quer dizer
--que está cheio
empty <= '1' when(putIndex(2 downto 0) = getIndex(2 downto 0) and putIndex(3) = getIndex(3)) else '0';
full <= '1' when(putIndex(2 downto 0) = getIndex(2 downto 0) and putIndex(3) /= getIndex(3)) else '0';
end arc;