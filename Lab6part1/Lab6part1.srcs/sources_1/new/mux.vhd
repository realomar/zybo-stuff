library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux is
 Port ( 
 A : in STD_LOGIC;
 B : in STD_LOGIC;
 C : in STD_LOGIC;
 D : in STD_LOGIC;
 sel : in STD_LOGIC_VECTOR (1 downto 0);
 Y : out STD_LOGIC);
end mux;
architecture Behavioral of mux is
begin
 y<= A when sel = "00"
 else B when sel = "01"
 else C when sel = "10"
 else D;
end Behavioral;