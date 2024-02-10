library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture behavior of mux_tb is
    signal a_tb, b_tb, c_tb, d_tb: std_logic_vector(2 downto 0);
    signal sel_tb: std_logic_vector(1 downto 0);
    signal z_tb: std_logic_vector(2 downto 0);

begin 
    mapp: entity work.mux port map (a_tb, b_tb, c_tb, d_tb, sel_tb, z_tb);

    stimulus_process: process
    begin
        a_tb<="000";
        b_tb<="001";
        c_tb<="010";
        d_tb<="011";
        
        sel_tb <= "00";
        wait for 20 ns;

        sel_tb <= "01";
        wait for 20 ns;

        sel_tb <= "10";
        wait for 20 ns;

        sel_tb <= "11";
        wait for 20 ns;
        wait;
    end process;
    
end behavior;
