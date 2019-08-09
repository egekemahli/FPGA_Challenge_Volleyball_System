library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity VibrationRange is
 port(  clk  : in std_logic;
        Vin  : in std_logic;
        Rin  : in std_logic;
        resetswit : in STD_LOGIC;
        VRout: out std_logic);
end VibrationRange;

architecture Behavioral of VibrationRange is
begin


   process(clk)
        begin
        if rising_edge (clk)then
            if Vin = '1' and Rin = '1' then
              VRout  <= '1';
            end if;
           if resetswit = '1' then
               VRout  <= '0';
           end if ;
        end if; 
      end process;

end Behavioral;
