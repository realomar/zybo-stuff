----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2018 10:30:11 PM
-- Design Name: 
-- Module Name: SSDecoder - Behavioral
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

entity SSDecoder is port(
ctrl: in std_logic_vector(3 downto 0);
dispOut: out std_logic_vector(6 downto 0));
--  Port ( );
end SSDecoder;

architecture Behavioral of SSDecoder is

begin

with ctrl select dispout <=
"1111110" when "0000",
"0110000" when "0001",
"1101101" when "0010",
"1111001" when "0011",
"0110011" when "0100",
"1011011" when "0101",
"1110000" when "0111",
"1111111" when "1000",
"0110011" when "1001",
"1110111" when "1010",
"0011111" when "1011",
"1001110" when "1100",
"1001111" when "1101",
"1000111" when others;

end Behavioral;
