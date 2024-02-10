library ieee;
use ieee.std_logic_1164.all;

entity d_tb is
end d_tb;

architecture behavior of d_tb is
    signal a_tb, clk_tb: std_logic := '0';  
    signal z_tb: std_logic;
begin
    mapp: entity work.d port map (a_tb, clk_tb, z_tb);

    clk_process: process
    begin
        while now < 80 ns loop
            clk_tb <= '0';  
            wait for 100 ps;
            clk_tb <= not clk_tb;
            wait for 100 ps;
        end loop;
        wait;
    end process;

    stimulus_process: process
    begin
        a_tb <= '0';  
        wait for 20 ns;
        a_tb <= '1';
        wait for 20 ns;
       
        a_tb <= '0';  
        wait for 20 ns;
        a_tb <= '1';
        wait for 20 ns;

        wait;
    end process;

end behavior;
