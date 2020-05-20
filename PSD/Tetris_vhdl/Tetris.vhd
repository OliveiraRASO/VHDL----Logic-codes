-- 
library ieee;
use ieee.std_logic_1164.all

entity Tetris is
port (branco: IN bit_vector(3 downto 0);
		preto: IN bit_vector(3 downto 0)
		flag : boolean := false);
end Tetris;

architecture teste of Tetris is
begin
	joga: process (branco, preto, flag)
			begin
				if (branco <= '1') and (preto <= '1') then
				flag <= true;
				end if;
		end process;
	end teste;
end;