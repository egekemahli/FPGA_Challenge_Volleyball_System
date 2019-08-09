library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity LDRsensor is
    port(clk       : in std_logic;
         LDRin1 : in std_logic;
         inputswit : in std_logic;
         LED1: out std_logic);
end LDRsensor;

architecture Behavioral of LDRsensor is

begin 
    process(clk)
     begin
     if rising_edge (clk )then
        if LDRin1 = '1' then
            LED1 <= '1' ;
        end if;
        if inputswit = '1' then
            LED1  <= '0';
        end if ;
     end if; 
   end process;
end Behavioral;