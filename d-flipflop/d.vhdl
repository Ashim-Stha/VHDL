library ieee;
use ieee.std_logic_1164.all;

entity d is
    port(
        a,clk:in std_logic;
        z:out std_logic
    );
end d;

architecture behavior of d is
  begin
    process(a,clk)
     begin
        if(clk'event and clk='1') then
            z<=a;
        end if;
     end process;
    end behavior;

