library ieee;
use ieee.std_logic_1164.all;

entity full_adder2 is 
	port(
		A, B : in std_logic_vector(1 downto 0);
		Sum : out std_logic_vector(1 downto 0);
		Cout : out std_logic
	    );
end entity;

architecture arch3 of full_adder2 is 
	component full_adder 
		port (
			A, B , Cin : in std_logic;
			Sum, Cout : out std_logic
		     );
	end component;

	signal FA : std_logic;
	
begin 
	FA1 : full_adder port map(A => A(0), B => B(0), Cin => '0', Sum => Sum(0), Cout => FA);
	FA2 : full_adder port map(A => A(1), B => B(1), Cin => FA, Sum => Sum(1), Cout => Cout);
	
	
end architecture;
