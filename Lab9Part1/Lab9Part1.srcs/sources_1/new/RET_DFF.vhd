----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2018 04:25:40 PM
-- Design Name: 
-- Module Name: RET_DFF - Behavioral
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

entity RET_DFF is
Port(D: in std_logic;
clk: in std_logic;
rst: in std_logic;
q: out std_logic);
end RET_DFF;

architecture Behavioral of RET_DFF is

begin
process(clk,rst) begin
    if rst='1' then q <= '0';
    elsif(clk'event and clk = '1') then q<=D;
    end if;
    end process;

end Behavioral;
