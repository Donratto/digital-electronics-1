----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2022 01:29:03 PM
-- Design Name: 
-- Module Name: tb_ff_rst - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_ff_rst is
    -- Entity of testbench is always empty
end entity tb_ff_rst;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_ff_rst is

    constant c_CLK_100MHZ_PERIOD : time := 10 ns;

    --Local signals
    signal s_clk_100MHz : std_logic;
    signal s_rst        : std_logic;
    signal s_data       : std_logic;
    signal s_d_q        : std_logic;
    signal s_t_q        : std_logic;
    signal s_d_q_bar    : std_logic;
    signal s_t_q_bar    : std_logic;

begin
    -- Connecting testbench signals with d_ff_rst entity
    -- (Unit Under Test)
    uut_d_ff_rst : entity work.d_ff_rst
        port map(
            clk   => s_clk_100MHz,
            rst   => s_rst,
            d     => s_data,
            q     => s_d_q,
            q_bar => s_d_q_bar
        );
        
     uut_t_ff_rst : entity work.t_ff_rst
        port map(
            clk   => s_clk_100MHz,
            rst   => s_rst,
            t     => s_data,
            q     => s_t_q,
            q_bar => s_t_q_bar
        );

    --------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 200 ns loop -- 20 periods of 100MHz clock
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;                -- Process is suspended forever
    end process p_clk_gen;

    --------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------
    p_reset_gen : process
    begin
        s_rst <= '0';
        wait for 4 ns;

        -- ACTIVATE AND DEACTIVATE RESET HERE
         s_rst <= '1';
         wait for 6 ns;
         s_rst <= '0';
         wait for 5 ns;
         s_rst <= '1';
         wait for 5 ns;
         s_rst <= '0';
         wait for 20 ns;
         s_rst <= '1';
         wait for 30 ns;
         s_rst <= '0';
         wait for 20 ns;
         s_rst <= '1';
         wait for 30 ns;
         s_rst <= '0';
         wait for 20 ns;
         s_rst <= '1';
         wait for 10 ns;
         s_rst <= '0';
         wait for 20 ns;
         s_rst <= '1';
         wait for 30 ns;

        wait;
    end process p_reset_gen;

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        s_data <='0'; wait for 13 ns;
        
        -- DEFINE YOUR INPUT DATA HERE
        s_data <='1'; wait for 11 ns;
        s_data <='0'; wait for 13 ns;
        s_data <='1'; wait for 49 ns;
        s_data <='0'; wait for 17 ns;
        s_data <='1'; wait for 11 ns;
        s_data <='0'; wait for 29 ns;
        s_data <='1'; wait for 11 ns;
        s_data <='0'; wait for 13 ns;
        s_data <='1'; wait for 17 ns;
        s_data <='0'; wait for 29 ns;
         

        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;