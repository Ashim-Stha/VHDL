library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is
end decoder_tb;

architecture behavior of decoder_tb is
    signal a_tb:std_logic_vector(1 downto 0);
    signal z_tb:std_logic_vector(3 downto 0);

begin
    
    mapp:entity work.decoder port map (a_tb,z_tb);

    process
     begin
        a_tb<="00";
        wait for 20 ns;

        a_tb<="01";
        wait for 20 ns;

        a_tb<="10";
        wait for 20 ns;

        a_tb<="11";
        wait for 20 ns;

        wait;
     end process;

    end behavior;


