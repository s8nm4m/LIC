library ieee;
use ieee.std_logic_1164.all;

entity LCDDispatcher is
port(
Dval, Reset, CLK : in std_logic;
Din : in std_logic_vector(4 downto 0);
Wrl, done : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end LCDDispatcher;

architecture arc_lcdd of LCDDispatcher is
component Dispatcher
port(
Dval, Reset, CLK, eq12 : in std_logic;
Wrl, done, countclear : out std_logic);
end component;

component Counter
port(
PL, CE, CLK, Reset: in std_logic;
Data_in: in std_logic_vector(3 downto 0);
TC: out std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

signal eq12, countclear, cenable, wr, d, clean: std_logic;
signal count: std_logic_vector(3 downto 0);

begin

disp: Dispatcher port map(
Dval => Dval, 
Reset => Reset, 
CLK => CLK, 
eq12 => eq12,
Wrl => wr, 
done => d,
countclear => countclear);

cup: Counter port map(
Reset => Reset,
PL => clean,
CE => cenable,
CLK => CLK,
Data_in => "0000",
Q => count);

clean <= eq12 or countclear;
Wrl <= wr;
eq12 <= count(3) and count(2) and not count(1) and not count(0);
done <= d;
Dout <= Din;
cenable <= wr or d;

end arc_lcdd;