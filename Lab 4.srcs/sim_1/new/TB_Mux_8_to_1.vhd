----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2023 04:21:31 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is

COMPONENT Mux_8_to_1
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
       S : in STD_LOGIC_VECTOR (2 downto 0);
       EN : in STD_LOGIC;
       Y : out STD_LOGIC);
END COMPONENT;

SIGNAL d : std_logic_vector (7 downto 0);
SIGNAL s : std_logic_vector (2 downto 0);
SIGNAL en : std_logic;
SIGNAL y : std_logic;

begin
   UUT : Mux_8_to_1 PORT MAP(
        D => d, 
        EN => en, 
        S => s,
        Y => y 
         );
    process
    begin
    d(0) <= '0';
    d(1) <= '0';
    d(2) <= '1';
    d(3) <= '0';
    d(4) <= '1';
    d(5) <= '1';
    d(6) <= '0';
    d(7) <= '1';
    
    en <= '0';
    wait for 100 ns;
    
    en <= '1';
    s(0) <= '0';
    s(1) <= '0';
    s(2) <= '0';
    wait for 100 ns;
    
    s(0) <= '1';
    wait for 100 ns;
    
    s(0) <= '0';
    s(1) <= '1';
    wait for 100 ns;
    
    s(0) <= '1';
    wait for 100 ns;
    
    s(0) <= '0';
    s(1) <= '0';
    s(2) <= '1';
    wait for 100 ns;
    
    s(0) <= '1';
    wait for 100 ns;
    
    s(0) <= '0';
    s(1) <= '1';
    wait for 100 ns;
    
    s(0) <= '1';
    wait;
    end process;
    
end Behavioral;
