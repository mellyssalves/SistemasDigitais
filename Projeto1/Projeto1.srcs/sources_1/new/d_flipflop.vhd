library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_flipflop is
    Port ( d, clk, r : in STD_LOGIC;
           q, qn : out STD_LOGIC);
end d_flipflop;

architecture Behavioral of d_flipflop is

begin

    process(clk, r)
    
    begin
    
        if r='1' then
            q <= '0';
            qn <= '1';   
                     
        elsif falling_edge(clk) then
        
            q <= d;
            qn <= not d;
            
        end if;   
        
end process;

end Behavioral;