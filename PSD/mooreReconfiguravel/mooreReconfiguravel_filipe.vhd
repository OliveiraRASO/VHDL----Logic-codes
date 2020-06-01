library ieee;
use ieee.std_logic_1164.all; 

 

entity aulas_p is
port(
    Clk         : in std_logic;
    max         : in std_logic_vector (2 downto 0);
    outMoore : out std_logic_vector (2 downto 0) 
    
    -- 001 um estado
    -- 010 dois estados
    -- 100 tres estados
);
end aulas_p;

 

architecture arch of aulas_p is 
    
    type state_type is (a, b, c);
    signal PresentState, NextState: state_type;
    
begin

 

    Clock: process(Clk)
   begin
        if (Clk'event and Clk = '1') then
            PresentState <= NextState;
        else
            null;
      end if; 
    end process;
    
    mooreMachine: process(PresentState)
    begin
    
        NextState <= PresentState;
        
        case PresentState is
        
            when a =>
                outMoore <= "001";
                if max = "001" then
                    NextState <= a;
                else
                    NextState <= b;
                end if;
                
            when b =>
                outMoore <= "010";
                if max = "010" then
                    NextState <= b;
                else
                    NextState <= c;
                end if;
                
            when c =>
                outMoore <= "100";
                if max = "100" then
                    NextState <= c;
                else
                    NextState <= a;
                end if;
            
            when others => null;
                    
        end case; 
    end process;
end arch;