library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux_demux is
Port (
Ain : in STD_LOGIC;
Bin : in STD_LOGIC;
Cin : in STD_LOGIC;
Din : in STD_LOGIC;
sel: in std_logic_vector(1 downto 0);
Y3out : out STD_LOGIC;
Y2out : out STD_LOGIC;
Y1out : out STD_LOGIC;
Y0out : out STD_LOGIC);
end mux_demux;
architecture Behavioral of mux_demux is
component mux is
Port ( 
A : in STD_LOGIC;
B : in STD_LOGIC;
C : in STD_LOGIC;
D : in STD_LOGIC;
sel : in STD_LOGIC_VECTOR (1 downto 0);
Y : out STD_LOGIC);
end component;
component demux is
Port ( I : in STD_LOGIC;
sel : in STD_LOGIC_Vector(1 downto 0);
Y3 : out STD_LOGIC;
Y2: out STD_LOGIC;
Y1: out STD_LOGIC;
Y0 : out STD_LOGIC);
end component;
signal line : std_logic;
begin
my_mux: mux port map(A=>Ain,
B=> Bin, C=>Cin,
D=>Din, sel=>sel, Y => line);
my_demux: demux port map(I => line,
 sel => sel, Y3 => y3out,
 Y2 => Y2out, Y1 =>Y1out,
 Y0 => Y0out);
 end Behavioral;