
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity modulo_logico_tb is
end entity modulo_logico_tb;

architecture Behavior of modulo_logico_tb is

    -- component to test
component modulo_logico is
port (
a_in, b_in : in std_logic_vector(1 downto 0);
y_and, y_or, y_xor : out std_logic_vector(1 downto 0)
);
end component;

    -- signal to map to component
signal a_in, b_in : std_logic_vector(1 downto 0);
 signal  y_and, y_or, y_xor : std_logic_vector(1 downto 0);

begin
    -- map signals
    uut: modulo_logico port map ( a_in=>a_in,
				 b_in=> b_in,
				y_and=>y_and,
				 y_or=> y_or,
				 y_xor=> y_xor);


    stimulus: process is
    begin
    	a_in <= "00";
	b_in <= "00";
	wait for 5 ns;

	a_in <= "00";
        b_in <= "01";
        wait for 5 ns;

	a_in <= "00";
        b_in <= "10";
        wait for 5 ns;

	a_in <= "00";
        b_in <= "11";
        wait for 5 ns;

	a_in <= "01";
        b_in <= "00";
        wait for 5 ns;

	a_in <= "01";
        b_in <= "01";
        wait for 5 ns;

	a_in <= "01";
        b_in <= "10";
        wait for 5 ns;

	a_in <= "01";
        b_in <= "11";
        wait for 5 ns;

	a_in <= "10";
        b_in <= "00";
        wait for 5 ns;

	a_in <= "10";
        b_in <= "01";
        wait for 5 ns;

	a_in <= "10";
        b_in <= "10";
        wait for 5 ns;

	a_in <= "10";
        b_in <= "11";
        wait for 5 ns;

	a_in <= "11";
        b_in <= "00";
        wait for 5 ns;

	a_in <= "11";
        b_in <= "01";
        wait for 5 ns;

	a_in <= "11";
        b_in <= "10";
        wait for 5 ns;

	a_in <= "11";
        b_in <= "11";
        wait for 5 ns;
    wait;
    end process;
end architecture behavior;
    
