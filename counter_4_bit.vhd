library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity COUNTER_4_BIT is
    Port ( C, CLR  : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(3 downto 0));
end COUNTER_4_BIT;

architecture Behavioral of COUNTER_4_BIT is

signal tmp: STD_LOGIC_VECTOR(3 downto 0);

begin
process (C, CLR)
begin 
if (CLR='1') then 
tmp <= "0000";
elsif (C'event and C='1') then 
tmp <= tmp + 1;
end if;
end process;
Q <= tmp;

end Behavioral;
