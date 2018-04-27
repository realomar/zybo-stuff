----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2018 06:08:59 PM
-- Design Name: 
-- Module Name: CLA4bit - Behavioral
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

entity Multiplier is Port(
X : in STD_LOGIC_VECTOR(2 downto 0);
Y : in STD_LOGIC_VECTOR(2 downto 0);
R : out STD_LOGIC_VECTOR(5 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is
component CLA3Bit is Port(
    A : in STD_LOGIC_VECTOR (2 downto 0);
    B : in STD_LOGIC_VECTOR (2 downto 0);
    Sum : out STD_LOGIC_VECTOR (2 downto 0);
    Cout : out STD_LOGIC);
end component;

component FA is Port(
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Sum : out STD_LOGIC;
    Cout: out STD_LOGIC);
end component;

component HA is Port(
    C : in STD_LOGIC;
    D : in STD_LOGIC;
    HASum : out STD_LOGIC;
    HACout : out STD_LOGIC);
end component;
signal sig = STD_LOGIC_VECTOR(4 downto 0);
signal prop, gen, bits2to4 = STD_LOGIC_VECTOR(2 downto 0);
begin
R(0) <= X(0) and Y(0);
R(4 downto 2) <= highestbits
prop(0) <= X(0) and Y(2);
prop(1) <= X(1) and Y(2);
prop(2) <= X(2) and Y(2);
gen <= sig(4 downto 2);
ha0: HA Port map(C => X(0) and Y(1), D => X(1) and Y(0), HASum => R(1), HACout => sig(0));
fa0: FA Port map(A => X(1) and Y(1), B => X(2) and Y(0), Cin => '0', Sum => sig(2), Cout => sig(1));
fa1: FA Port map(A => '0', B => X(2) and Y(1), Cin => sig(0), Sum => sig(3), Cout => sig(4));
cla0: CLA3Bit Port map(A => prop, B => gen, Sum => bits2to4, Cout => R(5));

end Behavioral;