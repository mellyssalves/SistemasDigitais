library ieee;
use ieee.std_logic_1164.all;

entity nor_tb is
end nor_tb;

architecture Behavioral of nor_tb is
-- Declaração do componente
    component nor_sc is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
    end component;

    -- Declaração dos sinais
    signal a, b, s : std_logic;
begin
    teste: nor_sc port map(a,b,s);
    estmulo: process
    
   begin
        --wait for 10 ns;
        
        a <= '0';
        b <= '0';
        wait for 100 ns;
        
        a <= '0';
        b <= '1';
        wait for 100 ns;
        
        a <= '1';
        b <= '0';
        wait for 100 ns;
        
        a <= '1';
        b <= '1';
        --wait for 10 ns;
       
        wait;
        
    end process;
    
end Behavioral;