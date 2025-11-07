
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder2_tb is
end entity full_adder2_tb;

architecture Behavior of full_adder2_tb is

    -- component to test
component full_adder2 is
port(
A, B : in std_logic_vector(1 downto 0);
Sum : out std_logic_vector(1 downto 0);
Cout : out std_logic
);
end component;

    -- signal to map to component
signal A, B : std_logic_vector(1 downto 0);
 signal  Sum : std_logic_vector(1 downto 0);
 signal  Cout : std_logic;

begin
    -- map signals
    uut: full_adder2 port map ( A=>a,
				 B=> b,
				Sum=>sum,
				Cout=>cout);


    stimulus: process is
    begin
     a <= "00"; b <= "00";
     wait for 5 ns;
     
     a <= "00"; b <= "01";
     wait for 5 ns;
     
     a <= "00"; b <= "10";
     wait for 5 ns;
     
     a <= "00"; b <= "11";
     wait for 5 ns;
     
     a <= "01"; b <= "00";
     wait for 5 ns;
     
     a <= "01"; b <= "01";
     wait for 5 ns;
     
     a <= "01"; b <= "10";
     wait for 5 ns;
     
     a <= "01"; b <= "11";
     wait for 5 ns;
     
     a <= "10"; b <= "00";
     wait for 5 ns;
     
     a <= "10"; b <= "01";
     wait for 5 ns;
     
     a <= "10"; b <= "10";
     wait for 5 ns;
     
     a <= "10"; b <= "11";
     wait for 5 ns;
     
     a <= "11"; b <= "00";
     wait for 5 ns;
     
     a <= "11"; b <= "01";
     wait for 5 ns;
     
     a <= "11"; b <= "10";
     wait for 5 ns;

     a <= "11"; b <= "11";
     wait for 5 ns;


    wait;
    end process;
end architecture behavior;
    
