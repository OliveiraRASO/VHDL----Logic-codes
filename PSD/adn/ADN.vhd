-- amostras ADN
library ieee;
use ieee.std_logic_1164.all;
--sinais
entity ADN is
port(	a: in std_logic;
		b: in std_logic;
		c: in std_logic;
		d: in std_logic;
		e: in std_logic;
		a2: in std_logic;
		b2: in std_logic;
		c2: in std_logic;
		d2: in std_logic;
		e2: in std_logic;
		b_out : out std_logic;
		b2_out : out std_logic;
		b3_out : out std_logic);
		
end ADN;
architecture teste of ADN is
	
	begin
			b_out <= (a and e2) or (b and d2) or (c and c2);
			b2_out <= (a and e2);
			b2_out <= (a and e2);
	end teste;