library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_sc_tb is

end mux_sc_tb;

architecture Behavioral of mux_sc_tb is

    component mux_sc
    
        port ( a0, a1, a2, a3 : in std_logic_vector(3 downto 0);
           s : in std_logic_vector(1 downto 0);
           x : out std_logic_vector(3 downto 0));
           
    end component;
 
    signal a0, a1, a2, a3: std_logic_vector(3 downto 0);
    signal s : std_logic_vector(1 downto 0);    -- vai de 0 a 3
    signal x : std_logic_vector(3 downto 0);    -- cop�a os sinais a de 4 bits 
    constant interval : time := 100 ns;
    
begin

DUT : mux_sc port map(a0, a1, a2, a3, s ,x);

    process
    
        begin
        
        -- valores possiveis para as entradas
        a0 <= "0001";
        a1 <= "1000";
        a2 <= "1001";
        a3 <= "0100";
            
            -- casos de testes:
            s <= "00";
            wait for interval;
            s <= "01";
            wait for interval;
            s <= "10";
            wait for interval;
            s <= "11";
            wait for interval;
    end process;
    
end Behavioral;