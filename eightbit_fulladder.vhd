----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:03:51 01/22/2021 
-- Design Name: 
-- Module Name:    eightbit_fulladder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eightbit_fulladder is
    Port ( A,B : in  STD_LOGIC_VECTOR (7 downto 0);Cin: in STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (7 downto 0); Cout: out STD_LOGIC);
end eightbit_fulladder;

architecture Behavioral of eightbit_fulladder is

component fulladder
Port (A,B,Cin : in STD_LOGIC;
       S,Cout : out STD_LOGIC);
end component;

signal c : STD_LOGIC_VECTOR(6 downto 0);


begin

FA1: fulladder port map( A(0), B(0), Cin, S(0), c(0));
FA2: fulladder  port map( A(1), B(1), c(0), S(1), c(1));
FA3: fulladder  port map( A(2), B(2), c(1), S(2), c(2));
FA4: fulladder  port map( A(3), B(3), c(2), S(3), c(3));
FA5: fulladder  port map( A(4), B(4), c(3), S(4), c(4));
FA6: fulladder  port map( A(5), B(5), c(4), S(5), c(5));
FA7: fulladder  port map( A(6), B(6), c(5), S(6), c(6));
FA8: fulladder  port map( A(7), B(7), c(6), S(7), Cout);


end Behavioral;

