library ieee;
use ieee.std_logic_1164.all; 

 

entity controlentradaesaida    
 is
port(
    clk : in std_logic;
    in1 : in std_logic_vector (1 downto 0);
     -- Assumir que:
     -- 00 - Não entrou nem saiu pessoas (mesmo estado)
     -- 01 - Saiu uma pessoa mas não entrou (decrementa)
     -- 10 - Entrou uma pessoa mas não saiu (incrementa)
     -- 11 - Entrou uma pessoa e saiu uma pessoa (mesmo estado)
    Moore_tick: out std_logic_vector (6 downto 0) );
end controlentradaesaida    
;

 

 

 

architecture arch of controlentradaesaida is 
    
    type stateMoore_type is (a, b, c, d, e, f); -- 5 estados Moore
    signal present_state, next_state : stateMoore_type;
    
begin   
    process(clk)
    begin
        if (clk'event and clk = '1') then
            present_state <= next_state;
        else
            null;
        end if; 
    end process;
    
    -- Máquina de Moore
    process(present_state, in1)
     begin 
        next_state <= present_state; 
        
        case present_state is 
            when a => -- caso seja A
                     Moore_tick <= "1111110"; -- saida = 0
                if (in1 = "10") then -- se entrou uma pessoa mas não saiu
                    next_state <= b; -- passa para o próximo estado
                end if; 
            when b => 
                Moore_tick <= "0110000"; -- saida = 1
                if (in1 = "10") then -- se entrou uma pessoa mas não saiu
                    next_state <= c; -- passa para o próximo estado
                elsif (in1 = "01") then -- senão se saiu e não entrou
                    next_state <= a; -- passa para o estado anterior
                end if; 
                when c => 
                Moore_tick <= "1101101"; -- saida = 2
                if (in1 = "10") then -- se entrou uma pessoa mas não saiu
                    next_state <= d; -- passa para o próximo estado
                elsif (in1 = "01") then -- senão se saiu e não entrou
                    next_state <= b; -- passa para o estado anterior
                end if;
                when d => 
                Moore_tick <= "1111001"; -- saida = 3
                if (in1 = "10") then -- se entrou uma pessoa mas não saiu
                    next_state <= e; -- passa para o próximo estado
                elsif (in1 = "01") then -- senão se saiu e não entrou
                    next_state <= c; -- passa para o estado anterior
                end if;
                when e => 
                Moore_tick <= "0110011"; -- saida = 4
                if (in1 = "10") then -- se entrou uma pessoa mas não saiu
                    next_state <= f; -- passa para o próximo estado
                elsif (in1 = "01") then -- senão se saiu e não entrou
                    next_state <= d; -- passa para o estado anterior
                end if;
                when f => 
                Moore_tick <= "1011011"; -- saida = 5
                if (in1 = "01") then -- se saiu uma pessoa e não entrou
                    next_state <= e; -- passa para o estado anterior
                end if;     
        end case; 
    end process;  
end arch;