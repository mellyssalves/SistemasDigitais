----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.04.2023 13:40:56
-- Design Name: 
-- Module Name: xor_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and_tb is
--  Port ( );
end and_tb;

architecture Behavioral of and_tb is
component and_sc is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end component;

signal A, B: std_logic;
signal S: std_logic;
begin
    teste: and_sc port map(A,B,S);
    estmulo: process
begin
        wait for 10 ns;
        
        a <= '0';
        b <= '0';
        wait for 10 ns;
        
        a <= '0';
        b <= '1';
        wait for 10 ns;
        
        a <= '1';
        b <= '0';
        wait for 10 ns;
        
        a <= '1';
        b <= '1';
        wait for 10 ns;
       
        wait;
        
    end process;
end Behavioral;
