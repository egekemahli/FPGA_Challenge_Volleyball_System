library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decooder is
  Port ( digit : in std_logic_vector(3 downto 0);
         SEGMENTS : out STD_LOGIC_VECTOR (6 downto 0));
end decooder;

architecture Behavioral of decooder is
 
 
begin
process(digit)
begin
    case digit is
    when "0001" => SEGMENTS <= "1111001";
    when "0010" => SEGMENTS <= "0100100";
    when "0011" => SEGMENTS <= "0110000";
    when "0100" => SEGMENTS <= "0011001";
    when "0101" => SEGMENTS <= "0010010";
    when "0110" => SEGMENTS <= "0000010";
    when "0111" => SEGMENTS <= "1111000";
    when "1000" => SEGMENTS <= "0000000";
    when "1001" => SEGMENTS <= "0010000";
    when "1010" => SEGMENTS <= "0001000";
    when "1011" => SEGMENTS <= "0000011";
    when "1100" => SEGMENTS <= "1000110";
    when "1101" => SEGMENTS <= "0100001";
    when "1110" => SEGMENTS <= "0000110";
    when "1111" => SEGMENTS <= "0001110";
    when others => SEGMENTS <= "1000000";
    end case;
end process;
end Behavioral;