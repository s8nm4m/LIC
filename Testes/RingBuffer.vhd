library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer is
port(
DAV, CTS, CLK, Reset : in std_logic;
D : in std_logic_vector(3 downto 0);
Wreg, DAC : out std_logic;
Q : out std_logic_vector(3 downto 0));
end RingBuffer;

architecture arc of RingBuffer is
component MemoryAddressControl
port(
putget, incPut, incGet, CLK, Reset : in std_logic;
full, empty : out std_logic;
A : out std_logic_vector(2 downto 0));
end component;

component RAM
generic(
		ADDRESS_WIDTH : natural := 3;
		DATA_WIDTH : natural := 4
	);
port(
address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
wr: in std_logic;
din: in std_logic_vector(DATA_WIDTH - 1 downto 0);
dout: out std_logic_vector(DATA_WIDTH - 1 downto 0));
end component;

component RingBufferControl
port(
DAV, CTS, full, empty, Reset, CLK : in std_logic;
Wr, selPG, Wreg, DAC : out std_logic);
end component;

signal putget, incp, incg, f, e, wram : std_logic;
signal idx : std_logic_vector(3 downto 0);

begin

control : RingBufferControl port map(
Reset => Reset,
CLK => CLK,
DAV => DAV, 
CTS => CTS, 
full => f, 
empty => e,
Wr => wram, 
selPG => putget, 
Wreg => Wreg, 
DAC => DAC);

mac : MemoryAddressControl port map(
putget => putget, 
incPut => incp, 
incGet => incg, 
CLK => CLK, 
Reset => Reset,
full => f, 
empty => e,
A => idx(2 downto 0));

memory : RAM port map(
address => idx(2 downto 0),
wr => wram,
din => D,
dout => Q);

end arc;