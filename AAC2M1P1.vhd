--------------------------------------------------------------------------------
--                                                                            --
--               Application 2-bit comparator           --
--                                                                            --
--------------------------------------------------------------------------------
--
-- Target FPGA: [Intel Altera MAX10] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the entity VHDL code for a 
--              2-bit comparator.  The architecture is to be completed by the
--              student. 
--  Hierarchy:  Only 1 level for this simple device 
--  
------------------------------------------------------------------------------
-- 

library ieee;                                	
use ieee.std_logic_1164.all;           	
                                             		
entity comparator2 is 
    port (                 	
        A, B: in std_logic_vector(1 downto 0); 
        Equals: out std_logic
    );            		
end comparator2;                             	

architecture behavioral of comparator2 is 
begin
    compareProcess : process(A, B)
    begin
        if (A = B) then
            Equals <= '1';
        else
            Equals <= '0';
        end if;
    end process compareProcess;
end behavioral;
