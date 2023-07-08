library ieee;
use ieee.std_logic_1164.all;

entity RingBufferControl is
port(
DAV, CTS, full, empty, Reset, CLK : in std_logic;
Wr, selPG, Wreg, DAC, incPut, incGet : out std_logic);
end RingBufferControl;

architecture arc of RingBufferControl is

type STATE_TYPE is (ZEN, SELECT_PUT, WRITE_RAM, INC_PUT, ACCEPTED, WRITE_REG, INC_GET);

signal CurrentState, NextState: STATE_TYPE;

begin

CurrentState <= ZEN when Reset = '1' else NextState when rising_edge(CLK);

GenerateNextState:
process(CurrentState,DAV, full, empty, CTS)
	begin
		case CurrentState is
			when ZEN => 
				if (DAV = '1' and full = '0') then NextState <= SELECT_PUT;
				elsif(DAV = '1' and full = '1' and CTS = '1') then NextState <= WRITE_REG;
				elsif(DAV = '0' and CTS = '1' and empty = '0') then NExtState <= WRITE_REG;
				else NextState <= ZEN;
				end if;
			when SELECT_PUT => NextState <= WRITE_RAM;
			when WRITE_RAM => NextState <= INC_PUT;
			when INC_PUT => NextState <= ACCEPTED;
			when ACCEPTED =>
				if (DAV = '1') then NextState <= ACCEPTED;
				else NextState <= ZEN;
				end if;
			when WRITE_REG => 
				if (CTS = '1') then NextState <= WRITE_REG;
				else NextState <= INC_GET;
				end if;
			when INC_GET => NextState <= ZEN;	
		end case;
end process;

selPG <= '1' when (CurrentState = SELECT_PUT or CurrentState = WRITE_RAM or CurrentState = INC_PUT) else '0';
Wr <= '1' when (CurrentState = WRITE_RAM) else '0';
incPut <= '1' when (CurrentState = INC_PUT) else '0';
DAC <= '1' when (CurrentState = ACCEPTED) else '0';
Wreg <= '1' when (CurrentState = WRITE_REG) else '0';
incGet <= '1' when (CurrentState = INC_GET) else '0';
end arc;