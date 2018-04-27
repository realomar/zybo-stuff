library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity demux is
Port ( I : in STD_LOGIC;
sel : in STD_LOGIC_Vector(1 downto 0);
Y3 : out STD_LOGIC;
Y2: out STD_LOGIC;
Y1: out STD_LOGIC;
Y0 : out STD_LOGIC);
end demux;
architecture Behavioral of demux is
begin
Y3 <= I when sel = "00" else '0';
Y2 <= I when sel = "01" else '0';
Y1 <= I when sel = "10" else '0';
Y0 <= I when sel = "11" else '0';
end Behavioral;