----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2018 06:22:42 PM
-- Design Name: 
-- Module Name: Problem2 - Behavioral
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

entity Problem2 is
    Port ( I : in STD_LOGIC_VECTOR(3 downto 0);
           CAT,A,B,C,D,E,F,G : out STD_LOGIC);
end Problem2;

architecture Behavioral of Problem2 is

begin
CAT <= '0';
with I select
--    Y(0) <=  "1111110' when "0000";
--    Y(1) <=  "0110000' when I = "0001";
--    Y(2) <=  "1101101" when I = '0010';
--    Y(3) <=  "1111001" when I = '0011';
--    Y(4) <=  "0110011" when I = '0100';
--    Y(5) <=  "1011011" when I = '0101';
--    Y(6) <=  "1011111" when I = '0110';
--    Y(7) <=  "1110000" when I = '0111';
--    Y(8) <=  "1111111" when I = '1000';
--    Y(9) <=  "1111011" when I = '1001';
--    Y(10) <= "1110111" when I = '1010'; --A
--    Y(11) <= "0011111" when I = '1011'; --B
--    Y(12) <= "1001110" when I = '1100'; --C
--    Y(13) <= "0111100" when I = '1101'; --D
--    Y(14) <= "1001111" when I = '1110'; --E
--    Y(15) <= "1000111" when I = '1111'; --F

A <= '0' when "0001",
     '0' when "0100",
     '0' when "1011",
     '0' when "1101",
     '1' when others;
     
with I select
B <= '0' when "0101",
     '0' when "0110",
     '0' when "1011",
     '0' when "1100",
     '0' when "1110",
     '0' when "1111",
     '1' when others;

with I select
C <= '0' when "0010",
     '0' when "1100",
     '0' when "1110",
     '0' when "1111",
     '1' when others;

with I select --1 4 7 10 15
D <= '0' when "0001",
     '0' when "0100",
     '0' when "0111",
     '0' when "1010",
     '0' when "1111",
     '1' when others;
     
 with I select --1 3 4 5 7 9 
E <= '0' when "0001",
     '0' when "0011",
     '0' when "0100",
     '0' when "0101",
     '0' when "0111",
     '0' when "1001",
     '1' when others;
      
 with I select --1 2 3 7
F <= '0' when "0001",
     '0' when "0010",
     '0' when "0011",
     '0' when "0111",
     '0' when "1101",
     '1' when others;

with I select --0 1 7 12 13
G <= '0' when "0000",
     '0' when "0001",
     '0' when "0111",
     '0' when "1100",
     '1' when others;

end Behavioral;
