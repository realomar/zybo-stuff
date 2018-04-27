----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2018 05:35:55 PM
-- Design Name: 
-- Module Name: FA - Behavioral
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
entity FA is
 Port ( A : in STD_LOGIC;
 B : in STD_LOGIC;
 Cin : in STD_LOGIC;
 Sum : out STD_LOGIC;
 Cout: out STD_LOGIC);
end FA;
architecture Behavioral of FA is
begin
Sum<=(not A and not B and Cin) or (not A and B and not Cin)or
 (A and not B and not Cin) or (A and B and Cin);
Cout<=(A and B) or (A and Cin) or (B and Cin);
end Behavioral;