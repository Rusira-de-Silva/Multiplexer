----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2023 03:08:44 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is

COMPONENT Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
       EN : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

 SIGNAL i : std_logic_vector (2 downto 0);
 SIGNAL en : std_logic;
 SIGNAL y : std_logic_vector (7 downto 0);

begin
   UUT : Decoder_3_to_8 PORT MAP(
   I => i, 
   EN => en, 
   Y => y 
    );
process
    begin
    en  <= '0';
    wait for 100 ns;
    
    en  <= '1';
    i(0) <= '0';
    i(1) <= '0';
    i(2) <= '1';
    wait for 100 ns;
    
    i(1) <= '1';
    wait for 100 ns;
    
    i(0) <= '0';
    i(2) <= '0';
    wait for 100 ns;
    
    i(0) <= '1';
    wait;
end process;

end Behavioral;
