-- encriptador
library ieee;
use ieee.std_logic_1164.all;
--sinais
entity encript is
port(	s1 : in std_logic;
		s2 : in std_logic;
		s3 : in std_logic;
		saida : out std_logic);
		
end encript;
architecture encriptador of encript is
signal p1, p2, p3 : std_logic;
	
	begin
			p1 <= (s1) or (s2) or (s3);
			p2 <= (s1) and (s2) and (s3);
			p3 <= (s1) xor (s2) xor (s3);
			
			saida <= (p1 and p2);
			saida <= (p1 and p3);
			saida <= (p2 and p3);
	end encriptador;