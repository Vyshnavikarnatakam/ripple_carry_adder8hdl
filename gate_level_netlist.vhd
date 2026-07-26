library ieee;
use ieee.std_logic_1164.all;
entity rca_8bit is
  port (
    A: in std_logic_vector (7 downto 0);
    B: in std_logic_vector (7 downto 0);
    Cin: in std_logic;
    Sum: out std_logic_vector (7 downto 0);
    Cout: out std_logic
  );
end entity rca_8bit;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder is
  port (
    a : in std_logic;
    b : in std_logic;
    cin : in std_logic;
    sum : out std_logic;
    cout : out std_logic);
end entity full_adder;

architecture rtl of full_adder is
  signal n79_o : std_logic;
  signal n80_o : std_logic;
  signal n81_o : std_logic;
  signal n82_o : std_logic;
  signal n83_o : std_logic;
  signal n84_o : std_logic;
  signal n85_o : std_logic;
begin
  sum <= n80_o;
  cout <= n85_o;
  -- full_adder.vhd:13:14
  n79_o <= a xor b;
  -- full_adder.vhd:13:20
  n80_o <= n79_o xor cin;
  -- full_adder.vhd:14:16
  n81_o <= a and b;
  -- full_adder.vhd:14:29
  n82_o <= b and cin;
  -- full_adder.vhd:14:23
  n83_o <= n81_o or n82_o;
  -- full_adder.vhd:14:44
  n84_o <= a and cin;
  -- full_adder.vhd:14:38
  n85_o <= n83_o or n84_o;
end rtl;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture rtl of rca_8bit is
  subtype typwrap_A is std_logic_vector (7 downto 0);
  signal wrap_A: typwrap_A;
  subtype typwrap_B is std_logic_vector (7 downto 0);
  signal wrap_B: typwrap_B;
  signal wrap_Cin: std_logic;
  subtype typwrap_Sum is std_logic_vector (7 downto 0);
  signal wrap_Sum: typwrap_Sum;
  signal wrap_Cout: std_logic;
  signal c : std_logic_vector (8 downto 0);
  signal n2_o : std_logic;
  signal n3_o : std_logic;
  signal n4_o : std_logic;
  signal gen_adder_n1_fa_inst_n5 : std_logic;
  signal gen_adder_n1_fa_inst_n6 : std_logic;
  signal gen_adder_n1_fa_inst_c_sum : std_logic;
  signal gen_adder_n1_fa_inst_c_cout : std_logic;
  signal n11_o : std_logic;
  signal n12_o : std_logic;
  signal n13_o : std_logic;
  signal gen_adder_n2_fa_inst_n14 : std_logic;
  signal gen_adder_n2_fa_inst_n15 : std_logic;
  signal gen_adder_n2_fa_inst_c_sum : std_logic;
  signal gen_adder_n2_fa_inst_c_cout : std_logic;
  signal n20_o : std_logic;
  signal n21_o : std_logic;
  signal n22_o : std_logic;
  signal gen_adder_n3_fa_inst_n23 : std_logic;
  signal gen_adder_n3_fa_inst_n24 : std_logic;
  signal gen_adder_n3_fa_inst_c_sum : std_logic;
  signal gen_adder_n3_fa_inst_c_cout : std_logic;
  signal n29_o : std_logic;
  signal n30_o : std_logic;
  signal n31_o : std_logic;
  signal gen_adder_n4_fa_inst_n32 : std_logic;
  signal gen_adder_n4_fa_inst_n33 : std_logic;
  signal gen_adder_n4_fa_inst_c_sum : std_logic;
  signal gen_adder_n4_fa_inst_c_cout : std_logic;
  signal n38_o : std_logic;
  signal n39_o : std_logic;
  signal n40_o : std_logic;
  signal gen_adder_n5_fa_inst_n41 : std_logic;
  signal gen_adder_n5_fa_inst_n42 : std_logic;
  signal gen_adder_n5_fa_inst_c_sum : std_logic;
  signal gen_adder_n5_fa_inst_c_cout : std_logic;
  signal n47_o : std_logic;
  signal n48_o : std_logic;
  signal n49_o : std_logic;
  signal gen_adder_n6_fa_inst_n50 : std_logic;
  signal gen_adder_n6_fa_inst_n51 : std_logic;
  signal gen_adder_n6_fa_inst_c_sum : std_logic;
  signal gen_adder_n6_fa_inst_c_cout : std_logic;
  signal n56_o : std_logic;
  signal n57_o : std_logic;
  signal n58_o : std_logic;
  signal gen_adder_n7_fa_inst_n59 : std_logic;
  signal gen_adder_n7_fa_inst_n60 : std_logic;
  signal gen_adder_n7_fa_inst_c_sum : std_logic;
  signal gen_adder_n7_fa_inst_c_cout : std_logic;
  signal n65_o : std_logic;
  signal n66_o : std_logic;
  signal n67_o : std_logic;
  signal gen_adder_n8_fa_inst_n68 : std_logic;
  signal gen_adder_n8_fa_inst_n69 : std_logic;
  signal gen_adder_n8_fa_inst_c_sum : std_logic;
  signal gen_adder_n8_fa_inst_c_cout : std_logic;
  signal n74_o : std_logic;
  signal n75_o : std_logic_vector (8 downto 0);
  signal n76_o : std_logic_vector (7 downto 0);
begin
  wrap_a <= a;
  wrap_b <= b;
  wrap_cin <= cin;
  sum <= wrap_sum;
  cout <= wrap_cout;
  wrap_Sum <= n76_o;
  wrap_Cout <= n74_o;
  -- rca8_rtl.vhd:25:12
  c <= n75_o; -- (signal)
  -- rca8_rtl.vhd:32:26
  n2_o <= wrap_A (0);
  -- rca8_rtl.vhd:33:26
  n3_o <= wrap_B (0);
  -- rca8_rtl.vhd:34:26
  n4_o <= c (0);
  -- rca8_rtl.vhd:35:25
  gen_adder_n1_fa_inst_n5 <= gen_adder_n1_fa_inst_c_sum; -- (signal)
  -- rca8_rtl.vhd:36:25
  gen_adder_n1_fa_inst_n6 <= gen_adder_n1_fa_inst_c_cout; -- (signal)
  -- rca8_rtl.vhd:30:9
  gen_adder_n1_fa_inst : entity work.full_adder port map (
    a => n2_o,
    b => n3_o,
    cin => n4_o,
    sum => gen_adder_n1_fa_inst_c_sum,
    cout => gen_adder_n1_fa_inst_c_cout);
  -- rca8_rtl.vhd:32:26
  n11_o <= wrap_A (1);
  -- rca8_rtl.vhd:33:26
  n12_o <= wrap_B (1);
  -- rca8_rtl.vhd:34:26
  n13_o <= c (1);
  -- rca8_rtl.vhd:35:25
  gen_adder_n2_fa_inst_n14 <= gen_adder_n2_fa_inst_c_sum; -- (signal)
  -- rca8_rtl.vhd:36:25
  gen_adder_n2_fa_inst_n15 <= gen_adder_n2_fa_inst_c_cout; -- (signal)
  -- rca8_rtl.vhd:30:9
  gen_adder_n2_fa_inst : entity work.full_adder port map (
    a => n11_o,
    b => n12_o,
    cin => n13_o,
    sum => gen_adder_n2_fa_inst_c_sum,
    cout => gen_adder_n2_fa_inst_c_cout);
  -- rca8_rtl.vhd:32:26
  n20_o <= wrap_A (2);
  -- rca8_rtl.vhd:33:26
  n21_o <= wrap_B (2);
  -- rca8_rtl.vhd:34:26
  n22_o <= c (2);
  -- rca8_rtl.vhd:35:25
  gen_adder_n3_fa_inst_n23 <= gen_adder_n3_fa_inst_c_sum; -- (signal)
  -- rca8_rtl.vhd:36:25
  gen_adder_n3_fa_inst_n24 <= gen_adder_n3_fa_inst_c_cout; -- (signal)
  -- rca8_rtl.vhd:30:9
  gen_adder_n3_fa_inst : entity work.full_adder port map (
    a => n20_o,
    b => n21_o,
    cin => n22_o,
    sum => gen_adder_n3_fa_inst_c_sum,
    cout => gen_adder_n3_fa_inst_c_cout);
  -- rca8_rtl.vhd:32:26
  n29_o <= wrap_A (3);
  -- rca8_rtl.vhd:33:26
  n30_o <= wrap_B (3);
  -- rca8_rtl.vhd:34:26
  n31_o <= c (3);
  -- rca8_rtl.vhd:35:25
  gen_adder_n4_fa_inst_n32 <= gen_adder_n4_fa_inst_c_sum; -- (signal)
  -- rca8_rtl.vhd:36:25
  gen_adder_n4_fa_inst_n33 <= gen_adder_n4_fa_inst_c_cout; -- (signal)
  -- rca8_rtl.vhd:30:9
  gen_adder_n4_fa_inst : entity work.full_adder port map (
    a => n29_o,
    b => n30_o,
    cin => n31_o,
    sum => gen_adder_n4_fa_inst_c_sum,
    cout => gen_adder_n4_fa_inst_c_cout);
  -- rca8_rtl.vhd:32:26
  n38_o <= wrap_A (4);
  -- rca8_rtl.vhd:33:26
  n39_o <= wrap_B (4);
  -- rca8_rtl.vhd:34:26
  n40_o <= c (4);
  -- rca8_rtl.vhd:35:25
  gen_adder_n5_fa_inst_n41 <= gen_adder_n5_fa_inst_c_sum; -- (signal)
  -- rca8_rtl.vhd:36:25
  gen_adder_n5_fa_inst_n42 <= gen_adder_n5_fa_inst_c_cout; -- (signal)
  -- rca8_rtl.vhd:30:9
  gen_adder_n5_fa_inst : entity work.full_adder port map (
    a => n38_o,
    b => n39_o,
    cin => n40_o,
    sum => gen_adder_n5_fa_inst_c_sum,
    cout => gen_adder_n5_fa_inst_c_cout);
  -- rca8_rtl.vhd:32:26
  n47_o <= wrap_A (5);
  -- rca8_rtl.vhd:33:26
  n48_o <= wrap_B (5);
  -- rca8_rtl.vhd:34:26
  n49_o <= c (5);
  -- rca8_rtl.vhd:35:25
  gen_adder_n6_fa_inst_n50 <= gen_adder_n6_fa_inst_c_sum; -- (signal)
  -- rca8_rtl.vhd:36:25
  gen_adder_n6_fa_inst_n51 <= gen_adder_n6_fa_inst_c_cout; -- (signal)
  -- rca8_rtl.vhd:30:9
  gen_adder_n6_fa_inst : entity work.full_adder port map (
    a => n47_o,
    b => n48_o,
    cin => n49_o,
    sum => gen_adder_n6_fa_inst_c_sum,
    cout => gen_adder_n6_fa_inst_c_cout);
  -- rca8_rtl.vhd:32:26
  n56_o <= wrap_A (6);
  -- rca8_rtl.vhd:33:26
  n57_o <= wrap_B (6);
  -- rca8_rtl.vhd:34:26
  n58_o <= c (6);
  -- rca8_rtl.vhd:35:25
  gen_adder_n7_fa_inst_n59 <= gen_adder_n7_fa_inst_c_sum; -- (signal)
  -- rca8_rtl.vhd:36:25
  gen_adder_n7_fa_inst_n60 <= gen_adder_n7_fa_inst_c_cout; -- (signal)
  -- rca8_rtl.vhd:30:9
  gen_adder_n7_fa_inst : entity work.full_adder port map (
    a => n56_o,
    b => n57_o,
    cin => n58_o,
    sum => gen_adder_n7_fa_inst_c_sum,
    cout => gen_adder_n7_fa_inst_c_cout);
  -- rca8_rtl.vhd:32:26
  n65_o <= wrap_A (7);
  -- rca8_rtl.vhd:33:26
  n66_o <= wrap_B (7);
  -- rca8_rtl.vhd:34:26
  n67_o <= c (7);
  -- rca8_rtl.vhd:35:25
  gen_adder_n8_fa_inst_n68 <= gen_adder_n8_fa_inst_c_sum; -- (signal)
  -- rca8_rtl.vhd:36:25
  gen_adder_n8_fa_inst_n69 <= gen_adder_n8_fa_inst_c_cout; -- (signal)
  -- rca8_rtl.vhd:30:9
  gen_adder_n8_fa_inst : entity work.full_adder port map (
    a => n65_o,
    b => n66_o,
    cin => n67_o,
    sum => gen_adder_n8_fa_inst_c_sum,
    cout => gen_adder_n8_fa_inst_c_cout);
  -- rca8_rtl.vhd:40:14
  n74_o <= c (8);
  n75_o <= gen_adder_n8_fa_inst_n69 & gen_adder_n7_fa_inst_n60 & gen_adder_n6_fa_inst_n51 & gen_adder_n5_fa_inst_n42 & gen_adder_n4_fa_inst_n33 & gen_adder_n3_fa_inst_n24 & gen_adder_n2_fa_inst_n15 & gen_adder_n1_fa_inst_n6 & wrap_Cin;
  n76_o <= gen_adder_n8_fa_inst_n68 & gen_adder_n7_fa_inst_n59 & gen_adder_n6_fa_inst_n50 & gen_adder_n5_fa_inst_n41 & gen_adder_n4_fa_inst_n32 & gen_adder_n3_fa_inst_n23 & gen_adder_n2_fa_inst_n14 & gen_adder_n1_fa_inst_n5;
end rtl;
