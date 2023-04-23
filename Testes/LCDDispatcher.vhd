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
component Counter
port(
PL, CE, CLK: in std_logic;
Data_in: in std_logic_vector(3 downto 0);
TC: out std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

type STATE_TYPE is (FIRST, SECOND, THIRD);

signal CurrentState, NextState: STATE_TYPE;
signal eq12, countclear: std_logic;
signal count: std_logic_vector(3 downto 0);

begin

cup: Counter port map(
PL => countclear,
CE => '1',
CLK => CLK,
Data_in => "0000",
Q => count);

CurrentState <= FIRST when Reset = '1' else NextState when rising_edge(CLK);
eq12 <= '1' when (count(3) = '1' and count(2) = '1' and count(1) = '0' and count(0) = '0') else '0';

GenerateNextState:
process(CurrentState, Dval, eq12)
	begin
		case CurrentState is
			when FIRSt => 
				if (Dval = '1') then NextState <= SECOND;
				else NextState <= FIRST;
				end if;
			when SECOND =>
				if (eq12 = '1') then NextState <= THIRD;
				else NextState <= SECOND;
				end if;
			when THIRD =>
				if (Dval = '0') then NextState <= FIRST;
				else NextState <= THIRD;
				end if;
		end case;
end process;

countclear <= '1' when (CurrentState = FIRST) else '0';
Wrl <= '1' when (CurrentState = SECOND) else '0';
done <= '1' when (CurrentState = THIRD) else '0';

end arc_lcdd;