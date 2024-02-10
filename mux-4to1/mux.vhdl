library ieee;
use ieee.std_logic_1164.all;

entity mux is 
    port(
        a,b:in std_logic_vector(2 downto 0);
        c,d: in std_logic_vector(2 downto 0);
        sel:in std_logic_vector(1 downto 0);
        z:out std_logic_vector(2 downto 0)
    );
end mux;

architecture behavior of mux is
    begin
        process(a,b,c,d,sel)
         begin
            if(sel="00") then
                z<=a;
            elsif(sel="01") then
                z<=b;
            elsif(sel="10") then
                z<=c;
            elsif(sel="11") then
                z<=d;
            end if;
        end process;
    end behavior;