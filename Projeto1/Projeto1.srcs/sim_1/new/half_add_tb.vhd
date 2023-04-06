library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_add_tb is

end half_add_tb;

architecture Behavioral of half_add_tb is

    component half_add
    
        port (a, b : in bit; 
        sum, carry: out bit); 
        
    end component;
    
    signal a, b : bit;
    signal sum, carry : bit;
    constant interval : time := 100ns;
    
begin

DUT : half_add port map(a, b, sum , carry);

    process
    
        begin
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
