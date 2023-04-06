library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decod_2bits_tb is

end decod_2bits_tb;

architecture Behavioral of decod_2bits_tb is
    component decod_2bits
        Port ( ab : in std_logic_vector(0 to 1);
               x0, x1, x2, x3 : out std_logic);
    end component;
    
    signal ab : std_logic_vector(0 to 1);
    signal x0, x1, x2, x3 : std_logic;
    constant interval : time := 100ns;
begin

DUT : decod_2bits port map(ab, x0, x1, x2, x3);
    process
        begin
        -- testando os casos
            ab <= "00";
            wait for interval;
            ab <= "01";
            wait for interval;
            ab <= "10";
            wait for interval;
            ab <= "11";
            wait for interval;

    end process;
end Behavioral;