library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rca_8bit_tb is
end entity rca_8bit_tb;

architecture bench of rca_8bit_tb is
    signal A, B : std_logic_vector(7 downto 0) := (others => '0');
    signal Cin  : std_logic := '0';
    signal Sum  : std_logic_vector(7 downto 0);
    signal Cout : std_logic;
begin
    uut: entity work.rca_8bit
        port map ( A => A, B => B, Cin => Cin, Sum => Sum, Cout => Cout );

    stimulus: process
    begin
        -- Test Case 1: Simple addition without carry
        A <= "00000101"; B <= "00000011"; Cin <= '0'; wait for 10 ns;
        -- Test Case 2: Addition with intermediate carries
        A <= "01010101"; B <= "10101010"; Cin <= '0'; wait for 10 ns;
        -- Test Case 3: Maximum values (Overflow checking)
        A <= "11111111"; B <= "00000001"; Cin <= '0'; wait for 10 ns;
        -- Test Case 4: Everything high
        A <= "11111111"; B <= "11111111"; Cin <= '1'; wait for 10 ns;
        wait;
    end process stimulus;
end architecture bench;