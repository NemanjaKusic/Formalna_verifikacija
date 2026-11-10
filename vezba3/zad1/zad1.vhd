----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2026 10:38:26 AM
-- Design Name: 
-- Module Name: brojac - Behavioral
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

entity zad1 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           TX : out STD_LOGIC;
           RX : out STD_LOGIC);
end zad1;

architecture Behavioral of zad1 is
    signal count_s: std_logic_vector(3 downto 0) := (others => '0');
begin

    cnt_process: process (clk, rst) is
    begin
        if (rst = '1') then
            count_s <= (others => '0');
        else
            if (rising_edge(clk)) then
                if (count_s < std_logic_vector(to_unsigned(12,4))) then
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
            when 3 => 
                TX <= '1';
                RX <= '0';
            when 4 => 
                TX <= '0';
                RX <= '1';
            when 5 => 
                TX <= '1';
                RX <= '0';
            when 6 => 
                TX <= '1';
                RX <= '0';
            when 7 => 
                TX <= '0';
                RX <= '0';    
            when 8 => 
                TX <= '0';
                RX <= '1';   
            when 9 => 
                TX <= '0';
                RX <= '0';
            when 10 => 
                TX <= '1';
                RX <= '0';
            when 11 => 
                TX <= '0';
                RX <= '1';
            when others => 
                TX <= '0';
                RX <= '0';
        end case;
    end process;


end Behavioral;
