library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_4bits is
    port (
        a, b : in std_logic_vector(3 downto 0);
       equal, greater, lesser : out std_logic);
end comparator_4bits ;

architecture Behavioral of comparator_4bits  is
begin
    greater <= '1' when (a > b) else '0';
    equal <= '1' when (a = b) else '0';
    lesser <= '1' when (a < b) else '0';
end Behavioral;