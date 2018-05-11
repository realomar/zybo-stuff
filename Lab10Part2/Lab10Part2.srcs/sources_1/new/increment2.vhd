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
led0: out std_logic;
led1: out std_logic;
sysclk: in std_logic;
btn0: in std_logic;
btn1: in std_logic);
end increment;

architecture Behavioral of increment is
signal clockout : std_logic;
signal counterout: std_logic_vector(3 downto 0);
signal out0 : std_logic;
signal out1 : std_logic;

component clk1hz is port(
    c125m: in std_logic;
    c1: out std_logic;
    r: in std_logic;
    do: in std_logic
    );
end component;

component clk2hz is port(
    c125m: in std_logic;
    c1: out std_logic;
    r: in std_logic;
    do: in std_logic
    );
end component;

begin
clk0: clk1hz port map(c125m => sysclk, c1 => out0, r => '0', do => btn0);
clk1: clk2hz port map(c125m => sysclk, c1 => out1, r => '0', do => btn1);

led0<=out0;
led1<=out1;

end Behavioral;
