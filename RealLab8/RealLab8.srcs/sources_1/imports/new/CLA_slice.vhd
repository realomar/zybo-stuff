----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2018 06:06:01 PM
-- Design Name: 
-- Module Name: CLA_slice - Behavioral
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

entity CLA_slice is
 Port ( A : in STD_LOGIC;
 B : in STD_LOGIC;
 Cin : in STD_LOGIC;
 P : out STD_LOGIC;
 G : out STD_LOGIC;
 Sum_out : out STD_LOGIC);
end CLA_slice
;
architecture Behavioral of CLA_slice is
begin
Sum_out <= A xor B xor Cin
;
P <= A xor B;
G <= A and B;
end Behavioral;
