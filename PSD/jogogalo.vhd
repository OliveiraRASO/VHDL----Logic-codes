-- Jogo do galo
library ieee;
use ieee.std_logic_1164.all

entity jogoDoGalo is
port (v: IN bit_vector(9 downto 0);
		v2: OUT bit_vector(9 downto 0));

end jogoDoGalo;

architecture teste of jogoDoGalo is
begin
	joga: process (v, v2)
								begin
									if v(1) <= '1' then
										v2(1) <= '0';
										elsif v(1) <= '0' then
										v2(1) <= '1';
									if v(2) <= '1' then
										v2(2) <= '0';
										elsif v(2) <= '0' then
										v2(2) <= '1';
									if v(3) <= '1' then
										v2(3) <= '0';
										elsif v(3) <= '0' then
										v2(3) <= '1';
									if v(4) <= '1' then
										v2(4) <= '0';
										elsif v(4) <= '0' then
										v2(4) <= '1';
									if v(5) <= '1' then
										v2(5) <= '0';
										elsif v(5) <= '0' then
										v2(5) <= '1';
									if v(6) <= '1' then
										v2(6) <= '0';
										elsif v(6) <= '0' then
										v2(6) <= '1';
									if v(7) <= '1' then;
										v2(7) <= '0';
										elsif v(7) <= '0' then
										v2(7) <= '1';
									if v(8) <= '1' then
										v2(8) <= '0';
										elsif v(8) <= '0' then
										v2(8) <= '1';
									if v(9) <= '1' then
										v2(9) <= '0';
										elsif v(9) <= '0' then
										v2(9) <= '1';
									end if;								end if;
							end if;
						end if;
					end if;
				end if;
			end if;
		end if;
	end if;
end process;
end teste;
end;