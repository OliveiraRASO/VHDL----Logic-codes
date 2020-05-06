-- Moore // contador
library ieee;
use ieee.std_logic_1164.all; 

entity mooremachine is
	port(clk, reset, level: in std_logic);
end mooremachine;

architecture arch of mooremachine is    
    type estado_tipo is (A0, A1, A2, A3, A4);
    signal estado, prox_estado: estado_tipo;
    
begin   
    process(clk, reset)
    begin
        if (reset = '1') then -- passa p/ estado zero
            estado <= A0;
        elsif (clk'event and clk = '1') then -- atualiza estados
            if level = '1' then
				estado <= prox_estado;
        else
            null;
				end if;
		  end if;
    end process;
    
    -- mudança de estados // uma hipótesse
	 --------------------------------------
	 process(estado, level)
	 begin
		if level = '1' then
			case estado is
				when A0 => prox_estado <= A1;
				when A1 => prox_estado <= A2;
				when A2 => prox_estado <= A3;
				when A3 => prox_estado <= A4;
				when A4 => prox_estado <= A0;
			end case;
		end if;
	end process;
end arch;


-- mudança de estados // outra hipótesse
------------------------------------------------
--		process(estado, level)
--		case estado is
--			when A0 =>
--				if level = '1' then
--					prox_estado <= A1;
--				elsif
--					when A1 =>
--					if level = '1' then
--						prox_estado <= A2;
--				elsif
--					when A2 =>
--					if level = '1' then
--						prox_estado <= A3;
--				elsif
--					when A3 =>
--					if level = '1' then
--						prox_estado <= A4;
--				elsif
--					when A4 =>
--					if level = '1' then
--						prox_estado <= A0;
--					end if;
--				end if;
--			end if;
--		end if;
--	end case;
			

------------------------------------------------------------------- 
--	 begin 
--        prox_estado <= estado;
--        Moore_tick <= '0'; -- set tick to zero (so that 'tick = 1' is available for 1 cycle only)
--        case estado is 
--            when zero =>
--				if level = '1' then
--                    prox_estado <= edge;
--                end if; 
--            when edge => 
--                Moore_tick <= '1';
--                if level = '1' then -- if level is 1, 
--                    estadoMoore_prox <= one; --go to estado one,
--                else 
--                    estadoMoore_prox <= zero; -- else go to estado zero.
--                end if;
--            when one =>
--                if level = '0' then -- if level is 0, 
--                    estadoMoore_prox <= zero; -- then go to estado zero.
--                end if;
--        end case; 
--    end process;  
--end arch;