library ieee;
use ieee.std_logic_1164.all;

entity jk is
port(
    j, k, clk: in std_logic;
    q, qN: out std_logic
);
end jk;

architecture behavior of jk is
   signal temp: std_logic;

begin
    process(clk, j, k)
    begin
        if (rising_edge(clk)) then
            if (j = '0' and k = '0') then
                temp <= temp;
            elsif (j = '0' and k = '1') then
                temp <= '0';
            elsif (j = '1' and k = '0') then
                temp <= '1';
            elsif (j = '1' and k = '1') then
                temp <= not temp;
            end if;
        end if;
        q <= temp;
        qN <= not temp;
    end process;
    
 
end behavior;
