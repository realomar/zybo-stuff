----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2018 11:13:28 PM
-- Design Name: 
-- Module Name: increment - Behavioral
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

entity increment is port(
B: out std_logic_vector(6 downto 0);
sysclk: in std_logic;
rst: in std_logic;
inc: in std_logic);
end increment;

architecture Behavioral of increment is
signal clockout : std_logic;
signal counterout: std_logic_vector(3 downto 0);

component clk is port(
    c125m: in std_logic;
    c1: out std_logic;
    r: in std_logic
    );
end component;

component SSDecoder is port(
ctrl: in std_logic_vector(3 downto 0);
dispOut: out std_logic_vector(6 downto 0));
end component;

component counter is port(
clk: in std_logic;
rst: in std_logic;
b: inout std_logic_vector(3 downto 0));
end component;

begin
clk0: clk port map(c125m => sysclk, c1 => clockout, r => rst);
ssdecoder0: SSDecoder port map(ctrl => counterout, dispOut => B);
counter0: counter port map(clk => clockout, rst => rst, b => counterout);

end Behavioral;
