library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_add is

    port( a, b, c : in bit;
          sum, carry : out bit);
          
end full_add;

architecture Behavioral of full_add is

begin

    -- a xor b = s// s xor c

    sum <= a xor b xor c;   
    carry <= ((a and b) or (b and c) or (a and c));
    
end Behavioral;