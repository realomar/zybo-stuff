----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2018 12:06:46 AM
-- Design Name: 
-- Module Name: CLA3bit - Behavioral
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

entity CLA3bit is
 Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
 B : in STD_LOGIC_VECTOR (2 downto 0);
 Sum : out STD_LOGIC_VECTOR (2 downto 0);
 Cout : out STD_LOGIC);
end CLA3bit;

architecture Behavioral of CLA3bit is
component CLA_slice is Port(
    A,B,Cin : in STD_LOGIC;
    P,G,Sum_out : out STD_LOGIC);
end component;

component CLA_module is Port(
    P,G : in STD_LOGIC_VECTOR(2 downto 0);
    Cout : out STD_LOGIC_VECTOR(2 downto 0));
end component;
signal Prop, Gen : STD_LOGIC_VECTOR(2 downto 0);
signal Cint : STD_LOGIC_VECTOR(1 downto 0);
begin
slice0: CLA_slice PORT MAP(A => A(0),B => B(0),Cin => '0' ,P => Prop(0),G =>Gen(0),Sum_out => Sum(0));
slice1: CLA_slice PORT MAP(A => A(1),B => B(1),Cin => Cint(0),P => Prop(1),G =>Gen(1),Sum_out =>
Sum(1));
slice2: CLA_slice PORT MAP(A => A(2),B => B(2),Cin => Cint(1),P => Prop(2),G =>Gen(2),Sum_out =>
Sum(2));
carry: CLA_module PORT MAP(
 P => Prop,
 G => Gen,
 Cout(2) => Cout,
 Cout(1 downto 0) => Cint);

end Behavioral;
