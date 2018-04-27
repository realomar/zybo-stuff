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
entity CLA4bit is
 Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
 B : in STD_LOGIC_VECTOR (3 downto 0);
 Sum : out STD_LOGIC_VECTOR (3 downto 0);
 Cout : out STD_LOGIC);
end CLA4bit;

architecture Behavioral of CLA4bit is
COMPONENT CLA_slice PORT(
 A, B, Cin : IN std_logic;
 P, G, Sum_out : OUT std_logic);
 END COMPONENT;

COMPONENT CLA_module PORT(
 P, G : IN std_logic_vector(3 downto 0);
 Cout : OUT std_logic_vector(3 downto 0));
 END COMPONENT;

signal Prop, Gen: std_logic_vector(3 downto 0);
signal C_internal: std_logic_vector(2 downto 0);
begin
Inst_CLA_slice0: CLA_slice PORT MAP(A => A(0),B => B(0),Cin => '0' ,P => Prop(0) ,G =>Gen(0) ,Sum_out => Sum(0));
Inst_CLA_slice1: CLA_slice PORT MAP(A => A(1),B => B(1),Cin => C_internal(0) ,P => Prop(1) ,G =>Gen(1) ,Sum_out =>
Sum(1));
Inst_CLA_slice2: CLA_slice PORT MAP(A => A(2),B => B(2),Cin => C_internal(1) ,P => Prop(2) ,G =>Gen(2) ,Sum_out =>
Sum(2));
Inst_CLA_slice3: CLA_slice PORT MAP(A => A(3),B => B(3),Cin => C_internal(2) ,P => Prop(3) ,G =>Gen(3) ,Sum_out =>
Sum(3));
Inst_CLA_module: CLA_module PORT MAP(
 P => Prop,
 G => Gen,
 Cout(3) => Cout,
 Cout(2 downto 0) => C_internal);
 end Behavioral;