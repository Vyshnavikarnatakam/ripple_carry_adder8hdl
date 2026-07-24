library ieee;
use ieee.std_logic_1164.all;

entity rca_8bit is
    port (
        A    : in  std_logic_vector(7 downto 0);
        B    : in  std_logic_vector(7 downto 0);
        Cin  : in  std_logic;
        Sum  : out std_logic_vector(7 downto 0);
        Cout : out std_logic
    );
end entity rca_8bit;

architecture structural of rca_8bit is
    component full_adder is
        port (
            a    : in  std_logic;
            b    : in  std_logic;
            cin  : in  std_logic;
            sum  : out std_logic;
            cout : out std_logic
        );
    end component full_adder;

    signal c : std_logic_vector(8 downto 0);
begin
    c(0) <= Cin;

    gen_adder: for i in 0 to 7 generate
        fa_inst : full_adder
            port map (
                a    => A(i),
                b    => B(i),
                cin  => c(i),
                sum  => Sum(i),
                cout => c(i+1)
            );
    end generate gen_adder;

    Cout <= c(8);
end architecture structural;
    
