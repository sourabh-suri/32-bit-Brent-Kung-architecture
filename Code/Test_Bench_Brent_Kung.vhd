
library ieee;
use ieee.std_logic_1164.all;
 
entity Test_Bench is
end Test_Bench;
 
architecture behave of Test_Bench is
  signal input1 : STD_LOGIC_VECTOR (31 downto 0);
  signal input2 : STD_LOGIC_VECTOR (31 downto 0);
  signal c : std_logic;
  signal sum: STD_LOGIC_VECTOR (31 downto 0);
  signal cout : STD_LOGIC;
   
 component Brent_Kung is
 Port ( a : in STD_LOGIC_VECTOR (31 downto 0);
 b : in STD_LOGIC_VECTOR (31 downto 0);
 c : in STD_LOGIC;
 sum : out STD_LOGIC_VECTOR (31 downto 0);
 cout : out STD_LOGIC);
  end component Brent_Kung;
   
begin
   
  INST : Brent_Kung
    port map (
      a    => input1,
      b    => input2,
      c => c,
      sum => sum,
      cout => cout );
 
  process is
  begin

    input1 <= "11111111111111111111111111111111";
    input2 <= "00000000000000000000000000000000";
    c<='1';

    wait for 10 ns;
    input1 <= "10000001111111111111111111111111";
    input2 <= "00000011111100000000000000111111";
    c<='1';
  end process;
     
end behave;