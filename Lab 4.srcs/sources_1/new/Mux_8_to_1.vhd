----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2023 03:47:49 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
component Decoder_3_to_8
        Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
       EN : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal D_out,And_out : STD_LOGIC_VECTOR (7 downto 0);

begin
    Decoder_3_to_8_0 : Decoder_3_to_8
    port map(
    I => S,
    EN => EN,
    Y => D_out );
    
    --And_out <= D_out and D;
    And_out(0) <= D_out(0) AND D(0);
    And_out(1) <= D_out(1) AND D(1);
    And_out(2) <= D_out(2) AND D(2);
    And_out(3) <= D_out(3) AND D(3);
    And_out(4) <= D_out(4) AND D(4);
    And_out(5) <= D_out(5) AND D(5);
    And_out(6) <= D_out(6) AND D(6);
    And_out(7) <= D_out(7) AND D(7);
    
    Y <= And_out(0) OR And_out(1) OR And_out(2) OR 
    And_out(3) OR And_out(4) OR And_out(5) OR And_out(6) 
    OR And_out(7);
      
    
end Behavioral;
