----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2018 05:37:12 PM
-- Design Name: 
-- Module Name: RCA - Behavioral
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

entity RCA is
 Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
 B : in STD_LOGIC_VECTOR (2 downto 0);
 Total : out STD_LOGIC_VECTOR (2 downto 0);
 CarryOut : out STD_LOGIC);
end RCA;
architecture Behavioral of RCA is
component HA
port(C,D: in std_logic;
HASum,HACout: out std_logic);
end component;
component FA
port(A,B,Cin: in std_logic;
Sum,Cout: out std_logic);
end component;
signal CO: std_logic_vector(2 downto 0);
begin
C0:HA port map (C=>A(0), D=>B(0),HASum=>Total(0),HACout=>CO(0));
C1:FA port map (A=>A(1), B=>B(1), Cin=>CO(0),Sum=>Total(1),Cout=>CO(1));
C2:FA port map (A=>A(2), B=>B(2), Cin=>CO(1),Sum=>Total(2),Cout=>CO(2));
CarryOut <= CO(2);
end Behavioral;