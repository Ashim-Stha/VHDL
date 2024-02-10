library ieee;
use ieee.std_logic_1164.all;

entity decoder is
    port(
        a:in std_logic_vector(1 downto 0);
        z:out std_logic_vector(3 downto 0)
    );

end decoder;

architecture behavior of decoder is
    begin
        process(a)
        begin
            if(a="00") then
                z<="0001";
            elsif(a="01") then
                z<="0010";
            elsif(a="10") then
                z<="0100";
            elsif(a="11") then
                z<="1000";
            else
                z<="0000";
            end if;
        end process;
end behavior;