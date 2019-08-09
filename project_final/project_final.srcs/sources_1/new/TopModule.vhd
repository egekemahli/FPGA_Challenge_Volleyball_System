library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;

entity sensor is
    Port ( CLK : in STD_LOGIC;
           LDRin,LDRin2,LDRin3: in STD_LOGIC;
           LDRres1,LDRres2,LDRres3: out STD_LOGIC;
           swit1 , swit2, swit3 : in STD_LOGIC;
           ECHO : in STD_LOGIC;
           Vin1 : in STD_LOGIC;
           VRout1: out STD_LOGIC;
           swit4 : in STD_LOGIC;
           
           TRIGGER : out STD_LOGIC;
           SEG_SEC : out STD_LOGIC_VECTOR (3 downto 0);
           SEGMENTS : out STD_LOGIC_VECTOR (6 downto 0));       
end sensor;
architecture Behavioral of sensor is

component decooder
    Port ( digit : std_logic_vector(3 downto 0);
           SEGMENTS : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component LDRsensor is 
    Port( clk   : in std_logic;
          LDRin1: in std_logic;
          inputswit : in std_logic;
          LED1: out std_logic);
end component ;
component VibrationRange is 
    Port (clk       : in std_logic;
          Vin : in std_logic;
--          Rin : in std_logic;
          resetswit : in std_logic;
          VRout: out std_logic);
end component;
component RangeOnly is 
    Port (clk : in std_logic;
          ECHO : in STD_LOGIC;
          TRIGGER : out STD_LOGIC;
          SEG_SEC : out STD_LOGIC_VECTOR (3 downto 0));
 end component;

signal digit : std_logic_vector(3 downto 0) := (others => '0');



begin

decode:decooder port map( digit, SEGMENTS );
ldrsen: LDRsensor port map(LDRin1 => LDRin, LED1 => LDRres1 , clk => clk , inputswit => swit1);
ldrsen2: LDRsensor port map(LDRin1 => LDRin2, LED1 => LDRres2 , clk => clk , inputswit => swit2);
ldrsen3: LDRsensor port map(LDRin1 => LDRin3, LED1 => LDRres3 , clk => clk , inputswit => swit3);
vibran: VibrationRange port map ( Vin => Vin1 ,  VRout => VRout1 , clk => clk , resetswit => swit4 );
rangesen: RangeOnly port map(clk => clk, SEG_SEC => SEG_SEC , TRIGGER => TRIGGER , ECHO => ECHO );





end Behavioral;