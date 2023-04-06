library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inverter_sc_tb is
    
end inverter_sc_tb;

architecture Behavioral of inverter_sc_tb is
    component inverter_sc
        Port ( a : in STD_LOGIC;
               s : out STD_LOGIC);
    end component;
    signal a, s: std_logic;
    constant intervalo : time := 100 ns;

begin
    DUT: inverter_sc port map(a=>a,s=>s);
    
    estimmulos: process
    begin
        a <= '0';
        wait for intervalo;
        a <= '1';
        wait for intervalo;
    end process;

end Behavioral;