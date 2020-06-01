-- LAN Computadores
ibrary ieee;
use ieee.std_logic_1164.all; 

entity lancomputadores is
port(
    clk : in std_logic;
    computador1, computador2, computador3 : in std_logic;
    saida_computador1, saida_computador2, saida_computador3 : out std_logic);
end lancomputadores;

architecture arch of lancomputadores is 
    type stateMealy_type is (um, dois, tres, quatro); -- 4 estados Mealy
    signal present_state, next_state : stateMealy_type;
    
begin   
    process(clk)
    begin
        if (clk'event and clk = '1') then
            present_state <= next_state;
        else
            null;
        end if; 
    end process;
    
    -- primeira máquina
    process(present_state, computadores)
    begin 
        next_state <= present_state;
        
        saida_computador1 <= '0';
        case present_state is 
            when um => 
                if computador1 = '0' then
                    next_state <= dois;
                    saida_computador1 <= '0';
                end if;
                     
                when dois =>
                if computador1 = '0' then
                    next_state <= tres;
						  saida_computador1 <= '0';
                end if;
					 
					 when tres =>
                if computador1 = '0' then
                    next_state <= quatro;
						  saida_computador1 <= '0';
                end if;
					 
					 when quatro =>
                if computador1 = '0' then
                    next_state <= um;
						  saida_computador1 <= '1';
                end if;
        end case; 
    end process;
end arch; 