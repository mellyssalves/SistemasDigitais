library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_sc is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end nor_sc;

architecture Behavioral of nor_sc is

begin

    s <= not (a or b);
end Behavioral;
