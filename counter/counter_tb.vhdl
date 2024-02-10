library ieee;
use ieee.std_logic_1164.all;

entity counter_tb is
end counter_tb;

architecture behavior of counter_tb is
    signal clk_tb, reset_tb: std_logic;
    signal z_tb: std_logic_vector(3 downto  0);
begin
    
    UUT: entity work.counter port map(clk_tb, reset_tb, z_tb);

        clk_process: process
        begin
            for i in  1 to  20 loop 
                clk_tb <= '0';
                wait for  10 ns;
                clk_tb <= '1';
                wait for  10 ns;
            end loop;
            wait;
        end process;


    stimulus_process: process
    begin
        reset_tb <= '1';
        wait for  200 ns;
        reset_tb <= '0';
        wait;
    end process;
end behavior;
