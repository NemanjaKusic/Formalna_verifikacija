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

entity zad10 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           LOAD : out STD_LOGIC;
           BUSY : out STD_LOGIC;
           DONE : out std_logic);
end zad10;

architecture Behavioral of zad10 is
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
            when 1 => 
                LOAD <= '1';
                BUSY <= '0';
                DONE <= '0';
            when 2 => 
                LOAD <= '0';
                BUSY <= '1';
                DONE <= '0';
            when 3 => 
                LOAD <= '0';
                BUSY <= '1';
                DONE <= '0';
            when 4 => 
                LOAD <= '0';
                BUSY <= '0';
                DONE <= '1';
            when 7 => 
                LOAD <= '1';
                BUSY <= '0';
                DONE <= '0';
            when 9 => 
                LOAD <= '0';
                BUSY <= '1';
                DONE <= '0';
            when 10 => 
                LOAD <= '0';
                BUSY <= '0';
                DONE <= '1';
            when others => 
                LOAD <= '0';
                BUSY <= '0';
                DONE <= '0';
        end case;
    end process;
    
end Behavioral;
