-- controloqualidade // PSD
library ieee;
use ieee.std_logic_1164.all;

entity controloqualidade is
port (bits_entrada: in std_logic_vector(7 downto 0);
		bits_entrada2: in std_logic_vector(7 downto 0);
		led_verde, led_vermelho: out std_logic);
end controloqualidade;

architecture arch of controloqualidade is
signal A, B: std_logic_vector(7 downto 0);

begin
	led_verde <= bits_entrada(00000000) and bits_entrada2(00000000);
	led_verde <= bits_entrada(0) xor bits_entrada2(0)
end arch;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 
-- outra forma de código

--entity qualidade is
--port (
--    corProposta:    IN std_logic_vector(7 downto 0);
--    corPrincipal:    IN std_logic_vector(7 downto 0);     
--    saida:    OUT std_logic :='0'
--     );
--end qualidade;

--ARCHITECTURE qual OF qualidade IS
--    signal temp : std_logic_vector(7 downto 0);
--BEGIN
--    temp <=  not (corProposta(0) xor corPrincipal(0)) &
--             not (corProposta(1) xor corPrincipal(1)) &
--             not (corProposta(2) xor corPrincipal(2)) &
--             not (corProposta(3) xor corPrincipal(3)) &
--             not (corProposta(4) xor corPrincipal(4)) &
--             not (corProposta(5) xor corPrincipal(5)) &
--             not (corProposta(6) xor corPrincipal(6)) &
--             not (corProposta(7) xor corPrincipal(7));
--    
--    saida <= '1' when (temp = "11111110") or
--                      (temp = "11111101") or
--                      (temp = "11111011") or
--                      (temp = "11110111") or
--                      (temp = "11101111") or
--                      (temp = "11011111") or
--                      (temp = "10111111") or
--                      (temp = "01111111") or
--                      (temp = "11111111");
--END qual;