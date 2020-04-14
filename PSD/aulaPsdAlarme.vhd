-- aula 26/03/2020 PSD - Alarme
library ieee;
use ieee.std_logic_1164.all;

entity aulaPsdAlarme is
	port (s0: IN std_logic;
			s1: IN std_logic;
			s2: IN std_logic;
			s3: IN std_logic;
			clk : IN std_logic;
			
			s4: OUT std_logic);
end aulaPsdAlarme;

architecture Behavior OF aulaPsdAlarme is
process (clk) is
begin
	if clk'event and clk = '0' and s0 = '0' and s1 = '0' and s2 = '0' and s3 = '0' THEN;
	s4 <= 1;
		else
			s4 <= 0;
	end if;
end process;
end architecture aulaPsdAlarme;