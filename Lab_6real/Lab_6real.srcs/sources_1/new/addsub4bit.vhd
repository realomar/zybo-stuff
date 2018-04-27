----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2018 07:05:22 PM
-- Design Name: 
-- Module Name: addsub4bit - Behavioral
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

entity addsub4bit is
 Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
 B : in STD_LOGIC_VECTOR (3 downto 0);
 addsub : in STD_LOGIC;
 Sum : out STD_LOGIC_VECTOR (3 downto 0);
 Cout : out STD_LOGIC);
end addsub4bit;
architecture Behavioral of addsub4bit is
COMPONENT CLA4bitNEW is
 Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
 B : in STD_LOGIC_VECTOR (3 downto 0);
 Sum : out STD_LOGIC_VECTOR (3 downto 0);
 Cin : in STD_LOGIC;
 Cout : out STD_LOGIC);
end component;

signal B_internal: std_logic_vector(3 downto 0);
begin
U1: CCLA4bitNEW PORT MAP( A=>A, B => B,  );
B_internal(3) <= B(3) xor addsub;
B_internal(2) <= ?
B_internal(1) <= ?
B_internal(0) <= ?
end Behavioral;
