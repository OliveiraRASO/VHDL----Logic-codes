-- Tatica Futebol//
library ieee;
use ieee.std_logic_1164.all; 

entity tatica_fut is
port(	ataque0, ataque1: in std_logic_vector(1 downto 0);
		meio_campo0, meio_campo1: in std_logic_vector(3 downto 0);
		defesa0, defesa1: in std_logic_vector(3 downto 0));
end tatica_fut;

architecture arch of tatica_fut is

begin
	process
		case ataque0 is
			when"01" => saida <= ataque1 <= "01";
			when"10" => saida <= ataque1 <= "10";
		end case;
	end process;
	
	process
		case meio_campo0 is
			when"001" => saida <= meio_campo1 <= "001";
			when"010" => saida <= meio_campo1 <= "010";
			when"100" => saida <= meio_campo1 <= "100";
		end case;
	end process;
	
	process
		case defesa0 is
			when"001" => saida <= defesa1 <= "001";
			when"010" => saida <= defesa1 <= "010";
			when"100" => saida <= defesa1 <= "100";
		end case;
	end process;
end arch;