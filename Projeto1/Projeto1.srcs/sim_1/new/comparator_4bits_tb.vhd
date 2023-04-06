library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_4bits_tb is

end comparator_4bits_tb;

architecture Behavioral of comparator_4bits_tb is
    component comparator_4bits 
    port (
        a, b : in std_logic_vector(3 downto 0);
        greater, equal, lesser : out std_logic);
    end component;
    
    signal a : std_logic_vector(3 downto 0);
    signal b : std_logic_vector(3 downto 0);
    signal greater : std_logic;
    signal equal : std_logic;
    signal lesser : std_logic;
    constant interval :time := 100 ns;
begin

DUT : comparator_4bits port map(a,b,greater,equal,lesser);

    process
        begin
        -- testes com vetores pré determinados:
        a <= "1000";
        b <= "0000";
        wait for interval;
        a <= "0000";
        b <= "1000";
        wait for interval;
        a <= "0010";
        b <= "0000";
        wait for interval;
        a <= "0100";
        b <= "0001";
        wait for interval;
        a <= "0101";
        b <= "0101";
        wait for interval;
    end process;

end Behavioral;