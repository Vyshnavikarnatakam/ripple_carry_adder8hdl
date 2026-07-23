library ieee;
use ieee.std_logic_1164.all;

entity rca8 is
    port(
        a, b : in std_logic_vector(7 downto 0);
        cin : in std_logic;
        sum : out std_logic_vector(7 downto 0);
        cout : out std_logic

    );
end entity rca8;

architecture structural of rsa 

