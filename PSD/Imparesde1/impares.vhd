-- impares de '1's
library ieee;
use ieee.std_logic_1164.all;
entity impares is
port(	a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		d : in std_logic;
		saida : out std_logic);
		
end impares;
architecture saida_impares of impares is
	signal s0: std_logic;
	begin
		s0 <= (a and not b and not c and not d) or (not a and b and not c and not d) or (not a and not b and c and not d) or (not a and not b and not c and d) or (a and b and c and not d) or (a and b and not c and d) or (a and not b and c and d) or (not a and b and c and d);
		saida <= s0;
			
	end saida_impares;
	
---------------------------------------
---------------------------------------
-- outra forma de implementar o código

--entity exercicio_impares is 
--port( bits_entrada: in STD_LOGIC_VECTOR (3 downto 0);
--		saida: out STD_LOGIC );
--end exercicio_impares;

--architecture xor_arch of exercicio_impares is

--begin 
--	saida <= (bits_entrada(0) xor bits_entrada(1)) xor (bits_entrada(2) xor bits_entrada(3));
--end xor_arch;