----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/26/2018 04:09:13 PM
-- Design Name: 
-- Module Name: 3bitmult - Behavioral
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


entity 3bitmult is
Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
 B : in STD_LOGIC_VECTOR (2 downto 0);
 R : out STD_LOGIC_VECTOR (7 downto 0);
end 3bitmult;
component HA
port(C,D: in std_logic;
HASum,HACout: out std_logic);
end component;
component FA
port(A,B,Cin: in std_logic;
Sum,Cout: out std_logic);
end component;
COMPONENT CLA_module PORT(
 P: IN std_logic_vector(3 downto 0);
 G: IN std_logic_vector(3 downto 0);
 C : OUT std_logic_vector(3 downto 0));
 Cout : OUT std_logic;
 END COMPONENT;
architecture Behavioral of 3bitmult is
Signal  P00, P01, P02, P12, P11, P10, P22, P21, P20 : in STD_LOGIC;
Singal Y(13 downton 0) : in STD_LOGIC_VECTOR;
begin
P00<= A(0) and B(0);
P01<= A(1) and B(0);
P02<= A(2) and B(0);
P12<= A(0) and B(1);
P11<= A(1) and B(1);
P10<= A(2) and B(1);
P22<= A(0) and B(2);
P21<= A(1) and B(2);
P20<= A(2) and B(2); 
R0 <= P00;
C0: HA port map (C=>P01, D=>P10, HACout=>Y(0), HASUM=> R(1));
C1: FA port map (A=>P02, B=>P11, Cin=>P20, Sum=>Y(1), Cout=>Y(2));
C2: FA port map (A=>P03, B=>P12, Cin=>P21, Sum=>Y(3), Cout=>Y(4));
C3: HA port map (C=>P13, D=>P22, HACout=>Y(6), HASUM=> Y(5));
C4: HA port map (C=>Y(1), D=>Y(0), HACout=>Y(7), HASUM=> R(2));
C5: FA port map (A=>Y(3), B=>P30, Cin=>Y(2), Sum=>Y(8), Cout=>Y(9));
C6: FA port map (A=>Y(5), B=>P31, Cin=>Y(4), Sum=>Y(10), Cout=>Y(11));
C7: FA port map (A=>P23, B=>P32, Cin=>Y(6), Sum=>Y(12), Cout=>Y(13));
C8: CLA port map(P(0)=>Y(8),G(0)=>Y(7),P(1)=>Y(10),G(1)=>(9),P(2)=>Y(12),G(2)=>Y(11),P(3)=>P33,G(3)=>Y(13),C(0)=>R(3),C(1)=>R(4),
C(2)=>R(5), C(3)=>R(6), Cout=>R(7));

end Behavioral;
