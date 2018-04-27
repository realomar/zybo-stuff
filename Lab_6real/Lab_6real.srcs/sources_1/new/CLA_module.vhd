library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity CLA_module is
 Port (
 P : in STD_LOGIC_VECTOR (3 downto 0);
 G : in STD_LOGIC_VECTOR (3 downto 0);
 Cout : out STD_LOGIC_VECTOR (3 downto 0)
 );
end CLA_module;
architecture Behavioral of CLA_module is
signal Cint: std_logic_vector(3 downto 0);
begin
Cint(0) <= G(0);
Cint(1) <= (Cint(0) and P(1)) or G(1);
Cint(2) <= (Cint(0) and P(1) and P(2)) or (G(1) and P(2)) or G(2);
Cint(3) <= (Cint(0) and P(1) and P(2) and P(3)) or (G(1) and P(2) and
P(3)) or (G(2) and P(3)) or G(3);
Cout <= Cint;
end Behavioral;