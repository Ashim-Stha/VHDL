library ieee;
use ieee.std_logic_1164.all;

entity jk_tb is
end jk_tb;

architecture behavior of jk_tb is

    signal j_tb, k_tb: std_logic;
    signal clk_tb: std_logic;
    signal q_tb, qN_tb: std_logic;


begin

    dut:entity work.jk port map (j_tb,k_tb,clk_tb,q_tb,qN_tb);

    clk_process: process
    begin
        while now < 80 ns loop
            clk_tb <= '0';
            wait for 5 ns;
            clk_tb <= not clk_tb;
            wait for 5 ns;
        end loop;
        wait;
    end process;

    stimulus_process: process
    begin
        j_tb <= '0';
        k_tb <= '0';
        wait for 20 ns;

        j_tb <= '0';
        k_tb <= '1';
        wait for 20 ns;

        j_tb <= '1';
        k_tb <= '0';
        wait for 20 ns;

        j_tb <= '1';
        k_tb <= '1';
        wait for 20 ns;

        wait;
    end process;

end behavior;
