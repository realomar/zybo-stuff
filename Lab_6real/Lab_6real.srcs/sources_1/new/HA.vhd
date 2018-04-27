----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2018 05:35:21 PM
-- Design Name: 
-- Module Name: HA - Behavioral
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

entity HA is
 Port ( C : in STD_LOGIC;
 D : in STD_LOGIC;
 HASum : out STD_LOGIC;
 HACout : out STD_LOGIC);
end HA;
architecture Behavioral of HA is
begin
HASum<= C xor D;
HACout<= C and D;
end Behavioral;
