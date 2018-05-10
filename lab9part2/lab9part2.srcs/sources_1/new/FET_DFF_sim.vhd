----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2018 04:50:19 PM
-- Design Name: 
-- Module Name: FET_DFF_sim - Behavioral
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

entity FET_DFF_sim is
--  Port ( );
end FET_DFF_sim;

architecture Behavioral of FET_DFF_sim is
component FET_DFF
Port(
d,CLK,ce,RST: in STD_LOGIC;
q: out std_logic);
end component;

signal clk: std_logic := '0';
signal reset: std_logic := '0';
signal ce: std_logic := '1';
signal d: std_logic := '0';
signal q: std_logic;
begin

fakezybo: FET_DFF port map(d,clk,ce,reset,q);
process begin
clk<='0';
wait for 5 ns;
clk<='1';
wait for 5 ns;
end process;

process begin
reset<='0';
wait for 2 ns;
reset<='1';
wait for 8 ns;
reset <= '0';
wait for 16 ns;
reset<='1';
reset<='0';
wait for 2 ns;
reset<='1';
wait for 8 ns;
reset <= '0';
wait for 16 ns;
reset<='1';
wait;
end process;

process begin
d<='0';
wait for 8 ns;
d<='1';
wait for 8 ns;
d<='0';
wait for 8 ns;
d<='1';
d<='0';
wait for 8 ns;
d<='1';
wait for 8 ns;
d<='0';
wait for 8 ns;
d<='1';
wait;

process begin
ce<='1';
wait for 26 ns;
ce<='0'
end process
end Behavioral;
