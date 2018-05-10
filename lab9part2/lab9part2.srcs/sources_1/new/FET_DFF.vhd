----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2018 04:36:26 PM
-- Design Name: 
-- Module Name: FET_DFF - Behavioral
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

entity FET_DFF is
Port(D,clk,ce,rst: in std_logic;
q: out std_logic);
end FET_DFF;

architecture Behavioral of FET_DFF is

begin
process(clk,rst) begin
    if rst='1' then q<='0';
    elsif(clk'event and clk= '0' and ce = '1') then q<=d;
    end if;
    end process;

end Behavioral;
