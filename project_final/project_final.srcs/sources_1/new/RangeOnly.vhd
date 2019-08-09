library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.all;

entity RangeOnly is
 Port (clk  : in std_logic;
       ECHO : in STD_LOGIC;
       TRIGGER : out STD_LOGIC;
       SEG_SEC : out STD_LOGIC_VECTOR (3 downto 0));
end RangeOnly;

architecture Behavioral of RangeOnly is

signal count : std_logic_vector(16 downto 0) := (others => '0');
signal santimetre : std_logic_vector(15 downto 0) := (others => '0');
signal santimetre_birler : std_logic_vector(3 downto 0) := (others => '0');
signal santimetre_onlar : std_logic_vector(3 downto 0) := (others => '0');
signal out_birler : std_logic_vector(3 downto 0) := (others => '0');
signal out_onlar : std_logic_vector(3 downto 0) := (others => '0');
signal digit : std_logic_vector(3 downto 0) := (others => '0');
signal echo_son_deger : std_logic := '0';
signal echo_senkron : std_logic := '0';
signal echo_not_senkron : std_logic := '0';
signal timewait : std_logic := '0';
signal segment_count : std_logic_vector(15 downto 0) := (others => '0'); 

begin 
process(CLK)
begin
 if rising_edge(CLK) then
       if segment_count(segment_count'high) = '1' then
           digit <= out_birler;
           SEG_SEC <= "1110";
       else
           digit <= out_onlar;
           SEG_SEC <= "1101";
       end if;
   segment_count <= segment_count +1;
   end if;
    if rising_edge(CLK) then
        if timewait = '0' then
            if count = 1000 then -- 10us tetikleme
                TRIGGER <= '0';
                timewait <= '1';
                count <= (others => '0');
            else
                TRIGGER <= '1';
                count <= count+1;
            end if;
        elsif echo_son_deger = '0' and echo_senkron = '1' then
            count <= (others => '0');
            santimetre <= (others => '0');
            santimetre_birler <= (others => '0');
            santimetre_onlar <= (others => '0');
        elsif echo_son_deger = '1' and echo_senkron = '0' then
            out_birler <= santimetre_birler;
            out_onlar <= santimetre_onlar;
        elsif count = 5799 then --5800-1
            if santimetre_birler = 9 then
                santimetre_birler <= (others => '0');
                santimetre_onlar <= santimetre_onlar + 1;
            else
                santimetre_birler <= santimetre_birler + 1;
            end if;
        santimetre <= santimetre + 1;
        count <= (others => '0');
            if santimetre = 3448 then
                timewait <= '0';
            end if;
        else
            count <= count + 1;
        end if;
        echo_son_deger <= echo_senkron;
        echo_senkron <= echo_not_senkron;
        echo_not_senkron <= ECHO;
    end if;
--    if  out_onlar < 4 then
--     VRout <= '1';
--     else 
--       VRout <= '0';
--       end if;
end process;

     process(clk)
    variable x1, c2: integer:=0;
    variable y :std_logic:='1';
begin
    if rising_edge(clk) then

        if(x1=0) then
            trig<='1';
        elsif(x1=1000) then
            trig<='0';
            y:='1';
        elsif(x1=10000000) then 
            x1:=0;
            trig<='1';
        end if;
        x1:=x1+1;

        if(echo = '1') then
            c2:=c2+1;
        elsif(echo = '0' and y='1' ) then
            echo_time <= (c2/100);
            c2:=0;
            y:='0';
        end if;
    end if; 
end process ;

end Behavioral;
