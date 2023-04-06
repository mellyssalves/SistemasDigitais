library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inverter_sc is

    Port ( a : in STD_LOGIC;
           s : out STD_LOGIC);
           
end inverter_sc;

architecture Behavioral of inverter_sc is

begin

    s <= not a;
    
end Behavioral;