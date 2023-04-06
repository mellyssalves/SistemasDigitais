library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_add_tb is
end full_add_tb;

architecture Behavioral of full_add_tb is

    component full_add
        port( a, b, c : in bit;
              sum, carry : out bit);
              
    end component;
    
    signal a, b, c : bit;
    signal sum, carry : bit;
    constant interval : time:= 100ns;
    
begin

DUT : full_add port map(a, b, c, sum, carry);

    process
    
        begin
            -- testes:
            a <= '0';
            b <= '0';
            wait for interval;
            a <= '1';
            b <= '0';
            wait for interval;
            a <= '0';
            b <= '1';
            wait for interval;
            a <= '1';
            b <= '1';
            wait for interval;
    end process;

end Behavioral;