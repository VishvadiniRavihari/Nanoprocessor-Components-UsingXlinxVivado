----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2022 04:33:00 PM
-- Design Name: 
-- Module Name: TB_FA - Behavioral
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

entity TB_FA is
--  Port ( );
end TB_FA;

architecture Behavioral of TB_FA is
    COMPONENT FA PORT(
        A,B,C_IN : IN STD_LOGIC;
        C_OUT,S : OUT STD_LOGIC);
    END COMPONENT;
    
    SIGNAL A,B,C_IN : STD_LOGIC;
    SIGNAL C_OUT,S : STD_LOGIC;

begin
    UUT: FA PORT MAP(
        A => A,
        B => B,
        C_IN => C_IN,
        C_OUT => C_OUT,
        S => S);
    PROCESS
    BEGIN
        A <= '0';
        B <= '0';
        C_IN <= '0';
        WAIT FOR 100ns;
        C_IN <= '1';
        WAIT FOR 100ns;
        B <= '1';
        C_IN <= '0';
        WAIT FOR 100ns;
        C_IN <= '1';
        WAIT FOR 100ns;
        A <= '1';
        B <= '0';
        C_IN <='0';
        WAIT FOR 100ns;
        C_IN <= '1';
        WAIT FOR 100ns;
        B <= '1';
        C_IN <= '0';
        WAIT FOR 100ns;
        C_IN <= '1';
        WAIT;
    END PROCESS;
        
        
    


end Behavioral;
