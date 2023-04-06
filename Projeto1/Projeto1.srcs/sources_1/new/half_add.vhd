library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_add is

    port (a, b : in bit; 
    sum, carry: out bit); 
    
end half_add;

architecture Behavioral of half_add is

begin

    sum <= a xor b;
    carry <= a and b;
    
end Behavioral;