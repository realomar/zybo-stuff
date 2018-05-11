----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2018 09:04:29 PM
-- Design Name: 
-- Module Name: clk - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk1hz is port(
    c125m: in std_logic;
    c1: out std_logic;
    r: in std_logic;
    do: in std_logic
    );
end clk1hz;

architecture Behavioral of clk1hz is
signal count: integer range 0 to 63000000;
signal c: std_logic;
begin
process(c125m,r) begin
if(do = '1') then
if (r = '1') then
count <= 0; c <= '0';
elsif (c125m='1' and c125m'event) then
count <= count + 1;
if (count = 62500000) then
count <= 0;
c <= not c;
end if; end if; end if; end process;
c1 <= c;

end Behavioral;
