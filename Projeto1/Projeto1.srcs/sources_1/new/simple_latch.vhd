library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity simple_latch is

    Port ( s : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC);
           
end simple_latch;

architecture Behavioral of simple_latch is

    signal dat : std_logic;
    
begin
    dat <= s when(r = '1') else dat;
    q <= dat;

end Behavioral;