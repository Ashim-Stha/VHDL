library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity counter is
    port(
        clk, reset: in std_logic;
        z: out std_logic_vector(3 downto 0)
    );
end counter;

architecture behavior of counter is
    signal temp: unsigned(3 downto 0); 
begin
    process(clk, reset)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                temp <= "0000";
            else
                temp <= temp + 1;
            end if;
        end if;
    end process;
    z <= std_logic_vector(temp); 
end behavior;
