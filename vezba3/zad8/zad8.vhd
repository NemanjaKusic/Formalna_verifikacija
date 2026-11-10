----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2026 10:10:54 AM
-- Design Name: 
-- Module Name: zad3 - Behavioral
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

entity zad8 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           CFG_EN : out STD_LOGIC;
           MODE : out std_logic_vector(1 downto 0)
          );
end zad8;

architecture Behavioral of zad8 is
    signal count_s: std_logic_vector(3 downto 0) := (others => '0');
begin

    cnt_process: process (clk, rst) is
    begin
        if (rst = '1') then
            count_s <= (others => '0');
        else
            if (rising_edge(clk)) then
                if (count_s < std_logic_vector(to_unsigned(11,4))) then
                    count_s <= std_logic_vector(unsigned(count_s) + 1);
                else
                    count_s <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
        moore_out: process (count_s) is
    begin
        case to_integer(unsigned(count_s)) is 
            when 0 => 
                CFG_EN <= '1';
                MODE <= "00";
            when 2 => 
                CFG_EN <= '1';
                MODE <= "01";
            when 3 => 
                CFG_EN <= '0';
                MODE <= "01";
            when 4 => 
                CFG_EN <= '1';
                MODE <= "01";
            when 5 => 
                CFG_EN <= '0';
                MODE <= "01";
            when 6 => 
                CFG_EN <= '0';
                MODE <= "01";
            when 7 => 
                CFG_EN <= '1';
                MODE <= "10"; 
            when 8 => 
                CFG_EN <= '0';
                MODE <= "10";
            when 9 => 
                CFG_EN <= '0';
                MODE <= "10";          
            when 10 => 
                CFG_EN <= '0';
                MODE <= "10";          
            when 11 => 
                CFG_EN <= '0';
                MODE <= "10";                             
            when others => 
                CFG_EN <= '0';
                MODE <= "00";
        end case;
    end process;
    
end Behavioral;
