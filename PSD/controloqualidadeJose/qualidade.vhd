--entity qualidade is
library ieee;
use ieee.std_logic_1164.all;

entity contjose is
port (
    corProposta:    IN std_logic_vector(7 downto 0);
    corPrincipal:    IN std_logic_vector(7 downto 0);     
    saida:    buffer std_logic :='0'
     );
end contjose;

ARCHITECTURE qual OF contjose IS
    signal temp : std_logic_vector(7 downto 0);
BEGIN
    temp <=  not (corProposta(0) xor corPrincipal(0)) &
             not (corProposta(1) xor corPrincipal(1)) &
             not (corProposta(2) xor corPrincipal(2)) &
             not (corProposta(3) xor corPrincipal(3)) &
             not (corProposta(4) xor corPrincipal(4)) &
             not (corProposta(5) xor corPrincipal(5)) &
             not (corProposta(6) xor corPrincipal(6)) &
             not (corProposta(7) xor corPrincipal(7));
    
    saida <= '1' when (temp = "11111110") or
                      (temp = "11111101") or
                      (temp = "11111011") or
                      (temp = "11110111") or
                      (temp = "11101111") or
                      (temp = "11011111") or
                      (temp = "10111111") or
                      (temp = "01111111") or
                      (temp = "11111111") else '0';
END qual;